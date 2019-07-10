EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x21 J1
U 1 1 5D25EE14
P 4650 3850
F 0 "J1" H 4568 5067 50  0000 C CNN
F 1 "Conn_01x21" H 4568 4976 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x21_P1.00mm_Vertical" H 4650 3850 50  0001 C CNN
F 3 "~" H 4650 3850 50  0001 C CNN
	1    4650 3850
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5D2614FA
P 5500 2600
F 0 "#PWR0101" H 5500 2450 50  0001 C CNN
F 1 "+3V3" H 5515 2773 50  0000 C CNN
F 2 "" H 5500 2600 50  0001 C CNN
F 3 "" H 5500 2600 50  0001 C CNN
	1    5500 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5D261938
P 5700 2600
F 0 "#PWR0102" H 5700 2450 50  0001 C CNN
F 1 "+5V" H 5715 2773 50  0000 C CNN
F 2 "" H 5700 2600 50  0001 C CNN
F 3 "" H 5700 2600 50  0001 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J2
U 1 1 5D26648B
P 6550 3300
F 0 "J2" H 6600 3917 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 6600 3826 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical" H 6550 3300 50  0001 C CNN
F 3 "~" H 6550 3300 50  0001 C CNN
	1    6550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2950 5450 2950
Wire Wire Line
	4850 3050 5450 3050
Wire Wire Line
	4850 3150 5450 3150
Wire Wire Line
	4850 3250 5450 3250
Wire Wire Line
	4850 3350 5450 3350
Wire Wire Line
	4850 3450 5450 3450
Wire Wire Line
	4850 3550 5450 3550
Text Label 5450 2950 2    50   ~ 0
sd_d3
Text Label 5450 3050 2    50   ~ 0
sd_d2
Text Label 5450 3150 2    50   ~ 0
sd_d1
Text Label 5450 3250 2    50   ~ 0
sd_d0
Text Label 5450 3350 2    50   ~ 0
sd_cmd
Text Label 5450 3450 2    50   ~ 0
sd_clk
Text Label 5450 3550 2    50   ~ 0
pm_sd_cdz
$Comp
L power:GND #PWR0103
U 1 1 5D27ACBB
P 5500 5000
F 0 "#PWR0103" H 5500 4750 50  0001 C CNN
F 1 "GND" H 5505 4827 50  0000 C CNN
F 2 "" H 5500 5000 50  0001 C CNN
F 3 "" H 5500 5000 50  0001 C CNN
	1    5500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2850 5500 2600
Wire Wire Line
	4850 2850 5500 2850
Wire Wire Line
	5700 3750 5700 2600
Wire Wire Line
	4850 3750 5700 3750
Wire Wire Line
	5500 3650 5500 4050
Wire Wire Line
	4850 3650 5500 3650
Wire Wire Line
	4850 4050 5500 4050
Connection ~ 5500 4050
Wire Wire Line
	5500 4050 5500 5000
Wire Wire Line
	4850 3850 5450 3850
Wire Wire Line
	4850 3950 5450 3950
Text Label 5450 3850 2    50   ~ 0
usb_dm
Text Label 5450 3950 2    50   ~ 0
usb_dp
$Comp
L power:+3.3V #PWR0104
U 1 1 5D291523
P 7100 2550
F 0 "#PWR0104" H 7100 2400 50  0001 C CNN
F 1 "+3.3V" H 7115 2723 50  0000 C CNN
F 2 "" H 7100 2550 50  0001 C CNN
F 3 "" H 7100 2550 50  0001 C CNN
	1    7100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5D2919A1
P 6100 2600
F 0 "#PWR0105" H 6100 2450 50  0001 C CNN
F 1 "+5V" H 6115 2773 50  0000 C CNN
F 2 "" H 6100 2600 50  0001 C CNN
F 3 "" H 6100 2600 50  0001 C CNN
	1    6100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2900 6100 2900
Wire Wire Line
	6100 2900 6100 2600
Wire Wire Line
	6850 2900 7100 2900
Wire Wire Line
	7100 2900 7100 2550
$Comp
L power:GND #PWR0106
U 1 1 5D29E804
P 6950 3900
F 0 "#PWR0106" H 6950 3650 50  0001 C CNN
F 1 "GND" H 6955 3727 50  0000 C CNN
F 2 "" H 6950 3900 50  0001 C CNN
F 3 "" H 6950 3900 50  0001 C CNN
	1    6950 3900
	1    0    0    -1  
$EndComp
Text Label 5450 4150 2    50   ~ 0
sr_io15
Wire Wire Line
	4850 4150 5450 4150
Text Label 5450 4850 2    50   ~ 0
sr_io8
Text Label 5450 4750 2    50   ~ 0
sr_io9
Text Label 5450 4650 2    50   ~ 0
sr_io10
Text Label 5450 4550 2    50   ~ 0
sr_io11
Text Label 5450 4450 2    50   ~ 0
sr_io12
Text Label 5450 4350 2    50   ~ 0
sr_io13
Text Label 5450 4250 2    50   ~ 0
sr_io14
Wire Wire Line
	4850 4850 5450 4850
Wire Wire Line
	4850 4750 5450 4750
Wire Wire Line
	4850 4650 5450 4650
Wire Wire Line
	4850 4550 5450 4550
Wire Wire Line
	4850 4450 5450 4450
Wire Wire Line
	4850 4350 5450 4350
Wire Wire Line
	4850 4250 5450 4250
Wire Wire Line
	6350 3000 6000 3000
Wire Wire Line
	6350 3100 6000 3100
Wire Wire Line
	6350 3200 6000 3200
Wire Wire Line
	6350 3300 6000 3300
Wire Wire Line
	6350 3400 6000 3400
Wire Wire Line
	6350 3500 6000 3500
Wire Wire Line
	6350 3600 6000 3600
Wire Wire Line
	6350 3700 6000 3700
Wire Wire Line
	6850 3800 6950 3800
Wire Wire Line
	6950 3800 6950 3900
Wire Wire Line
	6350 3800 6000 3800
Wire Wire Line
	6850 3000 7300 3000
Wire Wire Line
	6850 3100 7300 3100
Wire Wire Line
	6850 3200 7300 3200
Wire Wire Line
	6850 3300 7300 3300
Wire Wire Line
	6850 3400 7300 3400
Wire Wire Line
	6850 3500 7300 3500
Wire Wire Line
	6850 3600 7300 3600
Wire Wire Line
	6850 3700 7300 3700
Text Label 6000 3000 0    50   ~ 0
sd_d3
Text Label 7300 3000 2    50   ~ 0
sd_d2
Text Label 6000 3100 0    50   ~ 0
sd_d1
Text Label 7300 3100 2    50   ~ 0
sd_d0
Text Label 6000 3200 0    50   ~ 0
sd_cmd
Text Label 7300 3200 2    50   ~ 0
sd_clk
Text Label 7300 3300 2    50   ~ 0
usb_dm
Text Label 6000 3400 0    50   ~ 0
usb_dp
Text Label 7300 3400 2    50   ~ 0
sr_io15
Text Label 6000 3500 0    50   ~ 0
sr_io14
Text Label 7300 3500 2    50   ~ 0
sr_io13
Text Label 6000 3600 0    50   ~ 0
sr_io12
Text Label 7300 3600 2    50   ~ 0
sr_io11
Text Label 6000 3700 0    50   ~ 0
sr_io10
Text Label 7300 3700 2    50   ~ 0
sr_io9
Text Label 6000 3800 0    50   ~ 0
sr_io8
Text Label 6000 3300 0    50   ~ 0
pm_sd_cdz
$EndSCHEMATC
