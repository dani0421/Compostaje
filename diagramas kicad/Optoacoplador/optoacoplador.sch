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
L Device:R R1
U 1 1 6338CD1C
P 8450 1550
F 0 "R1" H 8520 1596 50  0000 L CNN
F 1 "5.1k" H 8520 1505 50  0000 L CNN
F 2 "" V 8380 1550 50  0001 C CNN
F 3 "~" H 8450 1550 50  0001 C CNN
	1    8450 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6338DB31
P 8100 1550
F 0 "R2" H 8170 1596 50  0000 L CNN
F 1 "5.1k" H 8170 1505 50  0000 L CNN
F 2 "" V 8030 1550 50  0001 C CNN
F 3 "~" H 8100 1550 50  0001 C CNN
	1    8100 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6338DC90
P 7700 1550
F 0 "R3" H 7770 1596 50  0000 L CNN
F 1 "5.1k" H 7770 1505 50  0000 L CNN
F 2 "" V 7630 1550 50  0001 C CNN
F 3 "~" H 7700 1550 50  0001 C CNN
	1    7700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6338DEA8
P 7350 1550
F 0 "R4" H 7420 1596 50  0000 L CNN
F 1 "5.1k" H 7420 1505 50  0000 L CNN
F 2 "" V 7280 1550 50  0001 C CNN
F 3 "~" H 7350 1550 50  0001 C CNN
	1    7350 1550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q1
U 1 1 63392B56
P 8350 2100
F 0 "Q1" H 8540 2146 50  0000 L CNN
F 1 "S8050" H 8540 2055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8550 2025 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 8350 2100 50  0001 L CNN
	1    8350 2100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q2
U 1 1 63394910
P 7600 2500
F 0 "Q2" H 7790 2546 50  0000 L CNN
F 1 "S8050" H 7790 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7800 2425 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 7600 2500 50  0001 L CNN
	1    7600 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6339593F
P 3850 2100
F 0 "R9" V 4057 2100 50  0000 C CNN
F 1 "220" V 3966 2100 50  0000 C CNN
F 2 "" V 3780 2100 50  0001 C CNN
F 3 "~" H 3850 2100 50  0001 C CNN
	1    3850 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 633966AD
P 3850 2500
F 0 "R10" V 4057 2500 50  0000 C CNN
F 1 "220" V 3966 2500 50  0000 C CNN
F 2 "" V 3780 2500 50  0001 C CNN
F 3 "~" H 3850 2500 50  0001 C CNN
	1    3850 2500
	0    -1   -1   0   
$EndComp
$Comp
L TLP281-4GB_F_:TLP281-4GB(F) U?
U 1 1 633987FF
P 4950 2800
F 0 "U?" H 5000 3767 50  0000 C CNN
F 1 "TLP281-4GB(F)" H 5000 3676 50  0000 C CNN
F 2 "SOIC127P700X210-16N" H 4950 2800 50  0001 L BNN
F 3 "" H 4950 2800 50  0001 L BNN
F 4 "Toshiba" H 4950 2800 50  0001 L BNN "MANUFACTURER"
F 5 "IPC7351B" H 4950 2800 50  0001 L BNN "STANDARD"
F 6 "7439" H 4950 2800 50  0001 L BNN "SNAPEDA_PACKAGE_ID"
	1    4950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2400 4350 2400
Wire Wire Line
	4350 2400 4350 2800
Wire Wire Line
	4350 2800 4550 2800
Wire Wire Line
	4350 2800 4350 3200
Wire Wire Line
	4350 3200 4550 3200
Connection ~ 4350 2800
Wire Wire Line
	4350 3200 4350 3600
Wire Wire Line
	4350 3600 4550 3600
Connection ~ 4350 3200
Wire Wire Line
	4000 2100 4550 2100
Wire Wire Line
	4000 2500 4550 2500
Wire Wire Line
	8100 2100 8150 2100
Wire Wire Line
	7400 2500 7350 2500
Wire Wire Line
	7350 1700 7350 2500
Wire Wire Line
	7350 1400 7350 1200
Wire Wire Line
	8100 1400 8100 1200
Wire Wire Line
	7700 1400 7700 1200
Wire Wire Line
	5450 2400 5550 2400
Wire Wire Line
	5550 2400 5550 2800
Wire Wire Line
	5550 2800 5450 2800
Wire Wire Line
	5550 2800 5550 3200
Wire Wire Line
	5550 3200 5450 3200
Connection ~ 5550 2800
Wire Wire Line
	5550 3200 5550 3600
Wire Wire Line
	5550 3600 5450 3600
Connection ~ 5550 3200
$Comp
L power:GND #PWR?
U 1 1 633A7E35
P 8450 3850
F 0 "#PWR?" H 8450 3600 50  0001 C CNN
F 1 "GND" H 8455 3677 50  0000 C CNN
F 2 "" H 8450 3850 50  0001 C CNN
F 3 "" H 8450 3850 50  0001 C CNN
	1    8450 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 633A8607
P 4350 3850
F 0 "#PWR?" H 4350 3600 50  0001 C CNN
F 1 "GND" H 4355 3677 50  0000 C CNN
F 2 "" H 4350 3850 50  0001 C CNN
F 3 "" H 4350 3850 50  0001 C CNN
	1    4350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3850 4350 3600
Connection ~ 4350 3600
Connection ~ 8450 3600
Wire Wire Line
	8450 3600 8450 3850
$Comp
L Device:R R5
U 1 1 633B61F9
P 6950 1550
F 0 "R5" H 7020 1596 50  0000 L CNN
F 1 "5.1k" H 7020 1505 50  0000 L CNN
F 2 "" V 6880 1550 50  0001 C CNN
F 3 "~" H 6950 1550 50  0001 C CNN
	1    6950 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 633B61FF
P 6600 1550
F 0 "R6" H 6670 1596 50  0000 L CNN
F 1 "5.1k" H 6670 1505 50  0000 L CNN
F 2 "" V 6530 1550 50  0001 C CNN
F 3 "~" H 6600 1550 50  0001 C CNN
	1    6600 1550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q3
U 1 1 633B6205
P 6850 2900
F 0 "Q3" H 7040 2946 50  0000 L CNN
F 1 "S8050" H 7040 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7050 2825 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 6850 2900 50  0001 L CNN
	1    6850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1400 6600 1200
Wire Wire Line
	6950 1400 6950 1200
$Comp
L Device:R R7
U 1 1 633B8DA4
P 6200 1550
F 0 "R7" H 6270 1596 50  0000 L CNN
F 1 "5.1k" H 6270 1505 50  0000 L CNN
F 2 "" V 6130 1550 50  0001 C CNN
F 3 "~" H 6200 1550 50  0001 C CNN
	1    6200 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 633B8DAA
P 5850 1550
F 0 "R8" H 5920 1596 50  0000 L CNN
F 1 "5.1k" H 5920 1505 50  0000 L CNN
F 2 "" V 5780 1550 50  0001 C CNN
F 3 "~" H 5850 1550 50  0001 C CNN
	1    5850 1550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q4
U 1 1 633B8DB0
P 6100 3300
F 0 "Q4" H 6290 3346 50  0000 L CNN
F 1 "S8050" H 6290 3255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6300 3225 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 6100 3300 50  0001 L CNN
	1    6100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3300 5850 3300
Wire Wire Line
	5850 1400 5850 1200
Wire Wire Line
	6200 1400 6200 1200
Wire Wire Line
	8450 1050 8450 1200
Wire Wire Line
	5850 1700 5850 3300
Wire Wire Line
	5850 1200 6200 1200
Connection ~ 8450 1200
Wire Wire Line
	8450 1200 8450 1400
Connection ~ 6200 1200
Wire Wire Line
	6200 1200 6600 1200
Connection ~ 6600 1200
Wire Wire Line
	6600 1200 6950 1200
Connection ~ 6950 1200
Wire Wire Line
	6950 1200 7350 1200
Connection ~ 7350 1200
Wire Wire Line
	7350 1200 7700 1200
Connection ~ 7700 1200
Wire Wire Line
	7700 1200 8100 1200
Connection ~ 8100 1200
Wire Wire Line
	8100 1200 8450 1200
Wire Wire Line
	6950 3100 6950 3600
Connection ~ 6950 3600
Wire Wire Line
	6200 3500 6200 3600
Wire Wire Line
	6200 3600 5550 3600
Connection ~ 5550 3600
Wire Wire Line
	6200 3600 6950 3600
Connection ~ 6200 3600
Wire Wire Line
	8100 1700 8100 2100
Wire Wire Line
	8100 2100 5450 2100
Connection ~ 8100 2100
Wire Wire Line
	7350 2500 5450 2500
Connection ~ 7350 2500
Wire Wire Line
	6950 1700 6950 2700
Wire Wire Line
	6650 2900 6600 2900
Wire Wire Line
	6600 1700 6600 2900
Wire Wire Line
	6600 2900 5450 2900
Connection ~ 6600 2900
Wire Wire Line
	5850 3300 5450 3300
Connection ~ 5850 3300
$Comp
L Device:R R11
U 1 1 633CBBD2
P 3850 2900
F 0 "R11" V 4057 2900 50  0000 C CNN
F 1 "220" V 3966 2900 50  0000 C CNN
F 2 "" V 3780 2900 50  0001 C CNN
F 3 "~" H 3850 2900 50  0001 C CNN
	1    3850 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 633CBBD8
P 3850 3300
F 0 "R12" V 4057 3300 50  0000 C CNN
F 1 "220" V 3966 3300 50  0000 C CNN
F 2 "" V 3780 3300 50  0001 C CNN
F 3 "~" H 3850 3300 50  0001 C CNN
	1    3850 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 2900 4550 2900
Wire Wire Line
	4000 3300 4550 3300
Text HLabel 3450 2100 0    50   Input ~ 0
Oin
Text HLabel 3450 2500 0    50   Input ~ 0
Oin2
Text HLabel 3450 2900 0    50   Input ~ 0
Oin3
Text HLabel 3450 3300 0    50   Input ~ 0
Oin4
Wire Wire Line
	3700 2100 3450 2100
Wire Wire Line
	3700 2500 3450 2500
Wire Wire Line
	3700 2900 3450 2900
Wire Wire Line
	3700 3300 3450 3300
Wire Wire Line
	8450 1900 8450 1850
Text HLabel 9450 1850 2    50   Input ~ 0
M1
Text HLabel 9450 2300 2    50   Input ~ 0
M2
Wire Wire Line
	7700 1700 7700 2300
Wire Wire Line
	6950 3600 7700 3600
Connection ~ 7700 2300
Wire Wire Line
	7700 2700 7700 3600
Connection ~ 7700 3600
Wire Wire Line
	7700 3600 8450 3600
Wire Wire Line
	9450 1850 8450 1850
Connection ~ 8450 1850
Wire Wire Line
	8450 1850 8450 1700
Text HLabel 9450 2700 2    50   Input ~ 0
M3
Wire Wire Line
	9450 2700 8450 2700
Wire Wire Line
	7700 2300 9450 2300
Connection ~ 6950 2700
Wire Wire Line
	6950 2700 8450 2700
Text HLabel 9450 3100 2    50   Input ~ 0
M3
Wire Wire Line
	9450 3100 8450 3100
Wire Wire Line
	6200 1700 6200 3100
Connection ~ 6200 3100
Wire Wire Line
	6200 3100 6200 3150
Wire Wire Line
	6200 3100 8450 3100
Wire Wire Line
	8450 2300 8450 3600
$Comp
L power:+12V #PWR?
U 1 1 633F1123
P 8450 1050
F 0 "#PWR?" H 8450 900 50  0001 C CNN
F 1 "+12V" H 8465 1223 50  0000 C CNN
F 2 "" H 8450 1050 50  0001 C CNN
F 3 "" H 8450 1050 50  0001 C CNN
	1    8450 1050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
