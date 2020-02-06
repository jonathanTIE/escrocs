EESchema Schematic File Version 4
EELAYER 26 0
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
L Connector:Raspberry_Pi_2_3 J1
U 1 1 5DF6B0B5
P 2300 2600
F 0 "J1" H 2300 4078 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2300 3987 50  0000 C CNN
F 2 "Perso:raspi-spi" H 2300 2600 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2300 2600 50  0001 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
$Comp
L RF_AM_FM:RFM69HCW U1
U 1 1 5DF6B1EC
P 4350 2800
F 0 "U1" H 4350 2750 50  0000 C CNN
F 1 "RFM69HCW" H 4650 3250 50  0000 C CNN
F 2 "Perso:RFM69HCW-XXXS2" H 1050 4450 50  0001 C CNN
F 3 "http://www.hoperf.com/upload/rf/RFM69HCW-V1.1.pdf" H 1050 4450 50  0001 C CNN
	1    4350 2800
	1    0    0    1   
$EndComp
Wire Wire Line
	3850 3100 3100 3100
Wire Wire Line
	3850 3000 3100 3000
Wire Wire Line
	3850 2900 3750 2900
Wire Wire Line
	3850 2800 3100 2800
Text GLabel 3850 2600 0    50   Input ~ 0
RESET
Text GLabel 1500 3100 0    50   Input ~ 0
RESET
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5DF6B53B
P 5200 3100
F 0 "J2" H 5299 3076 50  0000 L CNN
F 1 "Conn_Coaxial" H 5299 2985 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Samtec_SMA-J-P-H-ST-EM1_EdgeMount" H 5200 3100 50  0001 C CNN
F 3 " ~" H 5200 3100 50  0001 C CNN
	1    5200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3100 4850 3100
Wire Wire Line
	4450 2200 4350 2200
Wire Wire Line
	4350 2200 4250 2200
Connection ~ 4350 2200
NoConn ~ 4850 2900
NoConn ~ 4850 2800
NoConn ~ 4850 2700
NoConn ~ 4850 2600
NoConn ~ 4850 2500
NoConn ~ 4850 2400
NoConn ~ 3100 2700
NoConn ~ 3100 3300
NoConn ~ 3100 3400
NoConn ~ 3100 2500
NoConn ~ 3100 2400
NoConn ~ 3100 2300
NoConn ~ 3100 2100
NoConn ~ 3100 2000
NoConn ~ 3100 1800
NoConn ~ 3100 1700
NoConn ~ 1500 1700
NoConn ~ 1500 1800
NoConn ~ 1500 2000
NoConn ~ 1500 2100
NoConn ~ 1500 2200
NoConn ~ 1500 2400
NoConn ~ 1500 2500
NoConn ~ 1500 2600
NoConn ~ 1500 2800
NoConn ~ 1500 2900
NoConn ~ 1500 3000
NoConn ~ 1500 3200
NoConn ~ 1500 3300
NoConn ~ 2400 3900
NoConn ~ 2500 3900
NoConn ~ 2600 3900
NoConn ~ 2100 3900
NoConn ~ 2000 3900
NoConn ~ 1900 3900
Wire Wire Line
	2300 3900 2200 3900
Wire Wire Line
	2200 3900 2200 4050
Connection ~ 2200 3900
Wire Wire Line
	4350 2200 4350 2000
Wire Wire Line
	4350 2000 4750 2000
$Comp
L power:GND #PWR04
U 1 1 5DF6C4D6
P 4750 2000
F 0 "#PWR04" H 4750 1750 50  0001 C CNN
F 1 "GND" H 4755 1827 50  0000 C CNN
F 2 "" H 4750 2000 50  0001 C CNN
F 3 "" H 4750 2000 50  0001 C CNN
	1    4750 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DF6C519
P 2200 4050
F 0 "#PWR01" H 2200 3800 50  0001 C CNN
F 1 "GND" H 2205 3877 50  0000 C CNN
F 2 "" H 2200 4050 50  0001 C CNN
F 3 "" H 2200 4050 50  0001 C CNN
	1    2200 4050
	1    0    0    -1  
$EndComp
NoConn ~ 2100 1300
NoConn ~ 2200 1300
Wire Wire Line
	2400 1300 2500 1300
Wire Wire Line
	2500 1300 2950 1300
Wire Wire Line
	2950 1300 2950 1150
Connection ~ 2500 1300
Text GLabel 2950 1150 0    50   Input ~ 0
3V3
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5DF6C916
P 3100 1200
F 0 "#FLG01" H 3100 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 1374 50  0000 C CNN
F 2 "" H 3100 1200 50  0001 C CNN
F 3 "~" H 3100 1200 50  0001 C CNN
	1    3100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1200 3100 1300
Wire Wire Line
	3100 1300 2950 1300
Connection ~ 2950 1300
Text GLabel 3750 3550 0    50   Input ~ 0
3V3
$Comp
L Device:CP C1
U 1 1 5DF6CB19
P 3900 3700
F 0 "C1" H 4018 3746 50  0000 L CNN
F 1 "CP" H 4018 3655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 3938 3550 50  0001 C CNN
F 3 "~" H 3900 3700 50  0001 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DF6CBA2
P 4350 3700
F 0 "C2" H 4465 3746 50  0000 L CNN
F 1 "C" H 4465 3655 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 4388 3550 50  0001 C CNN
F 3 "~" H 4350 3700 50  0001 C CNN
	1    4350 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3300 4350 3550
Wire Wire Line
	3750 3550 3900 3550
Wire Wire Line
	3900 3550 4350 3550
Connection ~ 3900 3550
Connection ~ 4350 3550
$Comp
L power:GND #PWR03
U 1 1 5DF6D0D9
P 4350 3850
F 0 "#PWR03" H 4350 3600 50  0001 C CNN
F 1 "GND" H 4355 3677 50  0000 C CNN
F 2 "" H 4350 3850 50  0001 C CNN
F 3 "" H 4350 3850 50  0001 C CNN
	1    4350 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DF6D10A
P 3900 3850
F 0 "#PWR02" H 3900 3600 50  0001 C CNN
F 1 "GND" H 3905 3677 50  0000 C CNN
F 2 "" H 3900 3850 50  0001 C CNN
F 3 "" H 3900 3850 50  0001 C CNN
	1    3900 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DF6D79D
P 5200 3300
F 0 "#PWR0101" H 5200 3050 50  0001 C CNN
F 1 "GND" H 5205 3127 50  0000 C CNN
F 2 "" H 5200 3300 50  0001 C CNN
F 3 "" H 5200 3300 50  0001 C CNN
	1    5200 3300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DF6D7D5
P 2550 4050
F 0 "#FLG0101" H 2550 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 2550 4223 50  0000 C CNN
F 2 "" H 2550 4050 50  0001 C CNN
F 3 "~" H 2550 4050 50  0001 C CNN
	1    2550 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 4050 2200 4050
Connection ~ 2200 4050
$Comp
L Device:Jumper JP1
U 1 1 5DF7CC85
P 3450 2900
F 0 "JP1" H 3450 3164 50  0000 C CNN
F 1 "Jumper" H 3450 3073 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" H 3450 2900 50  0001 C CNN
F 3 "~" H 3450 2900 50  0001 C CNN
	1    3450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2900 3100 2900
$EndSCHEMATC