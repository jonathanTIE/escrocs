EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_Microchip_ATmega:ATmega168PA-AU U2
U 1 1 6265BE59
P 5400 3850
F 0 "U2" H 5050 2350 50  0000 C CNN
F 1 "ATmega168PA-AU" H 5850 2350 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5400 3850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48PA_88PA_168PA-Data-Sheet-40002011A.pdf" H 5400 3850 50  0001 C CNN
	1    5400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2350 5400 2350
Wire Wire Line
	5400 2250 5400 2350
Connection ~ 5400 2350
$Comp
L power:+5V #PWR023
U 1 1 6265E289
P 5400 2250
F 0 "#PWR023" H 5400 2100 50  0001 C CNN
F 1 "+5V" H 5415 2423 50  0000 C CNN
F 2 "" H 5400 2250 50  0001 C CNN
F 3 "" H 5400 2250 50  0001 C CNN
	1    5400 2250
	1    0    0    -1  
$EndComp
NoConn ~ 4800 2650
NoConn ~ 4800 2850
NoConn ~ 4800 2950
$Comp
L power:GND #PWR024
U 1 1 6265EE4D
P 5400 5350
F 0 "#PWR024" H 5400 5100 50  0001 C CNN
F 1 "GND" H 5405 5177 50  0000 C CNN
F 2 "" H 5400 5350 50  0001 C CNN
F 3 "" H 5400 5350 50  0001 C CNN
	1    5400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3250 6600 3250
Wire Wire Line
	6000 3350 6600 3350
Text Label 6600 3250 2    50   ~ 0
XTAL1
Text Label 6600 3350 2    50   ~ 0
XTAL2
$Comp
L Device:Crystal Y1
U 1 1 6266025E
P 9000 2350
F 0 "Y1" H 9000 2618 50  0000 C CNN
F 1 "16MHz" H 9000 2527 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 9000 2350 50  0001 C CNN
F 3 "~" H 9000 2350 50  0001 C CNN
	1    9000 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 62660D6F
P 9300 2550
F 0 "C6" H 9415 2596 50  0000 L CNN
F 1 "22p" H 9415 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9338 2400 50  0001 C CNN
F 3 "~" H 9300 2550 50  0001 C CNN
	1    9300 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6266121A
P 8700 2550
F 0 "C5" H 8815 2596 50  0000 L CNN
F 1 "22p" H 8815 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8738 2400 50  0001 C CNN
F 3 "~" H 8700 2550 50  0001 C CNN
	1    8700 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 62661BB8
P 9300 2700
F 0 "#PWR034" H 9300 2450 50  0001 C CNN
F 1 "GND" H 9305 2527 50  0000 C CNN
F 2 "" H 9300 2700 50  0001 C CNN
F 3 "" H 9300 2700 50  0001 C CNN
	1    9300 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 626621E2
P 8700 2700
F 0 "#PWR030" H 8700 2450 50  0001 C CNN
F 1 "GND" H 8705 2527 50  0000 C CNN
F 2 "" H 8700 2700 50  0001 C CNN
F 3 "" H 8700 2700 50  0001 C CNN
	1    8700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2400 9300 2350
Wire Wire Line
	9300 2350 9150 2350
Wire Wire Line
	8850 2350 8700 2350
Wire Wire Line
	8700 2350 8700 2400
Wire Wire Line
	9300 2350 9600 2350
Connection ~ 9300 2350
Wire Wire Line
	8700 2350 8350 2350
Connection ~ 8700 2350
Text Label 8350 2350 0    50   ~ 0
XTAL1
Text Label 9600 2350 2    50   ~ 0
XTAL2
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 62666730
P 8200 3700
F 0 "J5" H 8172 3632 50  0000 R CNN
F 1 "Servo 0" H 8350 3900 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 8200 3700 50  0001 C CNN
F 3 "~" H 8200 3700 50  0001 C CNN
	1    8200 3700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 6266A3D6
P 8200 4700
F 0 "J6" H 8172 4582 50  0000 R CNN
F 1 "Ultrasound 0" H 8350 4900 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 8200 4700 50  0001 C CNN
F 3 "~" H 8200 4700 50  0001 C CNN
	1    8200 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 6266F020
P 700 1150
F 0 "J1" H 808 1331 50  0000 C CNN
F 1 "12V in" H 808 1240 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 700 1150 50  0001 C CNN
F 3 "~" H 700 1150 50  0001 C CNN
	1    700  1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6266F8C0
P 900 1250
F 0 "#PWR01" H 900 1000 50  0001 C CNN
F 1 "GND" H 905 1077 50  0000 C CNN
F 2 "" H 900 1250 50  0001 C CNN
F 3 "" H 900 1250 50  0001 C CNN
	1    900  1250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 6266FD60
P 1250 1350
F 0 "C1" H 1368 1396 50  0000 L CNN
F 1 "10u" H 1368 1305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1288 1200 50  0001 C CNN
F 3 "~" H 1250 1350 50  0001 C CNN
	1    1250 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 626703B9
P 1650 1350
F 0 "C2" H 1765 1396 50  0000 L CNN
F 1 "100n" H 1765 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1688 1200 50  0001 C CNN
F 3 "~" H 1650 1350 50  0001 C CNN
	1    1650 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 62670A0F
P 1250 1500
F 0 "#PWR04" H 1250 1250 50  0001 C CNN
F 1 "GND" H 1255 1327 50  0000 C CNN
F 2 "" H 1250 1500 50  0001 C CNN
F 3 "" H 1250 1500 50  0001 C CNN
	1    1250 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 62670E66
P 1650 1500
F 0 "#PWR09" H 1650 1250 50  0001 C CNN
F 1 "GND" H 1655 1327 50  0000 C CNN
F 2 "" H 1650 1500 50  0001 C CNN
F 3 "" H 1650 1500 50  0001 C CNN
	1    1650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1200 1250 1150
Wire Wire Line
	1250 1150 900  1150
Wire Wire Line
	1650 1200 1650 1150
Wire Wire Line
	1650 1150 1250 1150
Connection ~ 1250 1150
$Comp
L Regulator_Switching:LM2576HVS-5 U1
U 1 1 62671B4C
P 2750 1250
F 0 "U1" H 2750 1617 50  0000 C CNN
F 1 "LM2576HVS-5" H 2750 1526 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 2750 1000 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2576.pdf" H 2750 1250 50  0001 C CNN
	1    2750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1150 1650 1150
Connection ~ 1650 1150
Wire Wire Line
	2250 1350 2200 1350
Wire Wire Line
	2200 1550 2750 1550
Wire Wire Line
	2200 1350 2200 1550
$Comp
L power:GND #PWR012
U 1 1 6267374B
P 2200 1550
F 0 "#PWR012" H 2200 1300 50  0001 C CNN
F 1 "GND" H 2205 1377 50  0000 C CNN
F 2 "" H 2200 1550 50  0001 C CNN
F 3 "" H 2200 1550 50  0001 C CNN
	1    2200 1550
	1    0    0    -1  
$EndComp
Connection ~ 2200 1550
$Comp
L Device:D D3
U 1 1 6267440F
P 3250 1500
F 0 "D3" V 3204 1580 50  0000 L CNN
F 1 "SS54" V 3295 1580 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 3250 1500 50  0001 C CNN
F 3 "~" H 3250 1500 50  0001 C CNN
	1    3250 1500
	0    1    1    0   
$EndComp
$Comp
L Device:L L1
U 1 1 626750AC
P 3400 1350
F 0 "L1" V 3450 1200 50  0000 C CNN
F 1 "10u" V 3499 1350 50  0000 C CNN
F 2 "Inductor_SMD:L_12x12mm_H6mm" H 3400 1350 50  0001 C CNN
F 3 "~" H 3400 1350 50  0001 C CNN
	1    3400 1350
	0    -1   -1   0   
$EndComp
Connection ~ 3250 1350
$Comp
L Device:CP C3
U 1 1 626764E9
P 3700 1500
F 0 "C3" H 3818 1546 50  0000 L CNN
F 1 "10u" H 3818 1455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3738 1350 50  0001 C CNN
F 3 "~" H 3700 1500 50  0001 C CNN
	1    3700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1350 3550 1350
Wire Wire Line
	3700 1350 3700 1150
Wire Wire Line
	3700 1150 3250 1150
Connection ~ 3700 1350
$Comp
L power:GND #PWR016
U 1 1 62677DD1
P 3250 1650
F 0 "#PWR016" H 3250 1400 50  0001 C CNN
F 1 "GND" H 3255 1477 50  0000 C CNN
F 2 "" H 3250 1650 50  0001 C CNN
F 3 "" H 3250 1650 50  0001 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 626783F2
P 3700 1650
F 0 "#PWR021" H 3700 1400 50  0001 C CNN
F 1 "GND" H 3705 1477 50  0000 C CNN
F 2 "" H 3700 1650 50  0001 C CNN
F 3 "" H 3700 1650 50  0001 C CNN
	1    3700 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 626789B6
P 4100 1300
F 0 "C4" H 4215 1346 50  0000 L CNN
F 1 "100n" H 4215 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 1150 50  0001 C CNN
F 3 "~" H 4100 1300 50  0001 C CNN
	1    4100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 6267931E
P 4100 1450
F 0 "#PWR022" H 4100 1200 50  0001 C CNN
F 1 "GND" H 4105 1277 50  0000 C CNN
F 2 "" H 4100 1450 50  0001 C CNN
F 3 "" H 4100 1450 50  0001 C CNN
	1    4100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1150 3700 1150
Connection ~ 3700 1150
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 6268E30A
P 1200 2650
F 0 "J2" H 1308 2931 50  0000 C CNN
F 1 "I2C" H 1308 2840 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1200 2650 50  0001 C CNN
F 3 "~" H 1200 2650 50  0001 C CNN
	1    1200 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR020
U 1 1 626919BB
P 3700 1150
F 0 "#PWR020" H 3700 1000 50  0001 C CNN
F 1 "+5VP" H 3715 1323 50  0000 C CNN
F 2 "" H 3700 1150 50  0001 C CNN
F 3 "" H 3700 1150 50  0001 C CNN
	1    3700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2550 1550 2550
Wire Wire Line
	1550 2550 1550 2500
Wire Wire Line
	1400 2850 1550 2850
Wire Wire Line
	1550 2850 1550 2900
Wire Wire Line
	1400 2750 1850 2750
Wire Wire Line
	1400 2650 1850 2650
$Comp
L power:GND #PWR06
U 1 1 62694BAD
P 1550 2900
F 0 "#PWR06" H 1550 2650 50  0001 C CNN
F 1 "GND" H 1555 2727 50  0000 C CNN
F 2 "" H 1550 2900 50  0001 C CNN
F 3 "" H 1550 2900 50  0001 C CNN
	1    1550 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 626951E2
P 1550 2500
F 0 "#PWR05" H 1550 2350 50  0001 C CNN
F 1 "+5V" H 1565 2673 50  0000 C CNN
F 2 "" H 1550 2500 50  0001 C CNN
F 3 "" H 1550 2500 50  0001 C CNN
	1    1550 2500
	1    0    0    -1  
$EndComp
Text Label 1850 2650 2    50   ~ 0
SDA
Text Label 1850 2750 2    50   ~ 0
SCL
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 626982DC
P 2250 2650
F 0 "J4" H 2358 2931 50  0000 C CNN
F 1 "I2C" H 2358 2840 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 2250 2650 50  0001 C CNN
F 3 "~" H 2250 2650 50  0001 C CNN
	1    2250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2550 2600 2550
Wire Wire Line
	2600 2550 2600 2500
Wire Wire Line
	2450 2850 2600 2850
Wire Wire Line
	2600 2850 2600 2900
$Comp
L power:GND #PWR014
U 1 1 626982E8
P 2600 2900
F 0 "#PWR014" H 2600 2650 50  0001 C CNN
F 1 "GND" H 2605 2727 50  0000 C CNN
F 2 "" H 2600 2900 50  0001 C CNN
F 3 "" H 2600 2900 50  0001 C CNN
	1    2600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 626982EE
P 2600 2500
F 0 "#PWR013" H 2600 2350 50  0001 C CNN
F 1 "+5V" H 2615 2673 50  0000 C CNN
F 2 "" H 2600 2500 50  0001 C CNN
F 3 "" H 2600 2500 50  0001 C CNN
	1    2600 2500
	1    0    0    -1  
$EndComp
Text Label 2900 2650 2    50   ~ 0
SDA
Text Label 2900 2750 2    50   ~ 0
SCL
Wire Wire Line
	3050 2650 3050 2600
Wire Wire Line
	2450 2650 3050 2650
Wire Wire Line
	3450 2750 3450 2600
Wire Wire Line
	2450 2750 3450 2750
$Comp
L Device:R R3
U 1 1 6269BDC3
P 3050 2450
F 0 "R3" H 3120 2496 50  0000 L CNN
F 1 "10k" H 3120 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2980 2450 50  0001 C CNN
F 3 "~" H 3050 2450 50  0001 C CNN
	1    3050 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6269C4A3
P 3450 2450
F 0 "R5" H 3520 2496 50  0000 L CNN
F 1 "10k" H 3520 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3380 2450 50  0001 C CNN
F 3 "~" H 3450 2450 50  0001 C CNN
	1    3450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 6269CC2F
P 3450 2300
F 0 "#PWR019" H 3450 2150 50  0001 C CNN
F 1 "+5V" H 3465 2473 50  0000 C CNN
F 2 "" H 3450 2300 50  0001 C CNN
F 3 "" H 3450 2300 50  0001 C CNN
	1    3450 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 6269D418
P 3050 2300
F 0 "#PWR015" H 3050 2150 50  0001 C CNN
F 1 "+5V" H 3065 2473 50  0000 C CNN
F 2 "" H 3050 2300 50  0001 C CNN
F 3 "" H 3050 2300 50  0001 C CNN
	1    3050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3600 7650 3600
Text Label 7650 3600 0    50   ~ 0
SERVO0
Wire Wire Line
	8000 3700 7550 3700
Wire Wire Line
	7550 3700 7550 3500
Wire Wire Line
	8000 3800 7900 3800
Wire Wire Line
	7900 3800 7900 3850
$Comp
L power:GND #PWR026
U 1 1 626AA5F4
P 7900 3850
F 0 "#PWR026" H 7900 3600 50  0001 C CNN
F 1 "GND" H 7905 3677 50  0000 C CNN
F 2 "" H 7900 3850 50  0001 C CNN
F 3 "" H 7900 3850 50  0001 C CNN
	1    7900 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR025
U 1 1 626AAC44
P 7550 3500
F 0 "#PWR025" H 7550 3350 50  0001 C CNN
F 1 "+5VP" H 7565 3673 50  0000 C CNN
F 2 "" H 7550 3500 50  0001 C CNN
F 3 "" H 7550 3500 50  0001 C CNN
	1    7550 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 626B55C2
P 9150 3700
F 0 "J7" H 9122 3632 50  0000 R CNN
F 1 "Servo 1" H 9300 3900 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 9150 3700 50  0001 C CNN
F 3 "~" H 9150 3700 50  0001 C CNN
	1    9150 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 3600 8600 3600
Text Label 8600 3600 0    50   ~ 0
SERVO1
Wire Wire Line
	8950 3700 8500 3700
Wire Wire Line
	8500 3700 8500 3500
Wire Wire Line
	8950 3800 8850 3800
Wire Wire Line
	8850 3800 8850 3850
$Comp
L power:GND #PWR031
U 1 1 626B55CE
P 8850 3850
F 0 "#PWR031" H 8850 3600 50  0001 C CNN
F 1 "GND" H 8855 3677 50  0000 C CNN
F 2 "" H 8850 3850 50  0001 C CNN
F 3 "" H 8850 3850 50  0001 C CNN
	1    8850 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR029
U 1 1 626B55D4
P 8500 3500
F 0 "#PWR029" H 8500 3350 50  0001 C CNN
F 1 "+5VP" H 8515 3673 50  0000 C CNN
F 2 "" H 8500 3500 50  0001 C CNN
F 3 "" H 8500 3500 50  0001 C CNN
	1    8500 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J10
U 1 1 626B6D14
P 10100 3700
F 0 "J10" H 10072 3632 50  0000 R CNN
F 1 "Servo 2" H 10250 3900 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 10100 3700 50  0001 C CNN
F 3 "~" H 10100 3700 50  0001 C CNN
	1    10100 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9900 3600 9550 3600
Text Label 9550 3600 0    50   ~ 0
SERVO2
Wire Wire Line
	9900 3700 9450 3700
Wire Wire Line
	9450 3700 9450 3500
Wire Wire Line
	9900 3800 9800 3800
Wire Wire Line
	9800 3800 9800 3850
$Comp
L power:GND #PWR038
U 1 1 626B6D20
P 9800 3850
F 0 "#PWR038" H 9800 3600 50  0001 C CNN
F 1 "GND" H 9805 3677 50  0000 C CNN
F 2 "" H 9800 3850 50  0001 C CNN
F 3 "" H 9800 3850 50  0001 C CNN
	1    9800 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR035
U 1 1 626B6D26
P 9450 3500
F 0 "#PWR035" H 9450 3350 50  0001 C CNN
F 1 "+5VP" H 9465 3673 50  0000 C CNN
F 2 "" H 9450 3500 50  0001 C CNN
F 3 "" H 9450 3500 50  0001 C CNN
	1    9450 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J3
U 1 1 626BAD12
P 2000 4150
F 0 "J3" H 1671 4246 50  0000 R CNN
F 1 "AVR-ISP-6" H 1671 4155 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 1750 4200 50  0001 C CNN
F 3 " ~" H 725 3600 50  0001 C CNN
	1    2000 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 626BC6AD
P 1900 4550
F 0 "#PWR011" H 1900 4300 50  0001 C CNN
F 1 "GND" H 1905 4377 50  0000 C CNN
F 2 "" H 1900 4550 50  0001 C CNN
F 3 "" H 1900 4550 50  0001 C CNN
	1    1900 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 626BCD2F
P 1900 3650
F 0 "#PWR010" H 1900 3500 50  0001 C CNN
F 1 "+5V" H 1915 3823 50  0000 C CNN
F 2 "" H 1900 3650 50  0001 C CNN
F 3 "" H 1900 3650 50  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3950 2900 3950
Wire Wire Line
	2400 4050 2900 4050
Wire Wire Line
	2400 4150 2900 4150
Text Label 2900 3950 2    50   ~ 0
MISO
Text Label 2900 4050 2    50   ~ 0
MOSI
Text Label 2900 4150 2    50   ~ 0
SCK
Text Label 2900 4250 2    50   ~ 0
RST
$Comp
L Device:R R4
U 1 1 626C3EA9
P 3350 4050
F 0 "R4" H 3420 4096 50  0000 L CNN
F 1 "10k" H 3420 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3280 4050 50  0001 C CNN
F 3 "~" H 3350 4050 50  0001 C CNN
	1    3350 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 626C56E4
P 3350 4550
F 0 "SW1" V 3396 4502 50  0000 R CNN
F 1 "Reset" V 3305 4502 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3350 4750 50  0001 C CNN
F 3 "~" H 3350 4750 50  0001 C CNN
	1    3350 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 626C6301
P 3350 4750
F 0 "#PWR018" H 3350 4500 50  0001 C CNN
F 1 "GND" H 3355 4577 50  0000 C CNN
F 2 "" H 3350 4750 50  0001 C CNN
F 3 "" H 3350 4750 50  0001 C CNN
	1    3350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 626C69DD
P 3350 3900
F 0 "#PWR017" H 3350 3750 50  0001 C CNN
F 1 "+5V" H 3365 4073 50  0000 C CNN
F 2 "" H 3350 3900 50  0001 C CNN
F 3 "" H 3350 3900 50  0001 C CNN
	1    3350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4250 3350 4250
Wire Wire Line
	3350 4200 3350 4250
Wire Wire Line
	3350 4250 3350 4350
Connection ~ 3350 4250
$Comp
L Device:LED D1
U 1 1 626D344A
P 1050 5650
F 0 "D1" V 1089 5532 50  0000 R CNN
F 1 "5V" V 998 5532 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1050 5650 50  0001 C CNN
F 3 "~" H 1050 5650 50  0001 C CNN
	1    1050 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 626D4392
P 1050 5800
F 0 "#PWR03" H 1050 5550 50  0001 C CNN
F 1 "GND" H 1055 5627 50  0000 C CNN
F 2 "" H 1050 5800 50  0001 C CNN
F 3 "" H 1050 5800 50  0001 C CNN
	1    1050 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 626D4B9F
P 1050 5350
F 0 "R1" H 1120 5396 50  0000 L CNN
F 1 "470" H 1120 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 980 5350 50  0001 C CNN
F 3 "~" H 1050 5350 50  0001 C CNN
	1    1050 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 626D5D56
P 1050 5200
F 0 "#PWR02" H 1050 5050 50  0001 C CNN
F 1 "+5V" H 1065 5373 50  0000 C CNN
F 2 "" H 1050 5200 50  0001 C CNN
F 3 "" H 1050 5200 50  0001 C CNN
	1    1050 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 626DB2F4
P 1550 5650
F 0 "D2" V 1589 5532 50  0000 R CNN
F 1 "5VP" V 1498 5532 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1550 5650 50  0001 C CNN
F 3 "~" H 1550 5650 50  0001 C CNN
	1    1550 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 626DB2FA
P 1550 5800
F 0 "#PWR08" H 1550 5550 50  0001 C CNN
F 1 "GND" H 1555 5627 50  0000 C CNN
F 2 "" H 1550 5800 50  0001 C CNN
F 3 "" H 1550 5800 50  0001 C CNN
	1    1550 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 626DB300
P 1550 5350
F 0 "R2" H 1620 5396 50  0000 L CNN
F 1 "470" H 1620 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 5350 50  0001 C CNN
F 3 "~" H 1550 5350 50  0001 C CNN
	1    1550 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR07
U 1 1 626DDAA3
P 1550 5200
F 0 "#PWR07" H 1550 5050 50  0001 C CNN
F 1 "+5VP" H 1565 5373 50  0000 C CNN
F 2 "" H 1550 5200 50  0001 C CNN
F 3 "" H 1550 5200 50  0001 C CNN
	1    1550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2950 6600 2950
Wire Wire Line
	6000 3050 6600 3050
Text Label 6600 2950 2    50   ~ 0
MOSI
Text Label 6600 3050 2    50   ~ 0
MISO
Wire Wire Line
	6000 3150 6600 3150
Text Label 6600 3150 2    50   ~ 0
SCK
Wire Wire Line
	6000 4150 6600 4150
Text Label 6600 4150 2    50   ~ 0
RST
Wire Wire Line
	6000 2850 6600 2850
Text Label 6600 2850 2    50   ~ 0
SERVO1
Wire Wire Line
	6000 4650 6600 4650
Text Label 6600 4650 2    50   ~ 0
SERVO2
Wire Wire Line
	6000 4850 6600 4850
Text Label 6600 4850 2    50   ~ 0
SERVO0
Wire Wire Line
	8000 4500 7900 4500
Wire Wire Line
	7900 4500 7900 4450
Wire Wire Line
	8000 4800 7900 4800
Wire Wire Line
	7900 4800 7900 4850
$Comp
L power:GND #PWR028
U 1 1 626FAE44
P 7900 4850
F 0 "#PWR028" H 7900 4600 50  0001 C CNN
F 1 "GND" H 7905 4677 50  0000 C CNN
F 2 "" H 7900 4850 50  0001 C CNN
F 3 "" H 7900 4850 50  0001 C CNN
	1    7900 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 626FBB44
P 7900 4450
F 0 "#PWR027" H 7900 4300 50  0001 C CNN
F 1 "+5V" H 7915 4623 50  0000 C CNN
F 2 "" H 7900 4450 50  0001 C CNN
F 3 "" H 7900 4450 50  0001 C CNN
	1    7900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4600 8000 4700
Wire Wire Line
	8000 4700 7700 4700
Connection ~ 8000 4700
Text Label 7700 4700 0    50   ~ 0
US0
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 6270F10A
P 9150 4700
F 0 "J8" H 9122 4582 50  0000 R CNN
F 1 "Ultrasound 1" H 9300 4900 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 9150 4700 50  0001 C CNN
F 3 "~" H 9150 4700 50  0001 C CNN
	1    9150 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 4500 8850 4500
Wire Wire Line
	8850 4500 8850 4450
Wire Wire Line
	8950 4800 8850 4800
Wire Wire Line
	8850 4800 8850 4850
$Comp
L power:GND #PWR033
U 1 1 6270F114
P 8850 4850
F 0 "#PWR033" H 8850 4600 50  0001 C CNN
F 1 "GND" H 8855 4677 50  0000 C CNN
F 2 "" H 8850 4850 50  0001 C CNN
F 3 "" H 8850 4850 50  0001 C CNN
	1    8850 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR032
U 1 1 6270F11A
P 8850 4450
F 0 "#PWR032" H 8850 4300 50  0001 C CNN
F 1 "+5V" H 8865 4623 50  0000 C CNN
F 2 "" H 8850 4450 50  0001 C CNN
F 3 "" H 8850 4450 50  0001 C CNN
	1    8850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4600 8950 4700
Wire Wire Line
	8950 4700 8650 4700
Connection ~ 8950 4700
Text Label 8650 4700 0    50   ~ 0
US1
$Comp
L Connector:Conn_01x04_Male J9
U 1 1 62711596
P 10050 4700
F 0 "J9" H 10022 4582 50  0000 R CNN
F 1 "Ultrasound 2" H 10200 4900 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 10050 4700 50  0001 C CNN
F 3 "~" H 10050 4700 50  0001 C CNN
	1    10050 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9850 4500 9750 4500
Wire Wire Line
	9750 4500 9750 4450
Wire Wire Line
	9850 4800 9750 4800
Wire Wire Line
	9750 4800 9750 4850
$Comp
L power:GND #PWR037
U 1 1 627115A0
P 9750 4850
F 0 "#PWR037" H 9750 4600 50  0001 C CNN
F 1 "GND" H 9755 4677 50  0000 C CNN
F 2 "" H 9750 4850 50  0001 C CNN
F 3 "" H 9750 4850 50  0001 C CNN
	1    9750 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR036
U 1 1 627115A6
P 9750 4450
F 0 "#PWR036" H 9750 4300 50  0001 C CNN
F 1 "+5V" H 9765 4623 50  0000 C CNN
F 2 "" H 9750 4450 50  0001 C CNN
F 3 "" H 9750 4450 50  0001 C CNN
	1    9750 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4600 9850 4700
Wire Wire Line
	9850 4700 9550 4700
Connection ~ 9850 4700
Text Label 9550 4700 0    50   ~ 0
US2
Wire Wire Line
	6000 3550 6600 3550
Wire Wire Line
	6000 3650 6600 3650
Wire Wire Line
	6000 3750 6600 3750
Text Label 6600 3550 2    50   ~ 0
US0
Text Label 6600 3650 2    50   ~ 0
US1
Text Label 6600 3750 2    50   ~ 0
US2
NoConn ~ 6000 2650
NoConn ~ 6000 2750
NoConn ~ 6000 3850
NoConn ~ 6000 3950
NoConn ~ 6000 4050
NoConn ~ 6000 4350
NoConn ~ 6000 4450
NoConn ~ 6000 4550
NoConn ~ 6000 4750
NoConn ~ 6000 4950
NoConn ~ 6000 5050
$Comp
L Device:C C7
U 1 1 62751224
P 4200 3300
F 0 "C7" H 4315 3346 50  0000 L CNN
F 1 "100n" H 4315 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4238 3150 50  0001 C CNN
F 3 "~" H 4200 3300 50  0001 C CNN
	1    4200 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 6275254D
P 4200 3450
F 0 "#PWR040" H 4200 3200 50  0001 C CNN
F 1 "GND" H 4205 3277 50  0000 C CNN
F 2 "" H 4200 3450 50  0001 C CNN
F 3 "" H 4200 3450 50  0001 C CNN
	1    4200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR039
U 1 1 62752D19
P 4200 3150
F 0 "#PWR039" H 4200 3000 50  0001 C CNN
F 1 "+5V" H 4215 3323 50  0000 C CNN
F 2 "" H 4200 3150 50  0001 C CNN
F 3 "" H 4200 3150 50  0001 C CNN
	1    4200 3150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6275A0E4
P 4100 1150
F 0 "#FLG0101" H 4100 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 4100 1323 50  0000 C CNN
F 2 "" H 4100 1150 50  0001 C CNN
F 3 "~" H 4100 1150 50  0001 C CNN
	1    4100 1150
	1    0    0    -1  
$EndComp
Connection ~ 4100 1150
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6275AAFA
P 2750 1550
F 0 "#FLG0102" H 2750 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 2750 1723 50  0000 C CNN
F 2 "" H 2750 1550 50  0001 C CNN
F 3 "~" H 2750 1550 50  0001 C CNN
	1    2750 1550
	-1   0    0    1   
$EndComp
Connection ~ 2750 1550
Wire Wire Line
	1550 2550 1950 2550
Wire Wire Line
	1950 2550 1950 2500
Connection ~ 1550 2550
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 6275EBBF
P 1950 2500
F 0 "#FLG0103" H 1950 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 2673 50  0000 C CNN
F 2 "" H 1950 2500 50  0001 C CNN
F 3 "~" H 1950 2500 50  0001 C CNN
	1    1950 2500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 6275FDDF
P 1650 1150
F 0 "#FLG0104" H 1650 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 1323 50  0000 C CNN
F 2 "" H 1650 1150 50  0001 C CNN
F 3 "~" H 1650 1150 50  0001 C CNN
	1    1650 1150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
