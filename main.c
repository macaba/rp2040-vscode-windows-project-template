#include "pico/stdlib.h"
#include "utility.h"

void main()
{
    led_setup();

    while (1) {
        led(1);
        sleep_ms(250);
        led(0);
        sleep_ms(250);
    }
}
