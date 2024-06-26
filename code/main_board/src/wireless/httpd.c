#include "wireless/httpd.h"
#include "system/task_priority.h"
#include "wireless/ota.h"
#include "actions/actions_http_handlers.h"
#include "actions/game_actions.h"
#include "actions/strategy.h"
#include "controllers/motion_control.h"

#include <freertos/FreeRTOS.h>
#include <esp_http_server.h>
#include <esp_log.h>
#include <cJSON.h>

#define TAG "httpd"

static httpd_uri_t fixed_uri_handlers[] = {
    {
        .uri = "/firmware.bin",
        .method = HTTP_PUT,
        .handler = firmware_upgrade_handler,
        .user_ctx = NULL,
    },
    {
        .uri = "/strategy",
        .method = HTTP_GET,
        .handler = get_strategy_handler,
        .user_ctx = NULL,
    },
    {
        .uri = "/strategy",
        .method = HTTP_PUT,
        .handler = put_strategy_handler,
        .user_ctx = NULL,
    },
    {
        .uri = "/strategy",
        .method = HTTP_DELETE,
        .handler = delete_strategy_handler,
        .user_ctx = NULL,
    },
    {
        .uri = "/strategy/run",
        .method = HTTP_POST,
        .handler = run_strategy_handler,
        .user_ctx = NULL,
    }
};

#define FIXED_URI_HANDLERS_LENGTH (sizeof(fixed_uri_handlers) / sizeof(fixed_uri_handlers[0]))

esp_err_t init_http_server(void)
{
    esp_err_t err;

    httpd_config_t config = HTTPD_DEFAULT_CONFIG();
    config.max_uri_handlers = 64;
    config.core_id = LOW_CRITICITY_CORE;
    httpd_handle_t server = NULL;
    if (httpd_start(&server, &config) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to start HTTP server");
        return ESP_FAIL;
    }

    for (int i = 0; i < FIXED_URI_HANDLERS_LENGTH; ++i) {
        err = httpd_register_uri_handler(server, &fixed_uri_handlers[i]);
        if (err) {
            ESP_ERROR_CHECK_WITHOUT_ABORT(err);
            return err;
        }
    }

    for (int i = 0; i < game_actions_uri_handlers_size(); ++i) {
        err = httpd_register_uri_handler(server, &get_game_actions_uri_handlers()[i]);
        if (err) {
            ESP_ERROR_CHECK_WITHOUT_ABORT(err);
            return err;
        }
    }
    ESP_LOGI(TAG, "HTTP server properly initiated");

    init_ota_rebooter();

    return ESP_OK;
}
