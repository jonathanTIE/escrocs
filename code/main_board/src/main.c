#include "system/i2c_master.h"
#include "system/modbus_rtu_master.h"
#include "system/spiffs.h"
#include "wireless/wifi.h"
#include "wireless/httpd.h"
#include "wireless/udp_logger.h"
#include "peripherals/stepper_board.h"
#include "peripherals/gpio.h"
#include "peripherals/peripherals.h"
#include "peripherals/ultrasonic_board.h"
#include "peripherals/motor_board_v3.h"
#include "motion/motion_control.h"
#include "actions/strategy.h"

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <esp_log.h>


#include "peripherals/lidar_board.h"
void app_main() {
    ESP_LOGI("main", "Starting ESCRObot application...\n");
    //init_i2c_master();
    init_modbus_rtu_master();
    init_spiffs();
    init_wifi_system();
    init_http_server();
    vTaskDelay(200);
#ifdef CONFIG_ESP_ROBOT_HOLONOMIC
    //init_stepper_board();
#endif
    //init_gpio();
    init_ultrasonic_board();
    //init_peripherals();
    //init_motor_board_v3();

#ifdef CONFIG_ESP_ROBOT_HOLONOMIC
    //set_peripherals_servo_channel(0, 6500);
    //set_peripherals_servo_channel(1, 6500);
    //set_peripherals_servo_channel(2, 6500);
#endif

    //init_motion_control(read_switch(GPIO_CHANNEL_SIDE));
    //init_motion_control(false);
    //init_lua_executor();
    //init_udp_logger();
    //switch_on_led();

    while (1) {
        vTaskDelay(100);
    }
}
