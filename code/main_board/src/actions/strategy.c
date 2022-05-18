#include "actions/strategy.h"
#include "actions/actions_lua_functions.h"
#include "system/spiffs.h"
#include "system/task_priority.h"

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <freertos/queue.h>
#include <esp_log.h>
#include <stdio.h>
#include <sys/stat.h>

#include "lua/lauxlib.h"
#include "lua/lua.h"
#include "lua/lualib.h"


#define TAG "Strategy"
#define DEFAULT_STRATEGY_NAME "default"
#define MAX_STRATEGY_NAME_LENGTH 16
#define STRATEGY_PATH_PREFIX "/storage/"
#define BLOCK_SIZE 512

static QueueHandle_t file_to_execute_queue;

static void get_strategy_file_name_from_query(httpd_req_t *req, char *name);
static void lua_executor_task(void *parameters);

void init_lua_executor(void)
{
    // Create FreeRTOS task
    TaskHandle_t task;
    file_to_execute_queue = xQueueCreate(1, sizeof(char*));
    xTaskCreate(lua_executor_task, "lua_executor", TASK_STACK_SIZE, NULL, LUA_PRIORITY, &task);
}

static void lua_executor_task(void *parameters)
{
    while (true) {
        char *filename;
        while (!xQueueReceive(file_to_execute_queue, &filename, 1000 / portTICK_PERIOD_MS));
        ESP_LOGI(TAG, "Executing strategy file: %s", filename);

        lua_State *L = luaL_newstate();
        luaL_openlibs(L);
        luaL_loadfile(L, filename);
        register_lua_action_functions(L);
        if (lua_pcall(L, 0, LUA_MULTRET, 0) != LUA_OK) {
            ESP_LOGE(TAG, "Lua error: %s", lua_tostring(L, -1));
        }

        free(filename);
    }
}

esp_err_t get_strategy_handler(httpd_req_t *req)
{
    ESP_LOGI(TAG, "Received GET /strategy request");
    httpd_resp_set_type(req, "application/octet-stream");

    char strategy_name[MAX_STRATEGY_NAME_LENGTH];
    get_strategy_file_name_from_query(req, strategy_name);
    char strategy_file_name[sizeof(STRATEGY_PATH_PREFIX) + MAX_STRATEGY_NAME_LENGTH];
    sprintf(strategy_file_name, "%s%s", STRATEGY_PATH_PREFIX, strategy_name);
    FILE *strategy_file = fopen(strategy_file_name, "r");
    if (strategy_file == NULL) {
        ESP_LOGE(TAG, "Could not open file %s", strategy_file_name);
        httpd_resp_send_404(req);
        return ESP_FAIL;
    }

    char data_buffer[BLOCK_SIZE];
    size_t data_read;
    do {
        data_read = fread(data_buffer, 1, BLOCK_SIZE, strategy_file);
        httpd_resp_send_chunk(req, data_buffer, data_read);
    } while (data_read > 0);

    fclose(strategy_file);
    return ESP_OK;
}

esp_err_t put_strategy_handler(httpd_req_t *req)
{
    ESP_LOGI(TAG, "Received PUT /strategy request; downloading strategy");

    char strategy_name[MAX_STRATEGY_NAME_LENGTH];
    get_strategy_file_name_from_query(req, strategy_name);
    char strategy_file_name[sizeof(STRATEGY_PATH_PREFIX) + MAX_STRATEGY_NAME_LENGTH];
    sprintf(strategy_file_name, "%s%s", STRATEGY_PATH_PREFIX, strategy_name);
    FILE *strategy_file = fopen(strategy_file_name, "w");
    if (strategy_file == NULL) {
        ESP_LOGE(TAG, "Could not open file %s", strategy_file_name);
        httpd_resp_send_500(req);
        return ESP_FAIL;
    }

    char data_buffer[BLOCK_SIZE];
    int written_length = 0;
    while (written_length < req->content_len) {
        int data_read = httpd_req_recv(req, data_buffer, BLOCK_SIZE);
        fwrite(data_buffer, 1, data_read, strategy_file);
        written_length += data_read;
    }

    httpd_resp_send(req, "All is fine, captain!\n", HTTPD_RESP_USE_STRLEN);
    fclose(strategy_file);
    return ESP_OK;
}

esp_err_t delete_strategy_handler(httpd_req_t *req)
{
    ESP_LOGI(TAG, "Received DELETE /strategy request; formatting everything");
    format_spiffs();
    httpd_resp_send(req, "Storage partition is now wiped\n", HTTPD_RESP_USE_STRLEN);
    return ESP_OK;
}

esp_err_t run_strategy_handler(httpd_req_t *req)
{
    ESP_LOGI(TAG, "Received POST /strategy/run request; executing strategy");
    char strategy_name[MAX_STRATEGY_NAME_LENGTH];
    get_strategy_file_name_from_query(req, strategy_name);
    char *strategy_file_name = malloc(sizeof(STRATEGY_PATH_PREFIX) + MAX_STRATEGY_NAME_LENGTH);
    sprintf(strategy_file_name, "%s%s", STRATEGY_PATH_PREFIX, strategy_name);

    struct stat st;
    if (stat(strategy_file_name, &st) != 0) {
        ESP_LOGW(TAG, "Could not execute strategy, file does not exist");
        httpd_resp_send_404(req);
        return ESP_OK;
    }

    xQueueOverwrite(file_to_execute_queue, &strategy_file_name);
    httpd_resp_send(req, "All is fine, captain!\n", HTTPD_RESP_USE_STRLEN);
    return ESP_OK;
}

static void get_strategy_file_name_from_query(httpd_req_t *req, char *name)
{
    char buffer[BLOCK_SIZE];
    httpd_req_get_url_query_str(req, buffer, BLOCK_SIZE);
    if (httpd_query_key_value(buffer, "name", name, MAX_STRATEGY_NAME_LENGTH) == ESP_ERR_NOT_FOUND) {
        strcpy(name, DEFAULT_STRATEGY_NAME);
    }
}
