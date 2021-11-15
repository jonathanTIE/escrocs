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
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 618D857A
P 6200 3300
F 0 "U1" H 5750 1850 50  0000 C CNN
F 1 "ATmega328P-AU" H 6600 1850 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 6200 3300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 6200 3300 50  0001 C CNN
	1    6200 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 618D9A95
P 6200 4800
F 0 "#PWR012" H 6200 4550 50  0001 C CNN
F 1 "GND" H 6205 4627 50  0000 C CNN
F 2 "" H 6200 4800 50  0001 C CNN
F 3 "" H 6200 4800 50  0001 C CNN
	1    6200 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 618DA176
P 6250 1650
F 0 "#PWR013" H 6250 1500 50  0001 C CNN
F 1 "+5V" H 6265 1823 50  0000 C CNN
F 2 "" H 6250 1650 50  0001 C CNN
F 3 "" H 6250 1650 50  0001 C CNN
	1    6250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1800 6200 1650
Wire Wire Line
	6200 1650 6250 1650
Wire Wire Line
	6250 1650 6300 1650
Wire Wire Line
	6300 1650 6300 1800
Connection ~ 6250 1650
NoConn ~ 5600 2100
$Comp
L Device:Crystal Y1
U 1 1 618DE285
P 4700 3800
F 0 "Y1" V 4654 3931 50  0000 L CNN
F 1 "16MHz" V 4745 3931 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 4700 3800 50  0001 C CNN
F 3 "~" H 4700 3800 50  0001 C CNN
	1    4700 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 618E40A2
P 4950 4000
F 0 "C4" H 5065 4046 50  0000 L CNN
F 1 "22p" H 5065 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4988 3850 50  0001 C CNN
F 3 "~" H 4950 4000 50  0001 C CNN
	1    4950 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 618E54A3
P 4450 4000
F 0 "C3" H 4565 4046 50  0000 L CNN
F 1 "22p" H 4565 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4488 3850 50  0001 C CNN
F 3 "~" H 4450 4000 50  0001 C CNN
	1    4450 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 618E5737
P 4450 4150
F 0 "#PWR08" H 4450 3900 50  0001 C CNN
F 1 "GND" H 4455 3977 50  0000 C CNN
F 2 "" H 4450 4150 50  0001 C CNN
F 3 "" H 4450 4150 50  0001 C CNN
	1    4450 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 618E5B9C
P 4950 4150
F 0 "#PWR011" H 4950 3900 50  0001 C CNN
F 1 "GND" H 4955 3977 50  0000 C CNN
F 2 "" H 4950 4150 50  0001 C CNN
F 3 "" H 4950 4150 50  0001 C CNN
	1    4950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3850 4950 3800
Wire Wire Line
	4950 3800 4850 3800
Wire Wire Line
	4550 3800 4450 3800
Wire Wire Line
	4450 3800 4450 3850
Text Label 4550 3800 2    50   ~ 0
XTAL1
Text Label 4850 3800 0    50   ~ 0
XTAL2
Wire Wire Line
	6800 2700 7250 2700
Wire Wire Line
	6800 2800 7250 2800
Text Label 7250 2700 2    50   ~ 0
XTAL1
Text Label 7250 2800 2    50   ~ 0
XTAL2
Wire Wire Line
	6800 3600 7250 3600
Text Label 7250 3600 2    50   ~ 0
RST
$Comp
L power:+5V #PWR09
U 1 1 618EC245
P 4700 2100
F 0 "#PWR09" H 4700 1950 50  0001 C CNN
F 1 "+5V" H 4715 2273 50  0000 C CNN
F 2 "" H 4700 2100 50  0001 C CNN
F 3 "" H 4700 2100 50  0001 C CNN
	1    4700 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 618ECF1B
P 4700 2900
F 0 "#PWR010" H 4700 2650 50  0001 C CNN
F 1 "GND" H 4705 2727 50  0000 C CNN
F 2 "" H 4700 2900 50  0001 C CNN
F 3 "" H 4700 2900 50  0001 C CNN
	1    4700 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 618ED451
P 4700 2250
F 0 "R1" H 4770 2296 50  0000 L CNN
F 1 "10k" H 4770 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4630 2250 50  0001 C CNN
F 3 "~" H 4700 2250 50  0001 C CNN
	1    4700 2250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 618EF093
P 4700 2700
F 0 "SW1" V 4654 2848 50  0000 L CNN
F 1 "SW_Push" V 4745 2848 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4700 2900 50  0001 C CNN
F 3 "~" H 4700 2900 50  0001 C CNN
	1    4700 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 2500 4700 2450
Wire Wire Line
	4700 2450 4350 2450
Connection ~ 4700 2450
Wire Wire Line
	4700 2450 4700 2400
Text Label 4350 2450 0    50   ~ 0
RST
Wire Wire Line
	6800 3400 7250 3400
Text Label 7250 3400 2    50   ~ 0
I2C_SDA
Wire Wire Line
	6800 3500 7250 3500
Text Label 7250 3500 2    50   ~ 0
I2C_SCL
Wire Wire Line
	6800 3800 7250 3800
Text Label 7250 3800 2    50   ~ 0
UART_RX
Wire Wire Line
	6800 3900 7250 3900
Text Label 7250 3900 2    50   ~ 0
UART_TX
NoConn ~ 5600 2300
NoConn ~ 5600 2400
Wire Wire Line
	6800 4100 7250 4100
Text Label 7250 4100 2    50   ~ 0
OC2B
Wire Wire Line
	6800 4300 7250 4300
Text Label 7250 4300 2    50   ~ 0
OC0B
Wire Wire Line
	6800 4400 7250 4400
Text Label 7250 4400 2    50   ~ 0
OC0A
Text Label 7250 2400 2    50   ~ 0
OC2A
Wire Wire Line
	6800 2200 7250 2200
Text Label 7250 2200 2    50   ~ 0
OC1A
Wire Wire Line
	6800 2300 7250 2300
Text Label 7250 2300 2    50   ~ 0
OC1B
Wire Wire Line
	6800 4000 7250 4000
Wire Wire Line
	6800 4200 7250 4200
Text Label 7250 4000 2    50   ~ 0
ENC3A
Text Label 7250 4200 2    50   ~ 0
ENC3B
Text Label 7250 2500 2    50   ~ 0
ENC1A
Text Label 7250 2600 2    50   ~ 0
ENC1B
Wire Wire Line
	6800 3000 7250 3000
Wire Wire Line
	6800 3100 7250 3100
Text Label 7250 3000 2    50   ~ 0
ENC2A
Text Label 7250 3100 2    50   ~ 0
ENC2B
NoConn ~ 6800 4500
NoConn ~ 6800 3300
NoConn ~ 6800 3200
$Comp
L custom:BD62130AEFJ U2
U 1 1 6190EFCD
P 8800 1850
F 0 "U2" H 8600 2500 50  0000 C CNN
F 1 "BD62130AEFJ" H 9100 2500 50  0000 C CNN
F 2 "Package_SO:HTSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.4x3.2mm" H 8800 1750 50  0001 C CNN
F 3 "" H 8800 1750 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2200 8800 2200
Wire Wire Line
	8900 2200 8800 2200
Connection ~ 8800 2200
$Comp
L power:GND #PWR015
U 1 1 6191132A
P 8800 2200
F 0 "#PWR015" H 8800 1950 50  0001 C CNN
F 1 "GND" H 8805 2027 50  0000 C CNN
F 2 "" H 8800 2200 50  0001 C CNN
F 3 "" H 8800 2200 50  0001 C CNN
	1    8800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR014
U 1 1 61912798
P 8800 1150
F 0 "#PWR014" H 8800 1000 50  0001 C CNN
F 1 "+12V" H 8815 1323 50  0000 C CNN
F 2 "" H 8800 1150 50  0001 C CNN
F 3 "" H 8800 1150 50  0001 C CNN
	1    8800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1700 8000 1700
Text Label 8000 1700 0    50   ~ 0
OC0B
Wire Wire Line
	8450 1600 8000 1600
Text Label 8000 1600 0    50   ~ 0
OC0A
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 6191C80E
P 10150 1900
F 0 "J4" H 10122 1782 50  0000 R CNN
F 1 "Motor 1" H 10122 1873 50  0000 R CNN
F 2 "Connector_JST:JST_PH_S6B-PH-K_1x06_P2.00mm_Horizontal" H 10150 1900 50  0001 C CNN
F 3 "~" H 10150 1900 50  0001 C CNN
	1    10150 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 1800 9850 1800
Wire Wire Line
	9850 1800 9850 1500
$Comp
L power:+5V #PWR023
U 1 1 619234DE
P 9850 1500
F 0 "#PWR023" H 9850 1350 50  0001 C CNN
F 1 "+5V" H 9865 1673 50  0000 C CNN
F 2 "" H 9850 1500 50  0001 C CNN
F 3 "" H 9850 1500 50  0001 C CNN
	1    9850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2000 9450 2000
Wire Wire Line
	9950 2100 9450 2100
Wire Wire Line
	9950 1900 9250 1900
Wire Wire Line
	9250 1900 9250 2150
$Comp
L power:GND #PWR020
U 1 1 619264E5
P 9250 2150
F 0 "#PWR020" H 9250 1900 50  0001 C CNN
F 1 "GND" H 9255 1977 50  0000 C CNN
F 2 "" H 9250 2150 50  0001 C CNN
F 3 "" H 9250 2150 50  0001 C CNN
	1    9250 2150
	1    0    0    -1  
$EndComp
Text Label 9450 2000 0    50   ~ 0
ENC1A
Text Label 9450 2100 0    50   ~ 0
ENC1B
Wire Wire Line
	9150 1700 9950 1700
Wire Wire Line
	9150 1600 9950 1600
$Comp
L custom:BD62130AEFJ U3
U 1 1 61940C6F
P 8800 3400
F 0 "U3" H 8600 4050 50  0000 C CNN
F 1 "BD62130AEFJ" H 9100 4050 50  0000 C CNN
F 2 "Package_SO:HTSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.4x3.2mm" H 8800 3300 50  0001 C CNN
F 3 "" H 8800 3300 50  0001 C CNN
	1    8800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3750 8800 3750
Wire Wire Line
	8900 3750 8800 3750
Connection ~ 8800 3750
$Comp
L power:GND #PWR017
U 1 1 61940C78
P 8800 3750
F 0 "#PWR017" H 8800 3500 50  0001 C CNN
F 1 "GND" H 8805 3577 50  0000 C CNN
F 2 "" H 8800 3750 50  0001 C CNN
F 3 "" H 8800 3750 50  0001 C CNN
	1    8800 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR016
U 1 1 61940C7E
P 8800 2700
F 0 "#PWR016" H 8800 2550 50  0001 C CNN
F 1 "+12V" H 8815 2873 50  0000 C CNN
F 2 "" H 8800 2700 50  0001 C CNN
F 3 "" H 8800 2700 50  0001 C CNN
	1    8800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3250 8000 3250
Text Label 8000 3250 0    50   ~ 0
OC1B
Wire Wire Line
	8450 3150 8000 3150
Text Label 8000 3150 0    50   ~ 0
OC1A
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 61940C88
P 10150 3450
F 0 "J5" H 10122 3332 50  0000 R CNN
F 1 "Motor 2" H 10122 3423 50  0000 R CNN
F 2 "Connector_JST:JST_PH_S6B-PH-K_1x06_P2.00mm_Horizontal" H 10150 3450 50  0001 C CNN
F 3 "~" H 10150 3450 50  0001 C CNN
	1    10150 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 3350 9850 3350
Wire Wire Line
	9850 3350 9850 3050
$Comp
L power:+5V #PWR024
U 1 1 61940C90
P 9850 3050
F 0 "#PWR024" H 9850 2900 50  0001 C CNN
F 1 "+5V" H 9865 3223 50  0000 C CNN
F 2 "" H 9850 3050 50  0001 C CNN
F 3 "" H 9850 3050 50  0001 C CNN
	1    9850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3550 9450 3550
Wire Wire Line
	9950 3650 9450 3650
Wire Wire Line
	9950 3450 9250 3450
Wire Wire Line
	9250 3450 9250 3700
$Comp
L power:GND #PWR021
U 1 1 61940C9A
P 9250 3700
F 0 "#PWR021" H 9250 3450 50  0001 C CNN
F 1 "GND" H 9255 3527 50  0000 C CNN
F 2 "" H 9250 3700 50  0001 C CNN
F 3 "" H 9250 3700 50  0001 C CNN
	1    9250 3700
	1    0    0    -1  
$EndComp
Text Label 9450 3550 0    50   ~ 0
ENC2A
Text Label 9450 3650 0    50   ~ 0
ENC2B
Wire Wire Line
	9150 3250 9950 3250
Wire Wire Line
	9150 3150 9950 3150
$Comp
L custom:BD62130AEFJ U4
U 1 1 61943709
P 8800 4950
F 0 "U4" H 8600 5600 50  0000 C CNN
F 1 "BD62130AEFJ" H 9100 5600 50  0000 C CNN
F 2 "Package_SO:HTSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.4x3.2mm" H 8800 4850 50  0001 C CNN
F 3 "" H 8800 4850 50  0001 C CNN
	1    8800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5300 8800 5300
Wire Wire Line
	8900 5300 8800 5300
Connection ~ 8800 5300
$Comp
L power:GND #PWR019
U 1 1 61943712
P 8800 5300
F 0 "#PWR019" H 8800 5050 50  0001 C CNN
F 1 "GND" H 8805 5127 50  0000 C CNN
F 2 "" H 8800 5300 50  0001 C CNN
F 3 "" H 8800 5300 50  0001 C CNN
	1    8800 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR018
U 1 1 61943718
P 8800 4250
F 0 "#PWR018" H 8800 4100 50  0001 C CNN
F 1 "+12V" H 8815 4423 50  0000 C CNN
F 2 "" H 8800 4250 50  0001 C CNN
F 3 "" H 8800 4250 50  0001 C CNN
	1    8800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4800 8000 4800
Text Label 8000 4800 0    50   ~ 0
OC2B
Wire Wire Line
	8450 4700 8000 4700
Text Label 8000 4700 0    50   ~ 0
OC2A
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 61943722
P 10150 5000
F 0 "J6" H 10122 4882 50  0000 R CNN
F 1 "Motor 3" H 10122 4973 50  0000 R CNN
F 2 "Connector_JST:JST_PH_S6B-PH-K_1x06_P2.00mm_Horizontal" H 10150 5000 50  0001 C CNN
F 3 "~" H 10150 5000 50  0001 C CNN
	1    10150 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 4900 9850 4900
Wire Wire Line
	9850 4900 9850 4600
$Comp
L power:+5V #PWR025
U 1 1 6194372A
P 9850 4600
F 0 "#PWR025" H 9850 4450 50  0001 C CNN
F 1 "+5V" H 9865 4773 50  0000 C CNN
F 2 "" H 9850 4600 50  0001 C CNN
F 3 "" H 9850 4600 50  0001 C CNN
	1    9850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5100 9450 5100
Wire Wire Line
	9950 5200 9450 5200
Wire Wire Line
	9950 5000 9250 5000
Wire Wire Line
	9250 5000 9250 5250
$Comp
L power:GND #PWR022
U 1 1 61943734
P 9250 5250
F 0 "#PWR022" H 9250 5000 50  0001 C CNN
F 1 "GND" H 9255 5077 50  0000 C CNN
F 2 "" H 9250 5250 50  0001 C CNN
F 3 "" H 9250 5250 50  0001 C CNN
	1    9250 5250
	1    0    0    -1  
$EndComp
Text Label 9450 5100 0    50   ~ 0
ENC3A
Text Label 9450 5200 0    50   ~ 0
ENC3B
Wire Wire Line
	9150 4800 9950 4800
Wire Wire Line
	9150 4700 9950 4700
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 6196C297
P 1500 3100
F 0 "J1" H 1608 3381 50  0000 C CNN
F 1 "I2C" H 1608 3290 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1500 3100 50  0001 C CNN
F 3 "~" H 1500 3100 50  0001 C CNN
	1    1500 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6196D092
P 1700 3300
F 0 "#PWR01" H 1700 3050 50  0001 C CNN
F 1 "GND" H 1705 3127 50  0000 C CNN
F 2 "" H 1700 3300 50  0001 C CNN
F 3 "" H 1700 3300 50  0001 C CNN
	1    1700 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 6196DE18
P 1800 2950
F 0 "#PWR03" H 1800 2800 50  0001 C CNN
F 1 "+5V" H 1815 3123 50  0000 C CNN
F 2 "" H 1800 2950 50  0001 C CNN
F 3 "" H 1800 2950 50  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3000 1800 3000
Wire Wire Line
	1800 3000 1800 2950
Wire Wire Line
	1700 3100 2150 3100
Text Label 2150 3100 2    50   ~ 0
I2C_SDA
Wire Wire Line
	1700 3200 2150 3200
Text Label 2150 3200 2    50   ~ 0
I2C_SCL
$Comp
L power:+5V #PWR04
U 1 1 61983336
P 2850 2950
F 0 "#PWR04" H 2850 2800 50  0001 C CNN
F 1 "+5V" H 2865 3123 50  0000 C CNN
F 2 "" H 2850 2950 50  0001 C CNN
F 3 "" H 2850 2950 50  0001 C CNN
	1    2850 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 61985764
P 2850 3250
F 0 "#PWR05" H 2850 3000 50  0001 C CNN
F 1 "GND" H 2855 3077 50  0000 C CNN
F 2 "" H 2850 3250 50  0001 C CNN
F 3 "" H 2850 3250 50  0001 C CNN
	1    2850 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 619874ED
P 2850 3100
F 0 "C1" H 2968 3146 50  0000 L CNN
F 1 "10u" H 2968 3055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2888 2950 50  0001 C CNN
F 3 "~" H 2850 3100 50  0001 C CNN
	1    2850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 619882E1
P 3200 3100
F 0 "C2" H 3315 3146 50  0000 L CNN
F 1 "100n" H 3315 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3238 2950 50  0001 C CNN
F 3 "~" H 3200 3100 50  0001 C CNN
	1    3200 3100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6198897E
P 3200 2950
F 0 "#FLG01" H 3200 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 3200 3123 50  0000 C CNN
F 2 "" H 3200 2950 50  0001 C CNN
F 3 "~" H 3200 2950 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61988FF1
P 3200 3250
F 0 "#FLG02" H 3200 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 3200 3423 50  0000 C CNN
F 2 "" H 3200 3250 50  0001 C CNN
F 3 "~" H 3200 3250 50  0001 C CNN
	1    3200 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 2950 3200 2950
Connection ~ 2850 2950
Connection ~ 3200 2950
Wire Wire Line
	3200 3250 2850 3250
Connection ~ 3200 3250
Connection ~ 2850 3250
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 619A4763
P 1500 4100
F 0 "J2" H 1608 4381 50  0000 C CNN
F 1 "UART" H 1608 4290 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1500 4100 50  0001 C CNN
F 3 "~" H 1500 4100 50  0001 C CNN
	1    1500 4100
	1    0    0    -1  
$EndComp
NoConn ~ 1700 4000
$Comp
L power:GND #PWR02
U 1 1 619A7F69
P 1700 4300
F 0 "#PWR02" H 1700 4050 50  0001 C CNN
F 1 "GND" H 1705 4127 50  0000 C CNN
F 2 "" H 1700 4300 50  0001 C CNN
F 3 "" H 1700 4300 50  0001 C CNN
	1    1700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4100 2150 4100
Text Label 2150 4100 2    50   ~ 0
UART_TX
Wire Wire Line
	1700 4200 2150 4200
Text Label 2150 4200 2    50   ~ 0
UART_RX
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 619B3488
P 3000 4150
F 0 "J3" H 3050 4467 50  0000 C CNN
F 1 "ISP" H 3050 4376 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 3000 4150 50  0001 C CNN
F 3 "~" H 3000 4150 50  0001 C CNN
	1    3000 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 619B7AD0
P 3400 4000
F 0 "#PWR07" H 3400 3850 50  0001 C CNN
F 1 "+5V" H 3415 4173 50  0000 C CNN
F 2 "" H 3400 4000 50  0001 C CNN
F 3 "" H 3400 4000 50  0001 C CNN
	1    3400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4050 3400 4050
Wire Wire Line
	3400 4050 3400 4000
$Comp
L power:GND #PWR06
U 1 1 619BE2C0
P 3300 4250
F 0 "#PWR06" H 3300 4000 50  0001 C CNN
F 1 "GND" H 3305 4077 50  0000 C CNN
F 2 "" H 3300 4250 50  0001 C CNN
F 3 "" H 3300 4250 50  0001 C CNN
	1    3300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4250 2450 4250
Text Label 2450 4250 0    50   ~ 0
RST
Wire Wire Line
	2800 4050 2450 4050
Text Label 2450 4050 0    50   ~ 0
SPI_MISO
Wire Wire Line
	2800 4150 2450 4150
Text Label 2450 4150 0    50   ~ 0
SPI_SCK
Wire Wire Line
	3300 4150 3650 4150
Text Label 3650 4150 2    50   ~ 0
SPI_MOSI
Text Label 7700 2500 2    50   ~ 0
SPI_MISO
Text Label 7700 2600 2    50   ~ 0
SPI_SCK
Text Label 7700 2400 2    50   ~ 0
SPI_MOSI
Wire Wire Line
	6800 2400 7700 2400
Wire Wire Line
	6800 2500 7700 2500
Wire Wire Line
	6800 2600 7700 2600
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 61A304DC
P 1550 2200
F 0 "J7" H 1658 2381 50  0000 C CNN
F 1 "12V in" H 1658 2290 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1550 2200 50  0001 C CNN
F 3 "~" H 1550 2200 50  0001 C CNN
	1    1550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 61A31D67
P 1750 2300
F 0 "#PWR026" H 1750 2050 50  0001 C CNN
F 1 "GND" H 1755 2127 50  0000 C CNN
F 2 "" H 1750 2300 50  0001 C CNN
F 3 "" H 1750 2300 50  0001 C CNN
	1    1750 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR027
U 1 1 61A387CD
P 1850 2150
F 0 "#PWR027" H 1850 2000 50  0001 C CNN
F 1 "+12V" H 1865 2323 50  0000 C CNN
F 2 "" H 1850 2150 50  0001 C CNN
F 3 "" H 1850 2150 50  0001 C CNN
	1    1850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2200 1850 2200
Wire Wire Line
	1850 2200 1850 2150
$Comp
L power:GND #PWR029
U 1 1 61A403BA
P 2850 2400
F 0 "#PWR029" H 2850 2150 50  0001 C CNN
F 1 "GND" H 2855 2227 50  0000 C CNN
F 2 "" H 2850 2400 50  0001 C CNN
F 3 "" H 2850 2400 50  0001 C CNN
	1    2850 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 61A403C0
P 2850 2250
F 0 "C5" H 2968 2296 50  0000 L CNN
F 1 "10u" H 2968 2205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2888 2100 50  0001 C CNN
F 3 "~" H 2850 2250 50  0001 C CNN
	1    2850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 61A403C6
P 3200 2250
F 0 "C6" H 3315 2296 50  0000 L CNN
F 1 "100n" H 3315 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3238 2100 50  0001 C CNN
F 3 "~" H 3200 2250 50  0001 C CNN
	1    3200 2250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 61A403CC
P 3200 2100
F 0 "#FLG03" H 3200 2175 50  0001 C CNN
F 1 "PWR_FLAG" H 3200 2273 50  0000 C CNN
F 2 "" H 3200 2100 50  0001 C CNN
F 3 "~" H 3200 2100 50  0001 C CNN
	1    3200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2400 2850 2400
Connection ~ 2850 2400
$Comp
L power:+12V #PWR028
U 1 1 61A4C725
P 2850 2100
F 0 "#PWR028" H 2850 1950 50  0001 C CNN
F 1 "+12V" H 2865 2273 50  0000 C CNN
F 2 "" H 2850 2100 50  0001 C CNN
F 3 "" H 2850 2100 50  0001 C CNN
	1    2850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2100 2850 2100
Connection ~ 3200 2100
Connection ~ 2850 2100
$Comp
L Device:R R2
U 1 1 61AC7216
P 1500 5150
F 0 "R2" H 1570 5196 50  0000 L CNN
F 1 "470" H 1570 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1430 5150 50  0001 C CNN
F 3 "~" H 1500 5150 50  0001 C CNN
	1    1500 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 61AC8216
P 1500 5450
F 0 "D1" V 1539 5332 50  0000 R CNN
F 1 "5V" V 1448 5332 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1500 5450 50  0001 C CNN
F 3 "~" H 1500 5450 50  0001 C CNN
	1    1500 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 61AC9095
P 1500 5600
F 0 "#PWR031" H 1500 5350 50  0001 C CNN
F 1 "GND" H 1505 5427 50  0000 C CNN
F 2 "" H 1500 5600 50  0001 C CNN
F 3 "" H 1500 5600 50  0001 C CNN
	1    1500 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 61ACBC28
P 1500 5000
F 0 "#PWR030" H 1500 4850 50  0001 C CNN
F 1 "+5V" H 1515 5173 50  0000 C CNN
F 2 "" H 1500 5000 50  0001 C CNN
F 3 "" H 1500 5000 50  0001 C CNN
	1    1500 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 61AD198E
P 1900 5150
F 0 "R3" H 1970 5196 50  0000 L CNN
F 1 "470" H 1970 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1830 5150 50  0001 C CNN
F 3 "~" H 1900 5150 50  0001 C CNN
	1    1900 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 61AD1994
P 1900 5450
F 0 "D2" V 1939 5332 50  0000 R CNN
F 1 "12V" V 1848 5332 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1900 5450 50  0001 C CNN
F 3 "~" H 1900 5450 50  0001 C CNN
	1    1900 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 61AD199A
P 1900 5600
F 0 "#PWR033" H 1900 5350 50  0001 C CNN
F 1 "GND" H 1905 5427 50  0000 C CNN
F 2 "" H 1900 5600 50  0001 C CNN
F 3 "" H 1900 5600 50  0001 C CNN
	1    1900 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 61AD8D7C
P 2300 5150
F 0 "R4" H 2370 5196 50  0000 L CNN
F 1 "470" H 2370 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2230 5150 50  0001 C CNN
F 3 "~" H 2300 5150 50  0001 C CNN
	1    2300 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61AD8D82
P 2300 5450
F 0 "D3" V 2339 5332 50  0000 R CNN
F 1 "Status" V 2248 5332 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2300 5450 50  0001 C CNN
F 3 "~" H 2300 5450 50  0001 C CNN
	1    2300 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 61AD8D88
P 2300 5600
F 0 "#PWR034" H 2300 5350 50  0001 C CNN
F 1 "GND" H 2305 5427 50  0000 C CNN
F 2 "" H 2300 5600 50  0001 C CNN
F 3 "" H 2300 5600 50  0001 C CNN
	1    2300 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR032
U 1 1 61AE9A4B
P 1900 5000
F 0 "#PWR032" H 1900 4850 50  0001 C CNN
F 1 "+12V" H 1915 5173 50  0000 C CNN
F 2 "" H 1900 5000 50  0001 C CNN
F 3 "" H 1900 5000 50  0001 C CNN
	1    1900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5000 2600 5000
Text Label 2600 5000 2    50   ~ 0
STATUS
Text Label 7250 2100 2    50   ~ 0
STATUS
Wire Wire Line
	6800 2100 7250 2100
$EndSCHEMATC
