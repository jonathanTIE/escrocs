#include "peripherals/gpio.h"

#include <driver/gpio.h>


void init_gpio(void)
{
    gpio_config_t input_config = {
        .pin_bit_mask = (1ULL << GPIO_CHANNEL_TRIGGER) | (1ULL << GPIO_CHANNEL_SIDE) \
            | (1ULL << GPIO_CHANNEL_BA) | (1ULL << GPIO_CHANNEL_BB),
        .mode = GPIO_MODE_INPUT,
        .pull_up_en = 1,
        .pull_down_en = 0,
        .intr_type = GPIO_INTR_DISABLE,
    };
    gpio_config(&input_config);
}

bool read_switch(int channel)
{
    return gpio_get_level(channel);
}