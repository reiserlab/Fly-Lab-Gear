EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RJ45-M55 adapter (female)"
Date "2020-03-19"
Rev "v0.1"
Comp "Janelia"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:RJ45 J?
U 1 1 5E7232B4
P 2400 2350
F 0 "J?" H 2457 3017 50  0000 C CNN
F 1 "RJ45" H 2457 2926 50  0000 C CNN
F 2 "connectors:RJ45_Molex_0855135013_Vertical" V 2400 2375 50  0001 C CNN
F 3 "~" V 2400 2375 50  0001 C CNN
	1    2400 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J?
U 1 1 5E724F0C
P 5150 2150
F 0 "J?" H 5200 2767 50  0000 C CNN
F 1 "M55 Archer" H 5200 2676 50  0000 C CNN
F 2 "connectors:M55-6XX2042R_Archer_Kontrol" H 5150 2150 50  0001 C CNN
F 3 "~" H 5150 2150 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
NoConn ~ 4950 1750
NoConn ~ 5450 1750
NoConn ~ 4950 1850
NoConn ~ 5450 1850
NoConn ~ 4950 1950
NoConn ~ 4950 2050
NoConn ~ 5450 2050
NoConn ~ 4950 2150
NoConn ~ 5450 2150
Text GLabel 5700 2550 2    50   Input ~ 0
SCK
Text GLabel 4650 2450 0    50   Input ~ 0
MOSI
Text GLabel 5650 2450 2    50   Input ~ 0
MISO1
Text GLabel 4600 2350 0    50   Input ~ 0
CS0
Text GLabel 5700 2350 2    50   Input ~ 0
CS1
Wire Wire Line
	5450 2550 5700 2550
Wire Wire Line
	4650 2450 4950 2450
Wire Wire Line
	5450 2450 5650 2450
Wire Wire Line
	4600 2350 4950 2350
Wire Wire Line
	5450 2350 5700 2350
Text GLabel 3000 2150 2    50   Input ~ 0
MISO1
Text GLabel 3000 2250 2    50   Input ~ 0
CS0
Text GLabel 3000 2550 2    50   Input ~ 0
CS1
Text GLabel 3000 2350 2    50   Input ~ 0
MOSI
Text GLabel 3000 1950 2    50   Input ~ 0
SCK
Wire Wire Line
	3000 1950 2800 1950
Wire Wire Line
	3000 2350 2800 2350
Text GLabel 4600 2250 0    50   Input ~ 0
CS1
Wire Wire Line
	4950 2250 4600 2250
Wire Wire Line
	5450 2250 5700 2250
Wire Wire Line
	5700 2250 5700 2350
Wire Wire Line
	3000 2550 2800 2550
Wire Wire Line
	3000 2250 2800 2250
Wire Wire Line
	3000 2150 2800 2150
Text GLabel 3000 2450 2    50   Input ~ 0
GND
Text GLabel 3000 2650 2    50   Input ~ 0
5V
Wire Wire Line
	3000 2450 2800 2450
Text GLabel 3000 2050 2    50   Input ~ 0
5V
Wire Wire Line
	3000 2050 2800 2050
Wire Wire Line
	2800 2650 3000 2650
Text GLabel 5650 1950 2    50   Input ~ 0
GND
Text GLabel 4650 2550 0    50   Input ~ 0
GND
Wire Wire Line
	4650 2550 4950 2550
Text GLabel 4650 2650 0    50   Input ~ 0
5V
Wire Wire Line
	4650 2650 4950 2650
Text GLabel 5650 2650 2    50   Input ~ 0
5V
Wire Wire Line
	5650 2650 5450 2650
Wire Wire Line
	5650 1950 5450 1950
$EndSCHEMATC
