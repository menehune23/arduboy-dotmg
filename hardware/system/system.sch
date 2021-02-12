EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Arduboy CE"
Date "2021-02-12"
Rev "1.0-dev2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 600983FD
P 5650 4200
F 0 "#PWR0101" H 5650 3950 50  0001 C CNN
F 1 "GND" H 5700 4050 50  0000 C CNN
F 2 "" H 5650 4200 50  0001 C CNN
F 3 "" H 5650 4200 50  0001 C CNN
	1    5650 4200
	1    0    0    -1  
$EndComp
Text Notes 5450 4100 3    39   ~ 0
TXO
Text Notes 5550 4100 3    39   ~ 0
RXI
Wire Wire Line
	6350 4550 6850 4550
Wire Wire Line
	6450 4950 6850 4950
$Comp
L power:GND #PWR0102
U 1 1 600A666F
P 7500 5000
F 0 "#PWR0102" H 7500 4750 50  0001 C CNN
F 1 "GND" H 7505 4827 50  0000 C CNN
F 2 "" H 7500 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 600AB139
P 7050 4550
F 0 "SW3" H 7000 4450 50  0000 C CNN
F 1 "A" H 7150 4450 50  0000 C CNN
F 2 "system:SW_PUSH_6mm" H 7050 4750 50  0001 C CNN
F 3 "~" H 7050 4750 50  0001 C CNN
	1    7050 4550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 600ABC04
P 7050 4950
F 0 "SW4" H 7000 4850 50  0000 C CNN
F 1 "B" H 7150 4850 50  0000 C CNN
F 2 "system:SW_PUSH_6mm" H 7050 5150 50  0001 C CNN
F 3 "~" H 7050 5150 50  0001 C CNN
	1    7050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4550 7500 4550
Wire Wire Line
	7500 4950 7250 4950
$Comp
L Switch:SW_Push SW5
U 1 1 600B0A58
P 5000 1650
F 0 "SW5" H 5100 1550 50  0000 C CNN
F 1 "UP" H 4900 1550 50  0000 C CNN
F 2 "system:SW_PUSH_6mm" H 5000 1850 50  0001 C CNN
F 3 "~" H 5000 1850 50  0001 C CNN
	1    5000 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 1650 6350 1650
Wire Wire Line
	6350 1650 6350 3600
$Comp
L Switch:SW_Push SW7
U 1 1 600B32BE
P 5000 2450
F 0 "SW7" H 5100 2350 50  0000 C CNN
F 1 "LF" H 4900 2350 50  0000 C CNN
F 2 "system:SW_PUSH_6mm" H 5000 2650 50  0001 C CNN
F 3 "~" H 5000 2650 50  0001 C CNN
	1    5000 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 3600 6050 2050
$Comp
L power:GND #PWR0103
U 1 1 600BCEE4
P 4300 2900
F 0 "#PWR0103" H 4300 2650 50  0001 C CNN
F 1 "GND" H 4305 2727 50  0000 C CNN
F 2 "" H 4300 2900 50  0001 C CNN
F 3 "" H 4300 2900 50  0001 C CNN
	1    4300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1650 4300 1650
Wire Wire Line
	4300 1650 4300 2050
Connection ~ 4300 2050
Wire Wire Line
	4300 2050 4300 2450
$Comp
L Switch:SW_Push SW6
U 1 1 600F2E77
P 5000 2050
F 0 "SW6" H 5100 1950 50  0000 C CNN
F 1 "DN" H 4900 1950 50  0000 C CNN
F 2 "system:SW_PUSH_6mm" H 5000 2250 50  0001 C CNN
F 3 "~" H 5000 2250 50  0001 C CNN
	1    5000 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 2050 6050 2050
Wire Wire Line
	6150 3600 6150 2450
Wire Wire Line
	6150 2450 5200 2450
Wire Wire Line
	4300 2050 4800 2050
Wire Wire Line
	4800 2450 4300 2450
Connection ~ 4300 2450
Wire Wire Line
	4300 2450 4300 2850
$Comp
L Switch:SW_Push SW8
U 1 1 60102BBF
P 5000 2850
F 0 "SW8" H 5100 2750 50  0000 C CNN
F 1 "RT" H 4900 2750 50  0000 C CNN
F 2 "system:SW_PUSH_6mm" H 5000 3050 50  0001 C CNN
F 3 "~" H 5000 3050 50  0001 C CNN
	1    5000 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 3600 6250 2850
Wire Wire Line
	6250 2850 5200 2850
Wire Wire Line
	4800 2850 4300 2850
Connection ~ 4300 2850
Wire Wire Line
	4300 2850 4300 2900
NoConn ~ 5450 3600
NoConn ~ 5550 3600
NoConn ~ 5750 3600
NoConn ~ 5750 4100
NoConn ~ 6750 4100
NoConn ~ 6650 4100
Text Notes 5650 3600 1    39   ~ 0
RAW
Text Notes 5850 3600 1    39   ~ 0
RST
Text Notes 5950 3600 1    39   ~ 0
VCC
Text Notes 6050 3600 1    39   ~ 0
A3
Text Notes 6150 3600 1    39   ~ 0
A2
Text Notes 6250 3600 1    39   ~ 0
A1
Text Notes 6350 3600 1    39   ~ 0
A0
Text Notes 6450 3600 1    39   ~ 0
D15
Text Notes 6550 3600 1    39   ~ 0
D14
Text Notes 6650 3600 1    39   ~ 0
D16
Text Notes 6750 3600 1    39   ~ 0
D10
Text Notes 5650 4100 3    39   ~ 0
GND
Text Notes 5750 3600 1    39   ~ 0
KEY
Text Notes 5750 4100 3    39   ~ 0
KEY
Text Notes 5850 4100 3    39   ~ 0
D2
Text Notes 5950 4100 3    39   ~ 0
D3
Text Notes 6050 4100 3    39   ~ 0
D4
Text Notes 6250 4100 3    39   ~ 0
D6
Text Notes 6350 4100 3    39   ~ 0
D7
Text Notes 6450 4100 3    39   ~ 0
D8
Text Notes 6550 4100 3    39   ~ 0
D9
$Comp
L Device:R_POT RV1
U 1 1 600F8540
P 7200 5500
F 0 "RV1" H 7130 5454 50  0000 R CNN
F 1 "VOLUME 10K" H 7130 5545 50  0000 R CNN
F 2 "system:VOLUME_POT" H 7200 5500 50  0001 C CNN
F 3 "~" H 7200 5500 50  0001 C CNN
	1    7200 5500
	1    0    0    1   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 600FEC81
P 7450 5600
F 0 "BZ1" H 7700 5650 50  0000 C CNN
F 1 "Buzzer" H 7750 5550 50  0000 C CNN
F 2 "system:BUZZER" V 7425 5700 50  0001 C CNN
F 3 "~" V 7425 5700 50  0001 C CNN
	1    7450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5700 7200 5700
Wire Wire Line
	7200 5700 7200 5650
Wire Wire Line
	6450 4100 6450 4950
Wire Wire Line
	6350 4100 6350 4550
Wire Wire Line
	5650 4100 5650 4200
Text Notes 6150 4100 3    39   ~ 0
D5
$Comp
L system:CART_SOCKET_28P J1
U 1 1 60088E5B
P 6100 3850
F 0 "J1" H 5700 3850 50  0000 L CNN
F 1 "CART_SOCKET_28P" H 5850 3850 50  0000 L CNN
F 2 "system:28PIN_CARD_CONNECTOR" V 6050 3800 50  0001 C CNN
F 3 "" V 6050 3800 50  0001 C CNN
	1    6100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5700 6250 5700
Wire Wire Line
	6250 4100 6250 5700
Connection ~ 7200 5700
$Comp
L Switch:SW_SPDT SW1
U 1 1 6010805C
P 3550 4250
F 0 "SW1" H 3850 4250 50  0000 C CNN
F 1 "POWER" H 4100 4250 50  0000 C CNN
F 2 "system:SPDT_SWITCH" H 3550 4250 50  0001 C CNN
F 3 "~" H 3550 4250 50  0001 C CNN
	1    3550 4250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60109C6D
P 3650 3650
F 0 "SW2" H 3500 3850 50  0000 C CNN
F 1 "RESET" H 3750 3850 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 3650 3850 50  0001 C CNN
F 3 "~" H 3650 3850 50  0001 C CNN
	1    3650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3450 5650 3450
Wire Wire Line
	5650 3450 5650 3600
$Comp
L power:GND #PWR0104
U 1 1 6011CE93
P 3450 3750
F 0 "#PWR0104" H 3450 3500 50  0001 C CNN
F 1 "GND" H 3455 3577 50  0000 C CNN
F 2 "" H 3450 3750 50  0001 C CNN
F 3 "" H 3450 3750 50  0001 C CNN
	1    3450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3650 3450 3750
Wire Wire Line
	4700 3650 4700 3350
Wire Wire Line
	3850 3650 4200 3650
Wire Wire Line
	5850 3350 5850 3600
$Comp
L Device:R_Small R1
U 1 1 6012325C
P 4200 3450
F 0 "R1" H 4250 3450 50  0000 L CNN
F 1 "10K" V 4200 3450 30  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4200 3450 50  0001 C CNN
F 3 "~" H 4200 3450 50  0001 C CNN
	1    4200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3550 4200 3650
Connection ~ 4200 3650
Wire Wire Line
	5950 3600 5950 3250
Wire Wire Line
	5950 3250 4200 3250
Wire Wire Line
	4200 3250 4200 3350
Wire Wire Line
	4200 3250 4050 3250
Connection ~ 4200 3250
Wire Wire Line
	6750 3600 6750 3450
$Comp
L power:VCC #PWR0105
U 1 1 6014FCF7
P 4050 3250
F 0 "#PWR0105" H 4050 3100 50  0001 C CNN
F 1 "VCC" V 4050 3400 50  0000 L CNN
F 2 "" H 4050 3250 50  0001 C CNN
F 3 "" H 4050 3250 50  0001 C CNN
	1    4050 3250
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:MCP1700-3302E_TO92 U2
U 1 1 60150B9F
P 4050 5200
F 0 "U2" H 4050 4958 50  0000 C CNN
F 1 "MCP1700-3302E" H 4100 5050 50  0000 C CNN
F 2 "system:TO-92" H 4050 5000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826D.pdf" H 4050 5200 50  0001 C CNN
	1    4050 5200
	1    0    0    1   
$EndComp
$Comp
L system:LIPO_CHARGER U1
U 1 1 601553BA
P 2700 5100
F 0 "U1" H 2700 5565 50  0000 C CNN
F 1 "LIPO_CHARGER" H 2700 5474 50  0000 C CNN
F 2 "system:ADAFRUIT_MICRO_LIPO" H 2700 5100 50  0001 C CNN
F 3 "" H 2700 5100 50  0001 C CNN
	1    2700 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small_ALT D2
U 1 1 60157AE7
P 3050 4550
F 0 "D2" V 3000 4650 50  0000 L CNN
F 1 "SB120" V 3100 4650 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 3050 4550 50  0001 C CNN
F 3 "~" V 3050 4550 50  0001 C CNN
	1    3050 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 4900 3050 4650
$Comp
L power:GND #PWR0106
U 1 1 6015D655
P 2700 5300
F 0 "#PWR0106" H 2700 5050 50  0001 C CNN
F 1 "GND" H 2705 5127 50  0000 C CNN
F 2 "" H 2700 5300 50  0001 C CNN
F 3 "" H 2700 5300 50  0001 C CNN
	1    2700 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small_ALT D1
U 1 1 6015EF69
P 2350 4550
F 0 "D1" V 2300 4750 50  0000 R CNN
F 1 "SB120" V 2400 4900 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 2350 4550 50  0001 C CNN
F 3 "~" V 2350 4550 50  0001 C CNN
	1    2350 4550
	0    -1   1    0   
$EndComp
Wire Wire Line
	2350 4900 2350 4650
Wire Wire Line
	2350 4450 2350 4250
Wire Wire Line
	2350 4250 3050 4250
Wire Wire Line
	3050 4450 3050 4250
Connection ~ 3050 4250
Wire Wire Line
	3050 4250 3350 4250
Wire Wire Line
	7500 4950 7500 5000
Wire Wire Line
	7500 4950 7500 4550
Connection ~ 7500 4950
$Comp
L system:SPI_DISPLAY U3
U 1 1 60191D78
P 5050 4650
F 0 "U3" H 5100 4900 50  0000 R CNN
F 1 "SPI_DISPLAY" H 5250 4800 39  0000 R CNN
F 2 "system:DIYMORE_2.42_IN_OLED" H 5100 4550 30  0001 C CNN
F 3 "" H 5100 4550 30  0001 C CNN
	1    5050 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 6019D0B9
P 4050 5500
F 0 "#PWR0108" H 4050 5250 50  0001 C CNN
F 1 "GND" H 4055 5327 50  0000 C CNN
F 2 "" H 4050 5500 50  0001 C CNN
F 3 "" H 4050 5500 50  0001 C CNN
	1    4050 5500
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 601A4D86
P 3750 5350
F 0 "C1" H 3850 5400 50  0000 L CNN
F 1 "1uF" H 3850 5300 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3750 5350 50  0001 C CNN
F 3 "~" H 3750 5350 50  0001 C CNN
	1    3750 5350
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 601AE8F3
P 4350 5350
F 0 "C2" H 4550 5400 50  0000 R CNN
F 1 "1uF" H 4600 5300 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4350 5350 50  0001 C CNN
F 3 "~" H 4350 5350 50  0001 C CNN
	1    4350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5500 4050 5500
Connection ~ 4050 5500
Wire Wire Line
	4050 5500 4350 5500
$Comp
L power:GND #PWR0109
U 1 1 601CCE78
P 4750 4850
F 0 "#PWR0109" H 4750 4600 50  0001 C CNN
F 1 "GND" H 4755 4677 50  0000 C CNN
F 2 "" H 4750 4850 50  0001 C CNN
F 3 "" H 4750 4850 50  0001 C CNN
	1    4750 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4350 5200 4850 5200
Wire Wire Line
	3750 5450 3750 5500
Wire Wire Line
	4350 5500 4350 5450
Wire Wire Line
	4350 5250 4350 5200
Connection ~ 4350 5200
Wire Wire Line
	3750 5250 3750 5200
Connection ~ 3750 5200
Wire Wire Line
	4850 5200 4850 4850
Wire Wire Line
	6150 4100 6150 5350
Wire Wire Line
	6150 5350 7200 5350
Wire Wire Line
	5350 4850 5450 4850
Wire Wire Line
	5450 4850 5450 4100
Wire Wire Line
	5250 4850 5250 4900
Wire Wire Line
	5250 4900 6050 4900
Wire Wire Line
	6050 4900 6050 4100
Wire Wire Line
	6650 3600 6650 3450
Text GLabel 6650 3450 1    39   Input ~ 0
MOSI
Text GLabel 5050 4850 3    39   Input ~ 0
MOSI
Wire Wire Line
	6450 3600 6450 3450
Text GLabel 6450 3450 1    39   Input ~ 0
SCK
Text GLabel 4950 4850 3    39   Input ~ 0
SCK
Wire Wire Line
	6550 3600 6550 3450
Text GLabel 6550 3450 1    39   Input ~ 0
MISO
Wire Wire Line
	5850 4100 5850 4250
Text GLabel 5850 4250 3    39   Input ~ 0
SDA
Wire Wire Line
	5950 4100 5950 4250
Text GLabel 5950 4250 3    39   Input ~ 0
SCL
Text GLabel 6750 3450 1    39   Input ~ 0
D10_A10
$Comp
L Connector:Conn_01x11_Female J2
U 1 1 6029D390
P 8350 3450
F 0 "J2" V 8515 3380 50  0000 C CNN
F 1 "EXT_PINS" V 8424 3380 50  0000 C CNN
F 2 "system:EXT_PINS" H 8350 3450 50  0001 C CNN
F 3 "~" H 8350 3450 50  0001 C CNN
	1    8350 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 602A3E9B
P 7850 3650
F 0 "#PWR0110" H 7850 3400 50  0001 C CNN
F 1 "GND" H 7800 3500 50  0000 C CNN
F 2 "" H 7850 3650 50  0001 C CNN
F 3 "" H 7850 3650 50  0001 C CNN
	1    7850 3650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 602A5101
P 7950 3650
F 0 "#PWR0111" H 7950 3500 50  0001 C CNN
F 1 "VCC" V 7950 3800 50  0000 L CNN
F 2 "" H 7950 3650 50  0001 C CNN
F 3 "" H 7950 3650 50  0001 C CNN
	1    7950 3650
	1    0    0    1   
$EndComp
Text GLabel 4850 5200 2    39   Input ~ 0
3V3
Text GLabel 8050 3650 3    39   Input ~ 0
3V3
Text GLabel 8150 3650 3    39   Input ~ 0
SDA
Text GLabel 8250 3650 3    39   Input ~ 0
SCL
Text GLabel 8350 3650 3    39   Input ~ 0
MISO
Text GLabel 8450 3650 3    39   Input ~ 0
MOSI
Text GLabel 8550 3650 3    39   Input ~ 0
SCK
Text GLabel 8850 3650 3    39   Input ~ 0
D10_A10
Text GLabel 8750 3650 3    39   Input ~ 0
D9_A9
Text GLabel 6550 4250 3    39   Input ~ 0
D9_A9
Wire Wire Line
	6550 4100 6550 4250
Wire Wire Line
	4700 3350 5150 3350
Wire Wire Line
	5150 4850 5150 3350
NoConn ~ 3750 4150
Wire Wire Line
	4200 3650 4700 3650
Wire Wire Line
	4850 4350 3750 4350
Wire Wire Line
	4850 3450 4850 4350
Connection ~ 5150 3350
Wire Wire Line
	5150 3350 5850 3350
Text GLabel 5550 4250 3    39   Input ~ 0
D0
Wire Wire Line
	5550 4100 5550 4250
Text GLabel 8650 3650 3    39   Input ~ 0
D0
Connection ~ 3750 4350
Wire Wire Line
	3750 4350 3750 5200
$EndSCHEMATC
