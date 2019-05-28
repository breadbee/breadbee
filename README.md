# Breadbee

A very small, 32mm x 30mm, ARM Cortex A7 development board that costs about ~$10
to make in low quantities and can be assembled at home with a cheap hot air rework
station. With a small adapter socket it can be mounted vertically in a standard breadboard.

![Breadbee number one](photos/jackside_small.jpg)

## Features

These are features that are working:

- ~1GHz Cortex A7 CPU with NEON etc. Note MStar says it's 800MHz but their own cpufreq code says they clock it to 1GHz
- 64MB DDR2
- Bootable, memory mapped SPI-NOR
- 100Mbit ethernet.
- 4 ADC channels
- 2 x SPI
- 1 x I2C (there is possibly one more)
- 4 UARTs (max 3 usable at once)
- Lots of GPIO. At least one with interrupt support.
- RTC
- WDT
- 3 x Timer

 The chip has a bunch of stuff in it that isn't supported yet:
 
 - SD/SDIO interface
 - USB
 - Camera interface, h264 encoder, mjpeg etc.
 - Audio ADC/DAC
 - Crypto engine that seems to be able to doAES encrypted DMA transfers, memory mapped AES encryption etc
 - 8051 low power mode management MCU
 - Maybe 4 or 7 PWM channels. The registers exist but the output isn't working so far.
 - Some sort of IR decoder that can wake the chip up based on the IR codes it sees.

## Pin Table

J2 - Main 2.54mm header

| alt functions |    name   |  # |  # |   name    | alt functions |   notes   |
|---------------|-----------|----|----|-----------|---------------|-----------|
|               |    +5v    |  1 | 2  |   +3v3    |               |           |
|               |    gnd    |  3 | 4  | pm_gpio4  |               | interrupt |
|               | i2c1_scl  |  5 | 6  | i2c1_sda  |               |           |
|     ej_tck    | spi0_cz   |  7 | 8  | spi0_ck   |    ej_tms     |           |
|     ej_tdo    | spi0_di   |  9 | 10 | spi0_do   |    ej_tdi     |           |
|               | sar_gpio1 | 11 | 12 | sar_gpio0 |               |           |
|               | sar_gpio2 | 13 | 14 | sar_gpio3 |               |           |
|    spi0_cz    | fuart_rx  | 15 | 16 | fuart_tx  |    spi0_ck    |           |
|    spi0_di    | fuart_cts | 17 | 18 | fuart_rts |    spi0_do    |           |
|               | sr_io7    | 19 | 20 | sr_io6    |               |           |
|               | sr_io5    | 21 | 22 | sr_io4    |               |           |
|               | sr_io3    | 23 | 24 | sr_io2    |               |           |

J4 - Misc/High speed interfaces

| name      | #  |
| +3v3      | 1  |
| sd_d3     | 2  |
| sd_d2     | 3  |
| sd_d1     | 4  |
| sd_d0     | 5  |
| sd_cmd    | 6  |
| sd_clk    | 7  |
| pm_sd_cdz | 8  | 
| gnd       | 9  |
| +5v       | 10 |
| usb_dm    | 11 |
| usb_dp    | 12 | 
| gnd       | 13 |
| sr_io15   | 14 |
| sr_io14   | 15 |
| sr_io13   | 16 |
| sr_io12   | 17 |
| sr_io11   | 18 |
| sr_io10   | 19 |
| sr_io9    | 20 |
| sr_io8    | 21 |
