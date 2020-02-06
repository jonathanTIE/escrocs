EESchema Schematic File Version 4
LIBS:carte-alim-cache
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
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5D6ECCBC
P 8650 2450
F 0 "A1" H 8650 3628 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 8650 3537 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 8800 1400 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 8450 3500 50  0001 C CNN
	1    8650 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5D6ECFB2
P 1900 2300
F 0 "BT1" H 2008 2346 50  0000 L CNN
F 1 "Battery" H 2008 2255 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" V 1900 2360 50  0001 C CNN
F 3 "~" V 1900 2360 50  0001 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5D6ED0C2
P 2250 2000
F 0 "F1" V 2053 2000 50  0000 C CNN
F 1 "10 A" V 2144 2000 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 2180 2000 50  0001 C CNN
F 3 "~" H 2250 2000 50  0001 C CNN
	1    2250 2000
	0    1    1    0   
$EndComp
$Comp
L Device:D D1
U 1 1 5D6ED1A7
P 2650 2000
F 0 "D1" H 2650 1784 50  0000 C CNN
F 1 "MBR1645" H 2650 1875 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-126-2_Horizontal_TabDown" H 2650 2000 50  0001 C CNN
F 3 "~" H 2650 2000 50  0001 C CNN
	1    2650 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D6ED425
P 3100 2250
F 0 "D2" V 3138 2133 50  0000 R CNN
F 1 "ON (vert)" V 3047 2133 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 3100 2250 50  0001 C CNN
F 3 "~" H 3100 2250 50  0001 C CNN
	1    3100 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D6ED595
P 3100 2650
F 0 "R1" H 3170 2696 50  0000 L CNN
F 1 "1k" H 3170 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 2650 50  0001 C CNN
F 3 "~" H 3100 2650 50  0001 C CNN
	1    3100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2100 1900 2000
Wire Wire Line
	1900 2000 2100 2000
Wire Wire Line
	2400 2000 2500 2000
Wire Wire Line
	3100 2000 3100 2100
Wire Wire Line
	3100 2400 3100 2500
Wire Wire Line
	5450 2100 5450 2000
Connection ~ 3100 2000
Wire Wire Line
	5450 2400 5450 2900
Wire Wire Line
	3100 2900 3100 2800
Wire Wire Line
	1900 2500 1900 2900
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5D6EDB0C
P 9750 3250
F 0 "J2" H 9856 3528 50  0000 C CNN
F 1 "I2C 5V" H 9856 3437 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9750 3250 50  0001 C CNN
F 3 "~" H 9750 3250 50  0001 C CNN
	1    9750 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 3550 8650 3550
Wire Wire Line
	8650 3550 8550 3550
Connection ~ 8650 3550
Wire Wire Line
	9550 3350 9350 3350
Wire Wire Line
	9350 3350 9350 3550
Wire Wire Line
	9350 3550 8750 3550
Connection ~ 8750 3550
$Comp
L power:GND #PWR0101
U 1 1 5D6EE1F4
P 8750 3550
F 0 "#PWR0101" H 8750 3300 50  0001 C CNN
F 1 "GND" H 8755 3377 50  0000 C CNN
F 2 "" H 8750 3550 50  0001 C CNN
F 3 "" H 8750 3550 50  0001 C CNN
	1    8750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3250 9550 3250
Wire Wire Line
	9150 3150 9550 3150
Wire Wire Line
	9550 3050 9500 3050
NoConn ~ 8750 1450
NoConn ~ 9150 2250
NoConn ~ 9150 1850
NoConn ~ 9150 2050
$Comp
L power:GND #PWR0104
U 1 1 5D6EEE9B
P 3100 2900
F 0 "#PWR0104" H 3100 2650 50  0001 C CNN
F 1 "GND" H 3105 2727 50  0000 C CNN
F 2 "" H 3100 2900 50  0001 C CNN
F 3 "" H 3100 2900 50  0001 C CNN
	1    3100 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5D6EEFC3
P 3500 1400
F 0 "J1" H 3527 1376 50  0000 L CNN
F 1 "Raw 12V" H 3527 1285 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 3500 1400 50  0001 C CNN
F 3 "~" H 3500 1400 50  0001 C CNN
	1    3500 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1400 3100 1400
Wire Wire Line
	3100 1400 3100 2000
Wire Wire Line
	3300 1500 3250 1500
Wire Wire Line
	3250 1500 3250 1600
$Comp
L power:GND #PWR0105
U 1 1 5D6EF579
P 3250 1600
F 0 "#PWR0105" H 3250 1350 50  0001 C CNN
F 1 "GND" H 3255 1427 50  0000 C CNN
F 2 "" H 3250 1600 50  0001 C CNN
F 3 "" H 3250 1600 50  0001 C CNN
	1    3250 1600
	1    0    0    -1  
$EndComp
NoConn ~ 9150 2550
NoConn ~ 9150 2650
NoConn ~ 9150 2750
NoConn ~ 9150 2850
NoConn ~ 9150 2950
NoConn ~ 8150 3050
NoConn ~ 8150 2950
NoConn ~ 8150 2850
NoConn ~ 8150 2750
NoConn ~ 8150 2650
NoConn ~ 8150 2550
NoConn ~ 8150 2450
NoConn ~ 8150 2350
NoConn ~ 8150 2250
NoConn ~ 8150 2150
NoConn ~ 8150 2050
NoConn ~ 8150 1950
NoConn ~ 8150 1850
NoConn ~ 8550 1450
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5D6FA7AD
P 5900 2000
F 0 "U1" H 5900 2242 50  0000 C CNN
F 1 "L7805" H 5900 2151 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 5925 1850 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5900 1950 50  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2300 5900 2900
Wire Wire Line
	6200 2000 6350 2000
Wire Wire Line
	6350 2000 6350 2200
Connection ~ 6350 2000
Wire Wire Line
	6350 2500 6350 2900
Text Notes 9850 3300 0    50   ~ 0
I2C en 5V\n(vers carte moteur\n/ sans adaptation de niveau)
Text Notes 3650 1400 0    50   ~ 0
12V batterie protégé\n(alim moteur)
Text Notes 6150 1550 0    50   ~ 0
5V régulé\n(alim électronique)
$Comp
L Device:C C2
U 1 1 5D70210B
P 5450 2250
F 0 "C2" H 5565 2296 50  0000 L CNN
F 1 "330n" H 5565 2205 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.3mm_P7.50mm_MKT" H 5488 2100 50  0001 C CNN
F 3 "~" H 5450 2250 50  0001 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D702191
P 6350 2350
F 0 "C3" H 6465 2396 50  0000 L CNN
F 1 "100n" H 6465 2305 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.3mm_P7.50mm_MKT" H 6388 2200 50  0001 C CNN
F 3 "~" H 6350 2350 50  0001 C CNN
	1    6350 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5D7022B7
P 4500 2400
F 0 "C1" H 4618 2446 50  0000 L CNN
F 1 "100u" H 4618 2355 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D10.0mm_H16.0mm_P5.00mm" H 4538 2250 50  0001 C CNN
F 3 "~" H 4500 2400 50  0001 C CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2550 4500 2900
Wire Wire Line
	4500 2250 4500 2000
Wire Wire Line
	6350 2000 6700 2000
Wire Wire Line
	6350 2900 6750 2900
Connection ~ 6350 2900
Wire Wire Line
	5600 2000 5450 2000
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5D70BC22
P 7100 2000
F 0 "J3" H 7127 1976 50  0000 L CNN
F 1 "5V supply A" H 7127 1885 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7100 2000 50  0001 C CNN
F 3 "~" H 7100 2000 50  0001 C CNN
	1    7100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2100 6750 2100
Wire Wire Line
	6750 2100 6750 2400
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D70FFBF
P 6750 2900
F 0 "#FLG0102" H 6750 2975 50  0001 C CNN
F 1 "PWR_FLAG" H 6750 3073 50  0000 C CNN
F 2 "" H 6750 2900 50  0001 C CNN
F 3 "~" H 6750 2900 50  0001 C CNN
	1    6750 2900
	-1   0    0    1   
$EndComp
Connection ~ 6750 2900
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5D710F72
P 7100 2300
F 0 "J4" H 7128 2276 50  0000 L CNN
F 1 "5V supply B" H 7128 2185 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7100 2300 50  0001 C CNN
F 3 "~" H 7100 2300 50  0001 C CNN
	1    7100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2300 6700 2300
Wire Wire Line
	6700 2300 6700 2000
Connection ~ 6700 2000
Wire Wire Line
	6900 2400 6750 2400
Connection ~ 6750 2400
Wire Wire Line
	6750 2400 6750 2900
Wire Wire Line
	6700 2000 6900 2000
Text GLabel 6450 1750 2    50   Input ~ 0
5V_regulated
Wire Wire Line
	6350 2000 6350 1750
Wire Wire Line
	6350 1750 6450 1750
Text GLabel 9550 2800 2    50   Input ~ 0
5V_regulated
Wire Wire Line
	9550 2800 9500 2800
Wire Wire Line
	9500 2800 9500 3050
Wire Wire Line
	8850 1350 9050 1350
Wire Wire Line
	8850 1450 8850 1350
Text GLabel 9050 1350 2    50   Input ~ 0
5V_regulated
$Comp
L Amplifier_Operational:LM741 U2
U 1 1 5D701D16
P 4350 3300
F 0 "U2" H 4691 3346 50  0000 L CNN
F 1 "LM741" H 4691 3255 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4400 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 4500 3450 50  0001 C CNN
	1    4350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D701EDA
P 1900 2900
F 0 "#PWR01" H 1900 2650 50  0001 C CNN
F 1 "GND" H 1905 2727 50  0000 C CNN
F 2 "" H 1900 2900 50  0001 C CNN
F 3 "" H 1900 2900 50  0001 C CNN
	1    1900 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D701FB1
P 4500 2900
F 0 "#PWR04" H 4500 2650 50  0001 C CNN
F 1 "GND" H 4505 2727 50  0000 C CNN
F 2 "" H 4500 2900 50  0001 C CNN
F 3 "" H 4500 2900 50  0001 C CNN
	1    4500 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D7020E2
P 5450 2900
F 0 "#PWR08" H 5450 2650 50  0001 C CNN
F 1 "GND" H 5455 2727 50  0000 C CNN
F 2 "" H 5450 2900 50  0001 C CNN
F 3 "" H 5450 2900 50  0001 C CNN
	1    5450 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D702143
P 5900 2900
F 0 "#PWR09" H 5900 2650 50  0001 C CNN
F 1 "GND" H 5905 2727 50  0000 C CNN
F 2 "" H 5900 2900 50  0001 C CNN
F 3 "" H 5900 2900 50  0001 C CNN
	1    5900 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D7021A4
P 6350 2900
F 0 "#PWR010" H 6350 2650 50  0001 C CNN
F 1 "GND" H 6355 2727 50  0000 C CNN
F 2 "" H 6350 2900 50  0001 C CNN
F 3 "" H 6350 2900 50  0001 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2000 3900 2000
Connection ~ 4500 2000
Wire Wire Line
	3900 3000 3900 2000
Connection ~ 3900 2000
Wire Wire Line
	3900 2000 4500 2000
$Comp
L power:GND #PWR03
U 1 1 5D70CEDD
P 4250 3600
F 0 "#PWR03" H 4250 3350 50  0001 C CNN
F 1 "GND" H 4255 3427 50  0000 C CNN
F 2 "" H 4250 3600 50  0001 C CNN
F 3 "" H 4250 3600 50  0001 C CNN
	1    4250 3600
	1    0    0    -1  
$EndComp
NoConn ~ 4350 3600
NoConn ~ 4450 3600
Text GLabel 4050 3200 0    50   Input ~ 0
5V_regulated
Wire Wire Line
	4250 3000 3900 3000
Wire Wire Line
	3900 3000 3350 3000
Wire Wire Line
	3350 3000 3350 3150
Connection ~ 3900 3000
$Comp
L Device:R R4
U 1 1 5D711BB9
P 3350 3300
F 0 "R4" H 3420 3346 50  0000 L CNN
F 1 "47k" H 3420 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 3300 50  0001 C CNN
F 3 "~" H 3350 3300 50  0001 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D711C6B
P 3350 3700
F 0 "R5" H 3420 3746 50  0000 L CNN
F 1 "47k" H 3420 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 3700 50  0001 C CNN
F 3 "~" H 3350 3700 50  0001 C CNN
	1    3350 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D711CFE
P 3350 3850
F 0 "#PWR02" H 3350 3600 50  0001 C CNN
F 1 "GND" H 3355 3677 50  0000 C CNN
F 2 "" H 3350 3850 50  0001 C CNN
F 3 "" H 3350 3850 50  0001 C CNN
	1    3350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3550 3350 3500
Wire Wire Line
	3350 3500 3800 3500
Wire Wire Line
	3800 3500 3800 3400
Wire Wire Line
	3800 3400 4050 3400
Connection ~ 3350 3500
Wire Wire Line
	3350 3500 3350 3450
Wire Wire Line
	4650 3300 5000 3300
$Comp
L Device:R R6
U 1 1 5D715633
P 5150 3300
F 0 "R6" V 5357 3300 50  0000 C CNN
F 1 "1k" V 5266 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5080 3300 50  0001 C CNN
F 3 "~" H 5150 3300 50  0001 C CNN
	1    5150 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5D7157A5
P 5400 3500
F 0 "D4" V 5438 3383 50  0000 R CNN
F 1 "Low battery (red)" V 5347 3383 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5400 3500 50  0001 C CNN
F 3 "~" H 5400 3500 50  0001 C CNN
	1    5400 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D7158A6
P 5400 3650
F 0 "#PWR07" H 5400 3400 50  0001 C CNN
F 1 "GND" H 5405 3477 50  0000 C CNN
F 2 "" H 5400 3650 50  0001 C CNN
F 3 "" H 5400 3650 50  0001 C CNN
	1    5400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3350 5400 3300
Wire Wire Line
	5400 3300 5300 3300
NoConn ~ 9150 2450
NoConn ~ 8150 3150
Connection ~ 5450 2000
Wire Wire Line
	2800 2000 3100 2000
Wire Wire Line
	4950 2000 5450 2000
Wire Wire Line
	4500 2000 4950 2000
Connection ~ 4950 2000
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5D70B929
P 4950 2000
F 0 "#FLG0103" H 4950 2075 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 2174 50  0000 C CNN
F 2 "" H 4950 2000 50  0001 C CNN
F 3 "~" H 4950 2000 50  0001 C CNN
	1    4950 2000
	1    0    0    -1  
$EndComp
$EndSCHEMATC