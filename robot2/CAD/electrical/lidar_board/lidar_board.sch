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
L Connector_Generic:Conn_02x06_Odd_Even J5
U 1 1 618D6153
P 9850 1350
F 0 "J5" H 9900 1767 50  0000 C CNN
F 1 "Lidar connector" H 9900 1676 50  0000 C CNN
F 2 "custom:Roborock lidar connector" H 9850 1350 50  0001 C CNN
F 3 "~" H 9850 1350 50  0001 C CNN
	1    9850 1350
	1    0    0    -1  
$EndComp
NoConn ~ 9650 1650
NoConn ~ 10150 1650
Wire Wire Line
	10700 1550 10700 1450
Wire Wire Line
	9650 1550 9050 1550
Wire Wire Line
	9050 1550 9050 1450
$Comp
L power:+3V3 #PWR030
U 1 1 618D718E
P 10700 1450
F 0 "#PWR030" H 10700 1300 50  0001 C CNN
F 1 "+3V3" H 10715 1623 50  0000 C CNN
F 2 "" H 10700 1450 50  0001 C CNN
F 3 "" H 10700 1450 50  0001 C CNN
	1    10700 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR027
U 1 1 618D7949
P 9050 1450
F 0 "#PWR027" H 9050 1300 50  0001 C CNN
F 1 "+3V3" H 9065 1623 50  0000 C CNN
F 2 "" H 9050 1450 50  0001 C CNN
F 3 "" H 9050 1450 50  0001 C CNN
	1    9050 1450
	1    0    0    -1  
$EndComp
Text Label 9300 1450 0    50   ~ 0
LDS_TX
Text Label 10500 1450 2    50   ~ 0
LDS_TX
Wire Wire Line
	10150 1450 10500 1450
Wire Wire Line
	9650 1450 9300 1450
Wire Wire Line
	10150 1350 10500 1350
Wire Wire Line
	10150 1150 10500 1150
Wire Wire Line
	9650 1350 9300 1350
Wire Wire Line
	9650 1150 9300 1150
Text Label 9300 1350 0    50   ~ 0
MOT-
Text Label 10500 1350 2    50   ~ 0
MOT-
Text Label 9300 1150 0    50   ~ 0
MOT+
Text Label 10500 1150 2    50   ~ 0
MOT+
Wire Wire Line
	9650 1250 9200 1250
Wire Wire Line
	9200 1250 9200 1650
Wire Wire Line
	10150 1250 10600 1250
Wire Wire Line
	10600 1250 10600 1650
Wire Wire Line
	10150 1550 10700 1550
$Comp
L power:GND #PWR029
U 1 1 618DD0A8
P 10600 1650
F 0 "#PWR029" H 10600 1400 50  0001 C CNN
F 1 "GND" H 10605 1477 50  0000 C CNN
F 2 "" H 10600 1650 50  0001 C CNN
F 3 "" H 10600 1650 50  0001 C CNN
	1    10600 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 618DD5AE
P 9200 1650
F 0 "#PWR028" H 9200 1400 50  0001 C CNN
F 1 "GND" H 9205 1477 50  0000 C CNN
F 2 "" H 9200 1650 50  0001 C CNN
F 3 "" H 9200 1650 50  0001 C CNN
	1    9200 1650
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32 U4
U 1 1 618DF7AE
P 5850 4050
F 0 "U4" H 5400 5400 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 6350 5400 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 5850 2550 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 5550 4100 50  0001 C CNN
	1    5850 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 618E3920
P 5850 5450
F 0 "#PWR022" H 5850 5200 50  0001 C CNN
F 1 "GND" H 5855 5277 50  0000 C CNN
F 2 "" H 5850 5450 50  0001 C CNN
F 3 "" H 5850 5450 50  0001 C CNN
	1    5850 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR021
U 1 1 618E55C9
P 5850 2650
F 0 "#PWR021" H 5850 2500 50  0001 C CNN
F 1 "+3V3" H 5865 2823 50  0000 C CNN
F 2 "" H 5850 2650 50  0001 C CNN
F 3 "" H 5850 2650 50  0001 C CNN
	1    5850 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 618E6571
P 3550 4550
F 0 "J3" H 3658 4831 50  0000 C CNN
F 1 "I2C bus" H 3658 4740 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 3550 4550 50  0001 C CNN
F 3 "~" H 3550 4550 50  0001 C CNN
	1    3550 4550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 618EADBA
P 1600 2650
F 0 "J2" H 1708 2931 50  0000 C CNN
F 1 "UART" H 1708 2840 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1600 2650 50  0001 C CNN
F 3 "~" H 1600 2650 50  0001 C CNN
	1    1600 2650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LM2576HVS-5 U1
U 1 1 618EE50B
P 1800 1050
F 0 "U1" H 1800 1417 50  0000 C CNN
F 1 "LM2576HVS-5" H 1800 1326 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 1800 800 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2576.pdf" H 1800 1050 50  0001 C CNN
	1    1800 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 618EFE92
P 2400 1300
F 0 "D1" V 2354 1380 50  0000 L CNN
F 1 "SS54" V 2445 1380 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 2400 1300 50  0001 C CNN
F 3 "~" H 2400 1300 50  0001 C CNN
	1    2400 1300
	0    1    1    0   
$EndComp
$Comp
L Device:L L1
U 1 1 618F098A
P 2650 1150
F 0 "L1" V 2600 1150 50  0000 C CNN
F 1 "100u" V 2749 1150 50  0000 C CNN
F 2 "Inductor_SMD:L_12x12mm_H6mm" H 2650 1150 50  0001 C CNN
F 3 "~" H 2650 1150 50  0001 C CNN
	1    2650 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 1150 2400 1150
Wire Wire Line
	2400 1150 2300 1150
Connection ~ 2400 1150
$Comp
L Device:CP C1
U 1 1 618F2216
P 2900 1300
F 0 "C1" H 3018 1346 50  0000 L CNN
F 1 "10u" H 3018 1255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2938 1150 50  0001 C CNN
F 3 "~" H 2900 1300 50  0001 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 618F293F
P 3350 1100
F 0 "R2" H 3420 1146 50  0000 L CNN
F 1 "100" H 3420 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3280 1100 50  0001 C CNN
F 3 "~" H 3350 1100 50  0001 C CNN
	1    3350 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 618FB78A
P 3350 1400
F 0 "D2" V 3389 1282 50  0000 R CNN
F 1 "PWR" V 3298 1282 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3350 1400 50  0001 C CNN
F 3 "~" H 3350 1400 50  0001 C CNN
	1    3350 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 950  2900 950 
Wire Wire Line
	2800 1150 2900 1150
Wire Wire Line
	2900 1150 2900 950 
Connection ~ 2900 1150
Connection ~ 2900 950 
Wire Wire Line
	2900 950  3350 950 
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 619024DB
P 800 950
F 0 "J1" H 908 1131 50  0000 C CNN
F 1 "12V in" H 908 1040 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 800 950 50  0001 C CNN
F 3 "~" H 800 950 50  0001 C CNN
	1    800  950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 950  1200 950 
$Comp
L power:GND #PWR01
U 1 1 61903420
P 1000 1050
F 0 "#PWR01" H 1000 800 50  0001 C CNN
F 1 "GND" H 1005 877 50  0000 C CNN
F 2 "" H 1000 1050 50  0001 C CNN
F 3 "" H 1000 1050 50  0001 C CNN
	1    1000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61903BDC
P 1800 1350
F 0 "#PWR04" H 1800 1100 50  0001 C CNN
F 1 "GND" H 1805 1177 50  0000 C CNN
F 2 "" H 1800 1350 50  0001 C CNN
F 3 "" H 1800 1350 50  0001 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61904189
P 1300 1150
F 0 "#PWR03" H 1300 900 50  0001 C CNN
F 1 "GND" H 1305 977 50  0000 C CNN
F 2 "" H 1300 1150 50  0001 C CNN
F 3 "" H 1300 1150 50  0001 C CNN
	1    1300 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 619047B0
P 2400 1450
F 0 "#PWR08" H 2400 1200 50  0001 C CNN
F 1 "GND" H 2405 1277 50  0000 C CNN
F 2 "" H 2400 1450 50  0001 C CNN
F 3 "" H 2400 1450 50  0001 C CNN
	1    2400 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6190532B
P 2900 1450
F 0 "#PWR011" H 2900 1200 50  0001 C CNN
F 1 "GND" H 2905 1277 50  0000 C CNN
F 2 "" H 2900 1450 50  0001 C CNN
F 3 "" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6190591E
P 3350 1550
F 0 "#PWR012" H 3350 1300 50  0001 C CNN
F 1 "GND" H 3355 1377 50  0000 C CNN
F 2 "" H 3350 1550 50  0001 C CNN
F 3 "" H 3350 1550 50  0001 C CNN
	1    3350 1550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 61906E2F
P 3850 950
F 0 "U3" H 3850 1192 50  0000 C CNN
F 1 "AMS1117-3.3" H 3850 1101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3850 1150 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3950 700 50  0001 C CNN
	1    3850 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 950  3550 950 
Connection ~ 3350 950 
$Comp
L power:GND #PWR015
U 1 1 61909310
P 3850 1250
F 0 "#PWR015" H 3850 1000 50  0001 C CNN
F 1 "GND" H 3855 1077 50  0000 C CNN
F 2 "" H 3850 1250 50  0001 C CNN
F 3 "" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 61909C63
P 4250 1100
F 0 "C2" H 4368 1146 50  0000 L CNN
F 1 "10u" H 4368 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4288 950 50  0001 C CNN
F 3 "~" H 4250 1100 50  0001 C CNN
	1    4250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6190A902
P 4600 1100
F 0 "C3" H 4715 1146 50  0000 L CNN
F 1 "100n" H 4715 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4638 950 50  0001 C CNN
F 3 "~" H 4600 1100 50  0001 C CNN
	1    4600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 950  4250 950 
Wire Wire Line
	4600 950  4450 950 
Connection ~ 4250 950 
$Comp
L power:GND #PWR016
U 1 1 6190BD81
P 4250 1250
F 0 "#PWR016" H 4250 1000 50  0001 C CNN
F 1 "GND" H 4255 1077 50  0000 C CNN
F 2 "" H 4250 1250 50  0001 C CNN
F 3 "" H 4250 1250 50  0001 C CNN
	1    4250 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 6190C5A3
P 4600 1250
F 0 "#PWR018" H 4600 1000 50  0001 C CNN
F 1 "GND" H 4605 1077 50  0000 C CNN
F 2 "" H 4600 1250 50  0001 C CNN
F 3 "" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR017
U 1 1 6190D38A
P 4450 950
F 0 "#PWR017" H 4450 800 50  0001 C CNN
F 1 "+3V3" H 4465 1123 50  0000 C CNN
F 2 "" H 4450 950 50  0001 C CNN
F 3 "" H 4450 950 50  0001 C CNN
	1    4450 950 
	1    0    0    -1  
$EndComp
Connection ~ 4450 950 
Wire Wire Line
	4450 950  4250 950 
Wire Wire Line
	8000 1050 8350 1050
Text Label 8350 1050 2    50   ~ 0
MOT+
Wire Wire Line
	8000 1450 8350 1450
Text Label 8350 1450 2    50   ~ 0
MOT-
$Comp
L Transistor_FET:AO3400A Q1
U 1 1 6192F376
P 7900 1650
F 0 "Q1" H 8105 1696 50  0000 L CNN
F 1 "AO3400A" H 8105 1605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8100 1575 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 7900 1650 50  0001 L CNN
	1    7900 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 6194B1CB
P 8000 1250
F 0 "D4" V 7954 1330 50  0000 L CNN
F 1 "SS54" V 8045 1330 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 8000 1250 50  0001 C CNN
F 3 "~" H 8000 1250 50  0001 C CNN
	1    8000 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 1400 8000 1450
Connection ~ 8000 1450
Wire Wire Line
	8000 1100 8000 1050
$Comp
L power:+12V #PWR02
U 1 1 61956313
P 1200 950
F 0 "#PWR02" H 1200 800 50  0001 C CNN
F 1 "+12V" H 1215 1123 50  0000 C CNN
F 2 "" H 1200 950 50  0001 C CNN
F 3 "" H 1200 950 50  0001 C CNN
	1    1200 950 
	1    0    0    -1  
$EndComp
Connection ~ 1200 950 
Wire Wire Line
	1200 950  1300 950 
$Comp
L power:+12V #PWR025
U 1 1 61959A96
P 8000 1000
F 0 "#PWR025" H 8000 850 50  0001 C CNN
F 1 "+12V" H 8015 1173 50  0000 C CNN
F 2 "" H 8000 1000 50  0001 C CNN
F 3 "" H 8000 1000 50  0001 C CNN
	1    8000 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 6195EFEC
P 8000 1850
F 0 "#PWR026" H 8000 1600 50  0001 C CNN
F 1 "GND" H 8005 1677 50  0000 C CNN
F 2 "" H 8000 1850 50  0001 C CNN
F 3 "" H 8000 1850 50  0001 C CNN
	1    8000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1000 8000 1050
Connection ~ 8000 1050
$Comp
L Device:R R5
U 1 1 61964AFB
P 7550 1650
F 0 "R5" V 7343 1650 50  0000 C CNN
F 1 "470" V 7434 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7480 1650 50  0001 C CNN
F 3 "~" H 7550 1650 50  0001 C CNN
	1    7550 1650
	0    1    1    0   
$EndComp
Text Label 7050 1650 0    50   ~ 0
MOT_PWM
Wire Wire Line
	7050 1650 7400 1650
Text Label 6800 3250 2    50   ~ 0
MOT_PWM
Wire Wire Line
	6800 3250 6450 3250
Text Label 6800 3850 2    50   ~ 0
LDS_TX
Wire Wire Line
	6450 3850 6800 3850
NoConn ~ 3350 4450
NoConn ~ 1800 2550
$Comp
L power:GND #PWR05
U 1 1 61984BD6
P 1800 2850
F 0 "#PWR05" H 1800 2600 50  0001 C CNN
F 1 "GND" H 1805 2677 50  0000 C CNN
F 2 "" H 1800 2850 50  0001 C CNN
F 3 "" H 1800 2850 50  0001 C CNN
	1    1800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 61985181
P 3350 4750
F 0 "#PWR013" H 3350 4500 50  0001 C CNN
F 1 "GND" H 3355 4577 50  0000 C CNN
F 2 "" H 3350 4750 50  0001 C CNN
F 3 "" H 3350 4750 50  0001 C CNN
	1    3350 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1800 2650 2250 2650
Wire Wire Line
	1800 2750 2250 2750
Text Label 2250 2650 2    50   ~ 0
UART_MISO
Text Label 2250 2750 2    50   ~ 0
UART_MOSI
$Comp
L Interface:PCA9306DC1 U2
U 1 1 619ACB66
P 2250 4950
F 0 "U2" H 2000 4500 50  0000 C CNN
F 1 "PCA9306DC1" H 2550 4500 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_2.3x2mm_P0.5mm" H 2250 4500 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9306.pdf" H 1950 5400 50  0001 C CNN
	1    2250 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 619B4ADD
P 2900 950
F 0 "#PWR010" H 2900 800 50  0001 C CNN
F 1 "+5V" H 2915 1123 50  0000 C CNN
F 2 "" H 2900 950 50  0001 C CNN
F 3 "" H 2900 950 50  0001 C CNN
	1    2900 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 619B7B34
P 2700 4250
F 0 "R1" H 2770 4296 50  0000 L CNN
F 1 "100k" H 2770 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2630 4250 50  0001 C CNN
F 3 "~" H 2700 4250 50  0001 C CNN
	1    2700 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 619C059E
P 2700 4100
F 0 "#PWR09" H 2700 3950 50  0001 C CNN
F 1 "+5V" H 2715 4273 50  0000 C CNN
F 2 "" H 2700 4100 50  0001 C CNN
F 3 "" H 2700 4100 50  0001 C CNN
	1    2700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4450 2350 4400
Wire Wire Line
	2350 4400 2700 4400
Wire Wire Line
	2650 4850 2700 4850
Wire Wire Line
	2700 4850 2700 4400
Connection ~ 2700 4400
$Comp
L power:+3V3 #PWR06
U 1 1 619C3808
P 2150 4450
F 0 "#PWR06" H 2150 4300 50  0001 C CNN
F 1 "+3V3" H 2165 4623 50  0000 C CNN
F 2 "" H 2150 4450 50  0001 C CNN
F 3 "" H 2150 4450 50  0001 C CNN
	1    2150 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 619C550E
P 2250 5450
F 0 "#PWR07" H 2250 5200 50  0001 C CNN
F 1 "GND" H 2255 5277 50  0000 C CNN
F 2 "" H 2250 5450 50  0001 C CNN
F 3 "" H 2250 5450 50  0001 C CNN
	1    2250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4950 1400 4950
Wire Wire Line
	1850 5050 1400 5050
Text Label 1400 4950 0    50   ~ 0
I2C_SCL
Text Label 1400 5050 0    50   ~ 0
I2C_SDA
Wire Wire Line
	6450 4850 6900 4850
Wire Wire Line
	6450 4950 6900 4950
Text Label 6900 4850 2    50   ~ 0
I2C_SCL
Text Label 6900 4950 2    50   ~ 0
I2C_SDA
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 619D0D0C
P 3550 5300
F 0 "J4" H 3658 5581 50  0000 C CNN
F 1 "I2C bus" H 3658 5490 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 3550 5300 50  0001 C CNN
F 3 "~" H 3550 5300 50  0001 C CNN
	1    3550 5300
	-1   0    0    -1  
$EndComp
NoConn ~ 3350 5200
$Comp
L power:GND #PWR014
U 1 1 619D0D13
P 3350 5500
F 0 "#PWR014" H 3350 5250 50  0001 C CNN
F 1 "GND" H 3355 5327 50  0000 C CNN
F 2 "" H 3350 5500 50  0001 C CNN
F 3 "" H 3350 5500 50  0001 C CNN
	1    3350 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 5400 3250 5400
Wire Wire Line
	3250 5400 3250 4950
Wire Wire Line
	3250 4650 3350 4650
Wire Wire Line
	2650 4950 3250 4950
Connection ~ 3250 4950
Wire Wire Line
	3250 4950 3250 4650
Wire Wire Line
	3350 5300 3150 5300
Wire Wire Line
	3150 5300 3150 5050
Wire Wire Line
	3150 4550 3350 4550
Wire Wire Line
	2650 5050 3150 5050
Connection ~ 3150 5050
Wire Wire Line
	3150 5050 3150 4550
$Comp
L Switch:SW_Push SW2
U 1 1 61A03E8F
P 7300 3050
F 0 "SW2" V 7254 3198 50  0000 L CNN
F 1 "Boot" V 7345 3198 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7300 3250 50  0001 C CNN
F 3 "~" H 7300 3250 50  0001 C CNN
	1    7300 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 2850 7300 2850
$Comp
L power:GND #PWR024
U 1 1 61A1520A
P 7300 3250
F 0 "#PWR024" H 7300 3000 50  0001 C CNN
F 1 "GND" H 7305 3077 50  0000 C CNN
F 2 "" H 7300 3250 50  0001 C CNN
F 3 "" H 7300 3250 50  0001 C CNN
	1    7300 3250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 61A18DDB
P 4750 3050
F 0 "SW1" V 4704 3002 50  0000 R CNN
F 1 "Reset" V 4795 3002 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4750 3250 50  0001 C CNN
F 3 "~" H 4750 3250 50  0001 C CNN
	1    4750 3050
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 61A18DE1
P 4750 3250
F 0 "#PWR020" H 4750 3000 50  0001 C CNN
F 1 "GND" H 4755 3077 50  0000 C CNN
F 2 "" H 4750 3250 50  0001 C CNN
F 3 "" H 4750 3250 50  0001 C CNN
	1    4750 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5250 2850 4750 2850
$Comp
L Device:R R3
U 1 1 61A268EB
P 4750 2700
F 0 "R3" H 4820 2746 50  0000 L CNN
F 1 "10k" H 4820 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4680 2700 50  0001 C CNN
F 3 "~" H 4750 2700 50  0001 C CNN
	1    4750 2700
	1    0    0    -1  
$EndComp
Connection ~ 4750 2850
$Comp
L power:+3V3 #PWR019
U 1 1 61A29417
P 4750 2550
F 0 "#PWR019" H 4750 2400 50  0001 C CNN
F 1 "+3V3" H 4765 2723 50  0000 C CNN
F 2 "" H 4750 2550 50  0001 C CNN
F 3 "" H 4750 2550 50  0001 C CNN
	1    4750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2950 6900 2950
Wire Wire Line
	6450 3150 6900 3150
Text Label 6900 2950 2    50   ~ 0
UART_MISO
Text Label 6900 3150 2    50   ~ 0
UART_MOSI
$Comp
L Device:R R4
U 1 1 61A4F816
P 7100 3300
F 0 "R4" H 7170 3346 50  0000 L CNN
F 1 "100" H 7170 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7030 3300 50  0001 C CNN
F 3 "~" H 7100 3300 50  0001 C CNN
	1    7100 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61A4F81C
P 7100 3600
F 0 "D3" V 7139 3482 50  0000 R CNN
F 1 "Status" V 7048 3482 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7100 3600 50  0001 C CNN
F 3 "~" H 7100 3600 50  0001 C CNN
	1    7100 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 61A4F822
P 7100 3750
F 0 "#PWR023" H 7100 3500 50  0001 C CNN
F 1 "GND" H 7105 3577 50  0000 C CNN
F 2 "" H 7100 3750 50  0001 C CNN
F 3 "" H 7100 3750 50  0001 C CNN
	1    7100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3050 7100 3050
Wire Wire Line
	7100 3050 7100 3150
NoConn ~ 5250 3050
NoConn ~ 5250 3150
NoConn ~ 5250 4050
NoConn ~ 5250 4150
NoConn ~ 5250 4250
NoConn ~ 5250 4350
NoConn ~ 5250 4450
NoConn ~ 5250 4550
NoConn ~ 6450 5150
NoConn ~ 6450 5050
NoConn ~ 6450 4750
NoConn ~ 6450 4650
NoConn ~ 6450 4550
NoConn ~ 6450 4450
NoConn ~ 6450 4150
NoConn ~ 6450 4050
NoConn ~ 6450 3950
NoConn ~ 6450 3750
NoConn ~ 6450 3650
NoConn ~ 6450 3450
NoConn ~ 6450 3350
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61AE50F0
P 1300 1800
F 0 "#FLG0101" H 1300 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 1973 50  0000 C CNN
F 2 "" H 1300 1800 50  0001 C CNN
F 3 "~" H 1300 1800 50  0001 C CNN
	1    1300 1800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61AE6E9E
P 900 1800
F 0 "#FLG0102" H 900 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1973 50  0000 C CNN
F 2 "" H 900 1800 50  0001 C CNN
F 3 "~" H 900 1800 50  0001 C CNN
	1    900  1800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61AE7E7A
P 1300 1800
F 0 "#PWR0101" H 1300 1550 50  0001 C CNN
F 1 "GND" H 1305 1627 50  0000 C CNN
F 2 "" H 1300 1800 50  0001 C CNN
F 3 "" H 1300 1800 50  0001 C CNN
	1    1300 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 61AE8E30
P 900 1800
F 0 "#PWR0102" H 900 1650 50  0001 C CNN
F 1 "+12V" H 915 1973 50  0000 C CNN
F 2 "" H 900 1800 50  0001 C CNN
F 3 "" H 900 1800 50  0001 C CNN
	1    900  1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 61AF994B
P 1650 1800
F 0 "#PWR0103" H 1650 1650 50  0001 C CNN
F 1 "+5V" H 1665 1973 50  0000 C CNN
F 2 "" H 1650 1800 50  0001 C CNN
F 3 "" H 1650 1800 50  0001 C CNN
	1    1650 1800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61AFC384
P 1650 1800
F 0 "#FLG0103" H 1650 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 1973 50  0000 C CNN
F 2 "" H 1650 1800 50  0001 C CNN
F 3 "~" H 1650 1800 50  0001 C CNN
	1    1650 1800
	-1   0    0    1   
$EndComp
NoConn ~ 6450 3550
NoConn ~ 6450 4250
NoConn ~ 6450 4350
$EndSCHEMATC
