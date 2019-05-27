# Breadbee

A very small, 32mm x 30mm, ARM Cortex A7 development board that costs about ~$10
to make in low quantities and can be assembled at home with a cheap hot air rework
station. With a small adapter socket it can be mounted vertically in a standard breadboard.

![Breadbee number one](photos/jackside_small.jpg)

## Pin Table

J2 - Main 2.54mm header

| alt functions |    name   |  # |  # |   name    | alt functions |
|---------------|-----------|----|----|-----------|---------------|
|               |    +5v    |  1 | 2  |   +3v3    |               |
|               |    gnd    |  3 | 4  | pm_gpio4  |               |
|               | i2c1_scl  |  5 | 6  | i2c1_sda  |               |
|     ej_tck    | spi0_cz   |  7 | 8  | spi0_ck   |    ej_tms     |
|     ej_tdo    | spi0_di   |  9 | 10 | spi0_do   |    ej_tdi     |
|               | sar_gpio1 | 11 | 12 | sar_gpio0 |               |
|               | sar_gpio2 | 13 | 14 | sar_gpio3 |               |
|    spi0_cz    | fuart_rx  | 15 | 16 | fuart_tx  |    spi0_ck    |
|    spi0_di    | fuart_cts | 17 | 18 | fuart_rts |    spi0_do    |
|               | sr_io7    | 19 | 20 | sr_io6    |               |
|               | sr_io5    | 21 | 22 | sr_io4    |               |
|               | sr_io3    | 23 | 24 | sr_io2    |               |
