#pragma once

#include <stdbool.h>
#include <esp_err.h>

/**
 * Initialize the peripheral card. To be called at startup.
 */
esp_err_t init_peripherals(void);

/**
 * Switch a pump on or off. Channel must be in range 0-3.
 */
void set_peripherals_pump(int channel, bool status);

/**
 * Set a servo channel.
 * @param channel (in range 0-15)
 * @param pulse_width Length of the pulse in microseconds
 */
void set_peripherals_servo_channel(int channel, int pulse_width);

/**
 * Read the end course switch inputs of one of the steppers (from PCA9629 IP (Input Port))
 * @param motor_channel Stepper motor channel (0 or 1)
 * @param pin_channel End swich channel (0 or 1)
 */
bool read_peripherals_motor_input(unsigned int motor_channel, unsigned int pin_channel);


/**
 * Move unipolar stepper motor by a number of steps
 * @param motor_channel Stepper motor channel (0 or 1)
 * @param steps Number of steps to move (positive is CW)
 * @param speed (in range [0, 1])
 */
void move_peripherals_motor(unsigned int motor_channel, int steps, float speed);
