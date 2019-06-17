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
- 4 x 10bit ADC channels
- 2 x SPI
- 1 x I2C (there is possibly one more)
- 3 or 4 UARTs (unsure if the pm_uart is the same as uart0) (max 2 or 3 usable at once due to pin muxing)
- Lots of GPIO. At least one with interrupt support.
- RTC
- WDT
- 3 x Timer
- 4 x PWM. Possibly 7

 The chip has a bunch of stuff in it that isn't supported yet:
 
 - SD/SDIO interface
 - USB
 - Camera interface, h264 encoder, mjpeg etc.
 - Audio ADC/DAC
 - Crypto engine that seems to be able to do　AES encrypted DMA transfers, memory mapped AES encryption etc
 - 8051 low power mode management MCU
 - Some sort of IR decoder that can wake the chip up based on the IR codes it sees.

## Software

Note that this is all in flux right at the moment. These repos are getting rebase'd fairly often.

### U-boot

There is a basic port of u-boot that so far take over from the MStar IPL and load a kernel from the SPI NOR, write it etc.
See boot process below for more details.

https://github.com/fifteenhex/u-boot/tree/msc313

### Kernel

All of the above features work to some degree.

https://github.com/fifteenhex/linux/tree/msc313e

### Buildroot

Combines the u-boot and kernel above with a root filesystem and generates flashable images.

https://github.com/fifteenhex/breadbee_buildroot

## Pin Table

### J2 - Main 2.54mm header

| 5v tolerant |   notes   | alt functions |    name   |  # |  # |   name    | alt functions |   notes   | 5v tolerant |
|-------------|-----------|---------------|-----------|----|----|-----------|---------------|-----------|-------------|
|             |           |               |    +5v    |  1 | 2  |   +3v3    |               |           |             |
|             |           |               |    gnd    |  3 | 4  | pm_gpio4  |               | interrupt |             |
|             |           |               | i2c1_scl  |  5 | 6  | i2c1_sda  |               |           |             |
|             |           |     ej_tck    | spi0_cz   |  7 | 8  | spi0_ck   |    ej_tms     |           |             |
|             |           |     ej_tdo    | spi0_di   |  9 | 10 | spi0_do   |    ej_tdi     |           |             |
|     yes     |           |               | sar_gpio2 | 11 | 12 | sar_gpio3 |               |           |    yes      |
|     yes     |           |               | sar_gpio1 | 13 | 14 | sar_gpio0 |               |           |    yes      |
|     yes     |           | spi0_cz, pwm0 | fuart_rx  | 15 | 16 | fuart_tx  | spi0_ck, pwm1 |           |    yes      |
|     yes     |           | spi0_di, pwm2 | fuart_cts | 17 | 18 | fuart_rts | spi0_do, pwm3 |           |    yes      |
|             |           |               | sr_io7    | 19 | 20 | sr_io6    |               |           |             |
|             |           |               | sr_io5    | 21 | 22 | sr_io4    |               |           |             |
|             |           |               | sr_io3    | 23 | 24 | sr_io2    |               |           |             |

### J4 - Misc/High speed interfaces

| name      | #  |
|-----------|----|
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

### Test Points

- The audio pins are broken out to a series of test points on the left side of the parts size of the board.
- pm_irin is broken out to a test point on the ethernet jack side of the board.

## Using JTAG

JTAG is enabled at boot up on the spi0 pins by the u-boot SPL.

## Boot process

The standard MStar boot process is like this:
- Start the boot rom that is baked into the chip
- Load the "IPL" from SPI NOR into internal SRAM
- Jump into the IPL
- The IPL then does DRAM setup and tries to load "IPL_CUST" from SPI NOR or somewhere else if that fails
- IPL_CUST does a bunch of higher level stuff and then loads an XZ compressed u-boot image into DRAM and starts it

The ideal boot process would be:

- Start the boot rom that is baked into the chip
- Load the u-boot SPL
- u-boot SPL does DRAM setup and loads the main u-boot from SPI NOR into DRAM and starts it.

Unfortunately the DRAM setup process isn't understood yet. So the actual boot process is:

- Start the boot rom that is baked into the chip
- Load the IPL
- Trick the IPL into loading the u-boot SPL as IPL_CUST into DRAM (IPL_CUST is limited to 64K so we still need the SPL)
- SPL loads the main u-boot and starts it.
