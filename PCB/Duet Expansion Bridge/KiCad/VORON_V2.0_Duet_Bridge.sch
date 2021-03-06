EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:VORON_V2.0_Duet_Bridge-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "VORON Expansion Bridge"
Date "2017-09-08"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 " CARLOS RUIZ"
Comment4 " MAKSIM ZOLIN"
$EndDescr
Wire Wire Line
	6550 3775 6425 3775
Text GLabel 7175 3575 2    49   Input ~ 0
E4_EN
Text GLabel 7175 3275 2    49   Input ~ 0
E3_EN
Wire Wire Line
	7050 3775 7175 3775
Text GLabel 7175 3675 2    49   Input ~ 0
E4_STEP
Text GLabel 7175 3375 2    49   Input ~ 0
E3_STEP
Wire Wire Line
	7050 3675 7175 3675
Wire Wire Line
	6550 3675 6425 3675
Text GLabel 7175 3775 2    49   Input ~ 0
E4_DIR
Wire Wire Line
	6425 3575 6550 3575
Text GLabel 7175 3475 2    49   Input ~ 0
E3_DIR
Wire Wire Line
	7050 3575 7175 3575
Text GLabel 7175 2975 2    49   Input ~ 0
E2_EN
Wire Wire Line
	7050 3375 7175 3375
Text GLabel 7175 3075 2    49   Input ~ 0
E2_STEP
Wire Wire Line
	7050 3275 7175 3275
Wire Wire Line
	7175 3175 7050 3175
$Comp
L GND #PWR01
U 1 1 5A11EBA9
P 6225 3000
F 0 "#PWR01" H 6225 2750 50  0001 C CNN
F 1 "GND" H 6225 2850 50  0000 C CNN
F 2 "" H 6225 3000 50  0000 C CNN
F 3 "" H 6225 3000 50  0000 C CNN
	1    6225 3000
	1    0    0    -1  
$EndComp
Text GLabel 6425 3575 0    49   Input ~ 0
HEATER3
Text GLabel 6425 3675 0    49   Input ~ 0
HEATER4
Wire Wire Line
	7175 2975 7050 2975
Text GLabel 6425 3775 0    49   Input ~ 0
FAN2(HEATER_5)
Text GLabel 6425 3875 0    49   Input ~ 0
FAN1(HEATER_6)
Wire Wire Line
	7175 3475 7050 3475
Wire Wire Line
	7175 3075 7050 3075
Text GLabel 7175 3175 2    49   Input ~ 0
E2_DIR
Wire Wire Line
	7100 3875 7050 3875
$Comp
L VCC #PWR02
U 1 1 5A3838AB
P 7100 2675
F 0 "#PWR02" H 7100 2525 50  0001 C CNN
F 1 "VCC" H 7100 2825 50  0000 C CNN
F 2 "" H 7100 2675 50  0000 C CNN
F 3 "" H 7100 2675 50  0000 C CNN
	1    7100 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2675 7100 2775
Wire Wire Line
	8000 2875 7050 2875
Text GLabel 7100 3875 2    49   Input ~ 0
Z_PROBE
Wire Wire Line
	6425 3875 6550 3875
Wire Wire Line
	6500 2775 6500 2675
$Comp
L Conn_02x12_Odd_Even Exp1
U 1 1 5A11DE4E
P 6750 3275
F 0 "Exp1" H 6750 3925 50  0000 C CNN
F 1 "Expander" V 6800 3250 50  0000 C CNN
F 2 "Voron:Socket_Strip_Straight_2x12_Pitch2.54mm" H 6750 2075 50  0001 C CNN
F 3 "" H 6750 2075 50  0000 C CNN
	1    6750 3275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A387BC9
P 8000 3000
F 0 "#PWR03" H 8000 2750 50  0001 C CNN
F 1 "GND" H 8000 2850 50  0000 C CNN
F 2 "" H 8000 3000 50  0000 C CNN
F 3 "" H 8000 3000 50  0000 C CNN
	1    8000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2875 8000 3000
$Comp
L VCC #PWR04
U 1 1 5A387CD9
P 6500 2675
F 0 "#PWR04" H 6500 2525 50  0001 C CNN
F 1 "VCC" H 6500 2825 50  0000 C CNN
F 2 "" H 6500 2675 50  0000 C CNN
F 3 "" H 6500 2675 50  0000 C CNN
	1    6500 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 2875 6225 3000
Wire Wire Line
	6225 2875 6550 2875
Wire Wire Line
	6550 2975 6500 2975
Wire Wire Line
	6500 2975 6500 2875
Connection ~ 6500 2875
Wire Wire Line
	6500 2775 6550 2775
Wire Wire Line
	7100 2775 7050 2775
NoConn ~ 6550 3075
NoConn ~ 6550 3175
NoConn ~ 6550 3275
NoConn ~ 6550 3375
NoConn ~ 6550 3475
$Comp
L Conn_02x12_Odd_Even Duet1
U 1 1 5AC2D2B3
P 5200 3000
F 0 "Duet1" H 5200 3600 50  0000 C BNN
F 1 "Duet" V 5250 3000 50  0000 C CNN
F 2 "Voron:Socket_Strip_Straight_2x12_Pitch2.54mm" H 5200 3000 50  0001 C CNN
F 3 "" H 5200 3000 50  0001 C CNN
	1    5200 3000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 5AC2D50C
P 4800 2400
F 0 "#PWR05" H 4800 2250 50  0001 C CNN
F 1 "VCC" H 4800 2550 50  0000 C CNN
F 2 "" H 4800 2400 50  0001 C CNN
F 3 "" H 4800 2400 50  0001 C CNN
	1    4800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2400 4800 2600
$Comp
L GND #PWR06
U 1 1 5AC2D9F2
P 5800 2500
F 0 "#PWR06" H 5800 2250 50  0001 C CNN
F 1 "GND" H 5800 2350 50  0000 C CNN
F 2 "" H 5800 2500 50  0001 C CNN
F 3 "" H 5800 2500 50  0001 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2500 5800 2500
Text GLabel 5000 2800 0    60   Input ~ 0
E2_EN
Text GLabel 5000 2700 0    60   Input ~ 0
E2_STEP
Text GLabel 5500 2700 2    60   Input ~ 0
E2_DIR
Text GLabel 5500 2800 2    60   Input ~ 0
HEATER3
Text GLabel 5500 2900 2    60   Input ~ 0
E3_STEP
Text GLabel 5000 3000 0    60   Input ~ 0
E3_DIR
Text GLabel 5500 3000 2    60   Input ~ 0
E3_EN
Text GLabel 5000 3100 0    60   Input ~ 0
HEATER4
Text GLabel 5000 3200 0    60   Input ~ 0
E4_STEP
Text GLabel 5000 3300 0    60   Input ~ 0
E4_EN
Text GLabel 5500 3200 2    60   Input ~ 0
E4_DIR
Text GLabel 5500 3300 2    60   Input ~ 0
FAN2(HEATER_5)
Text GLabel 5000 3600 0    60   Input ~ 0
FAN1(HEATER_6)
Text GLabel 5500 3600 2    60   Input ~ 0
Z_PROBE
Wire Wire Line
	4800 2600 5000 2600
$EndSCHEMATC
