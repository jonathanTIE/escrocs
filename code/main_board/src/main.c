#include "system/i2c_master.h"
#include "system/spiffs.h"
#include "wireless/wifi.h"
#include "wireless/httpd.h"
#include "wireless/udp_logger.h"
#include "peripherals/stepper_board.h"
#include "peripherals/gpio.h"
#include "peripherals/peripherals.h"
#include "peripherals/ultrasonic_board.h"
#include "peripherals/lcd_screen.h"
#include "peripherals/rotary_encoder.h"
#include "motion/motion_control.h"
#include "actions/strategy.h"
#include "peripherals/motor_board.h"

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <esp_log.h>

void app_main() {
    ESP_LOGI("main", "Starting ESCRObot application...\n");
    init_i2c_master();
    init_spiffs();
    init_wifi_system();
    init_http_server();
    vTaskDelay(200);
#ifdef CONFIG_ESP_ROBOT_HOLONOMIC
    init_stepper_board();
#endif
    init_gpio();
    //init_ultrasonic_board();
    //init_peripherals();

#ifdef CONFIG_ESP_ROBOT_HOLONOMIC
    set_peripherals_servo_channel(0, 6500);
    set_peripherals_servo_channel(1, 6500);
    set_peripherals_servo_channel(2, 6500);
#endif

    //init_motion_control(read_switch(GPIO_CHANNEL_SIDE));
    //init_lua_executor();
    //init_udp_logger();
    //init_lcd_screen();
    //init_rotary_encoder();
    switch_on_led();

    switch_buzzer_on();
    while(1) {
        vTaskDelay(20);
        switch_buzzer_off();
    }
}
