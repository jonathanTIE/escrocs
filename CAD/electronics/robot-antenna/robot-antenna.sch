EESchema Schematic File Version 4
LIBS:robot-antenna-cache
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
L Connector:Conn_Coaxial J2
U 1 1 5E31D99C
P 2900 1150
F 0 "J2" H 2999 1126 50  0000 L CNN
F 1 "Conn_Coaxial" H 2999 1035 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Samtec_SMA-J-P-H-ST-EM1_EdgeMount" H 2900 1150 50  0001 C CNN
F 3 " ~" H 2900 1150 50  0001 C CNN
	1    2900 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 5E31DAEE
P 2050 1150
F 0 "J1" H 2156 1328 50  0000 C CNN
F 1 "Conn_01x01_Male" H 2156 1237 50  0000 C CNN
F 2 "Connector_Pin:Pin_D1.4mm_L8.5mm_W2.8mm_FlatFork" H 2050 1150 50  0001 C CNN
F 3 "~" H 2050 1150 50  0001 C CNN
	1    2050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1150 2250 1150
$Comp
L power:GND #PWR01
U 1 1 5E31DB9B
P 2900 1350
F 0 "#PWR01" H 2900 1100 50  0001 C CNN
F 1 "GND" H 2905 1177 50  0000 C CNN
F 2 "" H 2900 1350 50  0001 C CNN
F 3 "" H 2900 1350 50  0001 C CNN
	1    2900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E31DC17
P 2600 1350
F 0 "#FLG0101" H 2600 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 1523 50  0000 C CNN
F 2 "" H 2600 1350 50  0001 C CNN
F 3 "~" H 2600 1350 50  0001 C CNN
	1    2600 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 1350 2900 1350
Connection ~ 2900 1350
$EndSCHEMATC
