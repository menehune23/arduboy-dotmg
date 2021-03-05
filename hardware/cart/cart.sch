EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Arduboy CE Cart"
Date "2021-03-04"
Rev "1.0-dev1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x14_Male J1
U 1 1 60066C03
P 5350 5400
F 0 "J1" V 5277 5328 50  0000 C CNN
F 1 "Front Edge" V 5186 5328 50  0000 C CNN
F 2 "cart:CARD_CONNECTOR_14_POS" H 5350 5400 50  0001 C CNN
F 3 "~" H 5350 5400 50  0001 C CNN
	1    5350 5400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x14_Male J2
U 1 1 6006BB41
P 5450 2500
F 0 "J2" V 5285 2428 50  0000 C CNN
F 1 "Back Edge" V 5376 2428 50  0000 C CNN
F 2 "cart:CARD_CONNECTOR_14_POS" H 5450 2500 50  0001 C CNN
F 3 "~" H 5450 2500 50  0001 C CNN
	1    5450 2500
	0    1    1    0   
$EndComp
$Comp
L cart:PRO_MICRO U1
U 1 1 600649CE
P 5600 3950
F 0 "U1" V 5700 4200 60  0000 R CNN
F 1 "Pro Micro" V 5550 4350 60  0000 R CNN
F 2 "cart:PRO_MICRO" H 5600 4881 60  0001 C CNN
F 3 "" H 5700 2900 60  0000 C CNN
	1    5600 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 4650 4750 4650
Wire Wire Line
	4750 4650 4750 5200
Wire Wire Line
	4950 4650 4950 4700
Wire Wire Line
	4950 4700 4850 4700
Wire Wire Line
	4850 4700 4850 5200
Wire Wire Line
	5250 4750 5250 4650
Wire Wire Line
	5350 4800 5350 4650
Wire Wire Line
	5450 4850 5450 4650
Wire Wire Line
	5650 4650 5650 4950
Wire Wire Line
	5750 5000 5750 4650
NoConn ~ 5050 5200
NoConn ~ 5050 2700
Wire Wire Line
	5550 4650 5550 4900
Wire Wire Line
	5650 4950 5550 4950
Wire Wire Line
	5750 5000 5650 5000
Wire Wire Line
	5850 5050 5750 5050
Wire Wire Line
	5850 4650 5850 5050
Wire Wire Line
	5950 4650 5950 5100
NoConn ~ 5950 5200
NoConn ~ 6050 5200
Wire Wire Line
	5950 3250 6050 3250
Wire Wire Line
	6050 3250 6050 2700
Wire Wire Line
	5850 3250 5850 3200
Wire Wire Line
	5850 3200 5950 3200
Wire Wire Line
	5950 3200 5950 2700
Wire Wire Line
	5750 3250 5750 3150
Wire Wire Line
	5750 3150 5850 3150
Wire Wire Line
	5850 3150 5850 2700
Wire Wire Line
	5750 2700 5750 3100
Wire Wire Line
	5750 3100 5650 3100
Wire Wire Line
	5650 3100 5650 3250
Wire Wire Line
	5650 2700 5650 3050
Wire Wire Line
	5650 3050 5550 3050
Wire Wire Line
	5550 3050 5550 3250
Wire Wire Line
	5550 2700 5550 3000
Wire Wire Line
	5550 3000 5450 3000
Wire Wire Line
	5450 3000 5450 3250
Wire Wire Line
	5350 3250 5350 2950
Wire Wire Line
	5350 2950 5450 2950
Wire Wire Line
	5450 2950 5450 2700
Wire Wire Line
	5250 3250 5250 2900
Wire Wire Line
	5250 2900 5350 2900
Wire Wire Line
	5350 2900 5350 2700
Wire Wire Line
	5150 3250 5150 2850
Wire Wire Line
	5150 2850 5250 2850
Wire Wire Line
	5250 2850 5250 2700
Wire Wire Line
	5050 3250 5050 2800
Wire Wire Line
	5050 2800 5150 2800
Wire Wire Line
	5150 2800 5150 2700
Wire Wire Line
	5850 5100 5850 5200
Wire Wire Line
	5850 5100 5950 5100
Wire Wire Line
	5750 5200 5750 5050
Wire Wire Line
	5650 5200 5650 5000
Wire Wire Line
	5550 5200 5550 4950
Wire Wire Line
	5450 5200 5450 4900
Wire Wire Line
	5450 4900 5550 4900
Wire Wire Line
	5350 5200 5350 4850
Wire Wire Line
	5350 4850 5450 4850
Wire Wire Line
	5350 4800 5250 4800
Wire Wire Line
	5250 4800 5250 5200
Wire Wire Line
	5250 4750 5150 4750
Wire Wire Line
	5150 4750 5150 5200
Wire Wire Line
	5050 4650 5050 4750
Wire Wire Line
	5050 4750 4950 4750
Wire Wire Line
	4950 4750 4950 5200
Wire Wire Line
	5150 4650 5050 4650
Connection ~ 5050 4650
$Comp
L power:GND #PWR?
U 1 1 601170E5
P 4950 5500
F 0 "#PWR?" H 4950 5250 50  0001 C CNN
F 1 "GND" H 4955 5327 50  0000 C CNN
F 2 "" H 4950 5500 50  0001 C CNN
F 3 "" H 4950 5500 50  0001 C CNN
	1    4950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5500 4950 5200
Connection ~ 4950 5200
$Comp
L power:GND #PWR?
U 1 1 6011901A
P 4500 3150
F 0 "#PWR?" H 4500 2900 50  0001 C CNN
F 1 "GND" H 4505 2977 50  0000 C CNN
F 2 "" H 4500 3150 50  0001 C CNN
F 3 "" H 4500 3150 50  0001 C CNN
	1    4500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3150 4950 3150
Wire Wire Line
	4950 3150 4950 3250
Wire Wire Line
	4950 2700 4950 2800
Wire Wire Line
	4950 2800 4850 2800
Wire Wire Line
	4850 2800 4850 3250
NoConn ~ 4850 2700
NoConn ~ 4750 2700
$EndSCHEMATC
