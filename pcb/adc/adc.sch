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
Text Notes 7100 6700 0    50   ~ 0
100 nF afkobling på forsynings-pins
$Comp
L ADC_mylib:LTC2380CMS-16PBF U1
U 1 1 5FB4D282
P 4100 4600
F 0 "U1" H 5600 4965 50  0000 C CNN
F 1 "LTC2380CMS-16PBF" H 5600 4874 50  0000 C CNN
F 2 "adc_mylib:MSOP-16_MS" H 4100 4600 50  0001 L BNN
F 3 "ltc2380cms16#pbf" H 4100 4600 50  0001 L BNN
F 4 "LinearTech" H 4100 4600 50  0001 L BNN "Field4"
	1    4100 4600
	1    0    0    -1  
$EndComp
$Comp
L ADC_mylib:LTC2380CMS-16PBF U2
U 1 1 5FB4F9E1
P 4150 2750
F 0 "U2" H 5650 3115 50  0000 C CNN
F 1 "LTC2380CMS-16PBF" H 5650 3024 50  0000 C CNN
F 2 "adc_mylib:MSOP-16_MS" H 4150 2750 50  0001 L BNN
F 3 "ltc2380cms16#pbf" H 4150 2750 50  0001 L BNN
F 4 "LinearTech" H 4150 2750 50  0001 L BNN "Field4"
	1    4150 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5FB5705C
P 7100 4600
F 0 "#PWR013" H 7100 4350 50  0001 C CNN
F 1 "GND" V 7105 4472 50  0000 R CNN
F 2 "" H 7100 4600 50  0001 C CNN
F 3 "" H 7100 4600 50  0001 C CNN
	1    7100 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5FB5ABB1
P 7150 2750
F 0 "#PWR015" H 7150 2500 50  0001 C CNN
F 1 "GND" V 7155 2622 50  0000 R CNN
F 2 "" H 7150 2750 50  0001 C CNN
F 3 "" H 7150 2750 50  0001 C CNN
	1    7150 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5FB5D660
P 4150 2950
F 0 "#PWR011" H 4150 2700 50  0001 C CNN
F 1 "GND" V 4155 2822 50  0000 R CNN
F 2 "" H 4150 2950 50  0001 C CNN
F 3 "" H 4150 2950 50  0001 C CNN
	1    4150 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FB600B9
P 4150 3250
F 0 "#PWR012" H 4150 3000 50  0001 C CNN
F 1 "GND" V 4155 3122 50  0000 R CNN
F 2 "" H 4150 3250 50  0001 C CNN
F 3 "" H 4150 3250 50  0001 C CNN
	1    4150 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FB62800
P 4100 4800
F 0 "#PWR09" H 4100 4550 50  0001 C CNN
F 1 "GND" V 4105 4672 50  0000 R CNN
F 2 "" H 4100 4800 50  0001 C CNN
F 3 "" H 4100 4800 50  0001 C CNN
	1    4100 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5FB64E49
P 4100 5100
F 0 "#PWR010" H 4100 4850 50  0001 C CNN
F 1 "GND" V 4105 4972 50  0000 R CNN
F 2 "" H 4100 5100 50  0001 C CNN
F 3 "" H 4100 5100 50  0001 C CNN
	1    4100 5100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x10_Male J3
U 1 1 5FB6B8CA
P 9200 4000
F 0 "J3" H 9172 3882 50  0000 R CNN
F 1 "Conn_01x10_Male" H 9172 3973 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 9200 4000 50  0001 C CNN
F 3 "~" H 9200 4000 50  0001 C CNN
	1    9200 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 2950 10000 5000
Wire Wire Line
	7100 4800 8300 4800
Wire Wire Line
	8300 4800 8300 4000
Wire Wire Line
	8300 4000 9000 4000
Wire Wire Line
	7100 5000 10000 5000
Wire Wire Line
	7150 2950 10000 2950
Wire Wire Line
	7100 5100 8750 5100
Wire Wire Line
	7150 3450 7500 3450
Wire Wire Line
	7500 5300 7100 5300
Wire Wire Line
	4150 2750 3750 2750
Wire Wire Line
	3750 2750 3750 3700
Wire Wire Line
	3750 4600 4100 4600
Connection ~ 3750 3700
Wire Wire Line
	3750 3700 3750 4600
$Comp
L power:GND #PWR016
U 1 1 5FB97A35
P 7150 3150
F 0 "#PWR016" H 7150 2900 50  0001 C CNN
F 1 "GND" V 7155 3022 50  0000 R CNN
F 2 "" H 7150 3150 50  0001 C CNN
F 3 "" H 7150 3150 50  0001 C CNN
	1    7150 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 3250 8750 3250
Wire Wire Line
	8750 3600 9000 3600
$Comp
L power:GND #PWR017
U 1 1 5FB9F309
P 7150 3350
F 0 "#PWR017" H 7150 3100 50  0001 C CNN
F 1 "GND" V 7155 3222 50  0000 R CNN
F 2 "" H 7150 3350 50  0001 C CNN
F 3 "" H 7150 3350 50  0001 C CNN
	1    7150 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5FBA2DF9
P 7100 5200
F 0 "#PWR014" H 7100 4950 50  0001 C CNN
F 1 "GND" V 7105 5072 50  0000 R CNN
F 2 "" H 7100 5200 50  0001 C CNN
F 3 "" H 7100 5200 50  0001 C CNN
	1    7100 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 3050 7800 3050
Wire Wire Line
	7800 4900 7100 4900
Wire Wire Line
	9000 4200 7800 4200
Wire Wire Line
	3450 2850 4150 2850
Wire Wire Line
	3450 4700 4100 4700
Wire Wire Line
	7150 2850 7600 2850
Wire Wire Line
	8100 2850 8100 3700
Wire Wire Line
	8100 4700 7100 4700
Wire Wire Line
	3750 3700 8100 3700
Connection ~ 8100 3700
Wire Wire Line
	8100 3700 8100 4700
Wire Wire Line
	8100 3700 8400 3700
Wire Wire Line
	4100 5300 4000 5300
Wire Wire Line
	4000 5300 4000 5200
Wire Wire Line
	4000 5200 4100 5200
Wire Wire Line
	4150 3450 4050 3450
Wire Wire Line
	4050 3450 4050 3350
Wire Wire Line
	4050 3350 4150 3350
Wire Wire Line
	4000 5200 3600 5200
Wire Wire Line
	3600 3350 3850 3350
Connection ~ 4000 5200
Connection ~ 4050 3350
Wire Wire Line
	9000 4100 3600 4100
Connection ~ 2950 4800
Connection ~ 2950 5100
Wire Wire Line
	3350 5100 2950 5100
Wire Wire Line
	2950 4800 3350 4800
Wire Wire Line
	3350 5000 3350 5100
Wire Wire Line
	3350 4900 3350 4800
$Comp
L power:GND #PWR02
U 1 1 5FBE769A
P 2950 5400
F 0 "#PWR02" H 2950 5150 50  0001 C CNN
F 1 "GND" H 2955 5227 50  0000 C CNN
F 2 "" H 2950 5400 50  0001 C CNN
F 3 "" H 2950 5400 50  0001 C CNN
	1    2950 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FBE76A0
P 2950 4500
F 0 "#PWR01" H 2950 4250 50  0001 C CNN
F 1 "GND" H 2955 4327 50  0000 C CNN
F 2 "" H 2950 4500 50  0001 C CNN
F 3 "" H 2950 4500 50  0001 C CNN
	1    2950 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5FBE76A6
P 2950 5250
F 0 "C3" H 3065 5296 50  0000 L CNN
F 1 "3300pF" H 3065 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2988 5100 50  0001 C CNN
F 3 "~" H 2950 5250 50  0001 C CNN
	1    2950 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FBE76AC
P 2950 4950
F 0 "C2" H 3065 4996 50  0000 L CNN
F 1 "3300pF" H 3065 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2988 4800 50  0001 C CNN
F 3 "~" H 2950 4950 50  0001 C CNN
	1    2950 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FBE76B2
P 2950 4650
F 0 "C1" H 3065 4696 50  0000 L CNN
F 1 "3300pF" H 3065 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2988 4500 50  0001 C CNN
F 3 "~" H 2950 4650 50  0001 C CNN
	1    2950 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FBE76B8
P 2800 5100
F 0 "R2" V 2900 4950 50  0000 C CNN
F 1 "20 Ohm" V 3000 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2730 5100 50  0001 C CNN
F 3 "~" H 2800 5100 50  0001 C CNN
	1    2800 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FBE76BE
P 2800 4800
F 0 "R1" V 2600 4650 50  0000 C CNN
F 1 "20 Ohm" V 2700 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2730 4800 50  0001 C CNN
F 3 "~" H 2800 4800 50  0001 C CNN
	1    2800 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 5000 4100 5000
Wire Wire Line
	4100 4900 3350 4900
$Comp
L Connector:AudioJack3 J1
U 1 1 5FBE76C6
P 1800 5000
F 0 "J1" H 1782 5325 50  0000 C CNN
F 1 "AudioJack3" H 1782 5234 50  0000 C CNN
F 2 "adc_mylib:Lumberg_1503_03" H 1800 5000 50  0001 C CNN
F 3 "~" H 1800 5000 50  0001 C CNN
	1    1800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5100 2650 5100
Wire Wire Line
	2300 4800 2300 5000
Wire Wire Line
	2300 5000 2000 5000
Wire Wire Line
	2300 4800 2650 4800
Wire Wire Line
	2000 4500 2950 4500
Connection ~ 2950 4500
Wire Wire Line
	2000 4500 2000 4900
Connection ~ 3000 2950
Connection ~ 3000 3250
Wire Wire Line
	3400 3250 3000 3250
Wire Wire Line
	3000 2950 3400 2950
Wire Wire Line
	3400 3150 3400 3250
Wire Wire Line
	3400 3050 3400 2950
$Comp
L power:GND #PWR04
U 1 1 5FBF2E88
P 3000 3550
F 0 "#PWR04" H 3000 3300 50  0001 C CNN
F 1 "GND" H 3005 3377 50  0000 C CNN
F 2 "" H 3000 3550 50  0001 C CNN
F 3 "" H 3000 3550 50  0001 C CNN
	1    3000 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FBF2E8E
P 3000 2650
F 0 "#PWR03" H 3000 2400 50  0001 C CNN
F 1 "GND" H 3005 2477 50  0000 C CNN
F 2 "" H 3000 2650 50  0001 C CNN
F 3 "" H 3000 2650 50  0001 C CNN
	1    3000 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 5FBF2E94
P 3000 3400
F 0 "C6" H 3115 3446 50  0000 L CNN
F 1 "3300pF" H 3115 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3038 3250 50  0001 C CNN
F 3 "~" H 3000 3400 50  0001 C CNN
	1    3000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5FBF2E9A
P 3000 3100
F 0 "C5" H 3115 3146 50  0000 L CNN
F 1 "3300pF" H 3115 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3038 2950 50  0001 C CNN
F 3 "~" H 3000 3100 50  0001 C CNN
	1    3000 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FBF2EA0
P 3000 2800
F 0 "C4" H 3115 2846 50  0000 L CNN
F 1 "3300pF" H 3115 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3038 2650 50  0001 C CNN
F 3 "~" H 3000 2800 50  0001 C CNN
	1    3000 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FBF2EA6
P 2850 3250
F 0 "R4" V 2950 3100 50  0000 C CNN
F 1 "20 Ohm" V 3050 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2780 3250 50  0001 C CNN
F 3 "~" H 2850 3250 50  0001 C CNN
	1    2850 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FBF2EAC
P 2850 2950
F 0 "R3" V 2650 2800 50  0000 C CNN
F 1 "20 Ohm" V 2750 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2780 2950 50  0001 C CNN
F 3 "~" H 2850 2950 50  0001 C CNN
	1    2850 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 3150 4150 3150
Wire Wire Line
	4150 3050 3400 3050
$Comp
L Connector:AudioJack3 J2
U 1 1 5FBF2EB4
P 1850 3150
F 0 "J2" H 1832 3475 50  0000 C CNN
F 1 "AudioJack3" H 1832 3384 50  0000 C CNN
F 2 "adc_mylib:Lumberg_1503_03" H 1850 3150 50  0001 C CNN
F 3 "~" H 1850 3150 50  0001 C CNN
	1    1850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3250 2700 3250
Wire Wire Line
	2350 2950 2350 3150
Wire Wire Line
	2350 3150 2050 3150
Wire Wire Line
	2350 2950 2700 2950
Wire Wire Line
	2050 2650 3000 2650
Connection ~ 3000 2650
Wire Wire Line
	2050 2650 2050 3050
$Comp
L Device:C C10
U 1 1 5FC0540B
P 4000 5650
F 0 "C10" H 4115 5696 50  0000 L CNN
F 1 "47uF" H 4115 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4038 5500 50  0001 C CNN
F 3 "~" H 4000 5650 50  0001 C CNN
	1    4000 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FC05411
P 4000 5800
F 0 "#PWR08" H 4000 5550 50  0001 C CNN
F 1 "GND" H 4005 5627 50  0000 C CNN
F 2 "" H 4000 5800 50  0001 C CNN
F 3 "" H 4000 5800 50  0001 C CNN
	1    4000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5300 4000 5500
$Comp
L Device:C C9
U 1 1 5FC0F532
P 3850 3500
F 0 "C9" H 3965 3546 50  0000 L CNN
F 1 "47uF" H 3965 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3888 3350 50  0001 C CNN
F 3 "~" H 3850 3500 50  0001 C CNN
	1    3850 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FC0F538
P 3850 3650
F 0 "#PWR07" H 3850 3400 50  0001 C CNN
F 1 "GND" V 3850 3450 50  0000 C CNN
F 2 "" H 3850 3650 50  0001 C CNN
F 3 "" H 3850 3650 50  0001 C CNN
	1    3850 3650
	0    -1   -1   0   
$EndComp
Connection ~ 3850 3350
Wire Wire Line
	3850 3350 4050 3350
$Comp
L Device:C C8
U 1 1 5FC2DB8F
P 3300 4200
F 0 "C8" H 3100 4200 50  0000 L CNN
F 1 "100nF" H 3050 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3338 4050 50  0001 C CNN
F 3 "~" H 3300 4200 50  0001 C CNN
	1    3300 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 5FC34AB7
P 3300 4000
F 0 "C7" H 3415 4046 50  0000 L CNN
F 1 "100nF" H 3415 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3338 3850 50  0001 C CNN
F 3 "~" H 3300 4000 50  0001 C CNN
	1    3300 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FC3C06E
P 3150 4000
F 0 "#PWR05" H 3150 3750 50  0001 C CNN
F 1 "GND" H 3155 3827 50  0000 C CNN
F 2 "" H 3150 4000 50  0001 C CNN
F 3 "" H 3150 4000 50  0001 C CNN
	1    3150 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FC4301F
P 3150 4200
F 0 "#PWR06" H 3150 3950 50  0001 C CNN
F 1 "GND" H 3155 4027 50  0000 C CNN
F 2 "" H 3150 4200 50  0001 C CNN
F 3 "" H 3150 4200 50  0001 C CNN
	1    3150 4200
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5FC54C26
P 7600 2700
F 0 "C11" H 7715 2746 50  0000 L CNN
F 1 "0.1uF" H 7715 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7638 2550 50  0001 C CNN
F 3 "~" H 7600 2700 50  0001 C CNN
	1    7600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5FC5BAFC
P 8100 2700
F 0 "C12" H 8215 2746 50  0000 L CNN
F 1 "0.1uF" H 8215 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 8138 2550 50  0001 C CNN
F 3 "~" H 8100 2700 50  0001 C CNN
	1    8100 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5FC63595
P 7600 2550
F 0 "#PWR018" H 7600 2300 50  0001 C CNN
F 1 "GND" V 7605 2422 50  0000 R CNN
F 2 "" H 7600 2550 50  0001 C CNN
F 3 "" H 7600 2550 50  0001 C CNN
	1    7600 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5FC6A684
P 8100 2550
F 0 "#PWR019" H 8100 2300 50  0001 C CNN
F 1 "GND" V 8105 2422 50  0000 R CNN
F 2 "" H 8100 2550 50  0001 C CNN
F 3 "" H 8100 2550 50  0001 C CNN
	1    8100 2550
	-1   0    0    1   
$EndComp
Connection ~ 3450 4000
Wire Wire Line
	3450 4000 3450 4200
Connection ~ 3450 4200
Wire Wire Line
	3450 4200 3450 4700
Connection ~ 4000 5300
Connection ~ 7600 2850
Wire Wire Line
	7600 2850 8100 2850
Connection ~ 8100 2850
Wire Wire Line
	9000 4300 7500 4300
Wire Wire Line
	7500 3450 7500 4300
Wire Wire Line
	8750 4400 9000 4400
Connection ~ 7500 4300
Wire Wire Line
	7500 4300 7500 5300
Wire Wire Line
	8750 4400 8750 5100
Connection ~ 3600 4100
Wire Wire Line
	3600 4100 3600 3350
Wire Wire Line
	3600 4100 3600 5200
Connection ~ 7800 4200
Wire Wire Line
	7800 4200 7800 4900
Wire Wire Line
	7800 3050 7800 4200
Connection ~ 3450 3750
Wire Wire Line
	3450 3750 3450 2850
Wire Wire Line
	3450 3750 3450 4000
Wire Wire Line
	8400 3700 8400 3800
Wire Wire Line
	8400 3800 9000 3800
Wire Wire Line
	8800 3750 8800 3700
Wire Wire Line
	8800 3700 9000 3700
Wire Wire Line
	8800 3750 3450 3750
Wire Wire Line
	8750 3250 8750 3600
$EndSCHEMATC
