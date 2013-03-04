//Maya ASCII 2013 scene
//Name: F - Forest Path 1.ma
//Last modified: Sun, Mar 03, 2013 09:41:45 PM
//Codeset: UTF-8
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220220-825135";
fileInfo "osv" "Mac OS X 10.8.2";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -458.92084256273927 1519.8538489622049 1083.4435672649747 ;
	setAttr ".r" -type "double3" -40.800000000000267 -12.799999999999525 8.1540193494987543e-16 ;
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 0 2.2737367544323206e-13 ;
	setAttr ".rpt" -type "double3" -8.9341376365482135e-10 2.979902989183978e-09 -1.7188788305704272e-10 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 2062.8543127254934;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -85.315332412719727 -0.27481138706230013 -563.80310058593784 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -85.315332412719826 436.88669808023673 -563.80310058593761 ;
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999929 0 ;
	setAttr ".rpt" -type "double3" 9.2763866385552737e-16 1.2914182621868679e-15 1.5322834223012933e-26 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 437.1615094672988;
	setAttr ".ow" 1285.3869227531743;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -85.315332412719854 -0.27481138706207275 -563.80310058593761 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "transform3" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 1.375 0.25 0 ;
createNode transform -n "transform2" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" -1.375 0.25 0 ;
createNode transform -n "transform1" -p "pCube3";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:69]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 142 ".uvst[0].uvsp[0:141]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.2647059 0.625 0.2647059 0.375 0.27941179 0.625 0.27941179
		 0.375 0.29411769 0.625 0.29411769 0.375 0.30882359 0.625 0.30882359 0.375 0.32352948
		 0.625 0.32352948 0.375 0.33823538 0.625 0.33823538 0.375 0.35294127 0.625 0.35294127
		 0.375 0.36764717 0.625 0.36764717 0.375 0.38235307 0.625 0.38235307 0.375 0.39705896
		 0.625 0.39705896 0.375 0.41176486 0.625 0.41176486 0.375 0.42647076 0.625 0.42647076
		 0.375 0.44117665 0.625 0.44117665 0.375 0.45588255 0.625 0.45588255 0.375 0.47058845
		 0.625 0.47058845 0.375 0.48529434 0.625 0.48529434 0.375 0.50000024 0.625 0.50000024
		 0.375 0.75000024 0.625 0.75000024 0.375 0.76470613 0.625 0.76470613 0.375 0.77941203
		 0.625 0.77941203 0.375 0.79411793 0.625 0.79411793 0.375 0.80882382 0.625 0.80882382
		 0.375 0.82352972 0.625 0.82352972 0.375 0.83823562 0.625 0.83823562 0.375 0.85294151
		 0.625 0.85294151 0.375 0.86764741 0.625 0.86764741 0.375 0.88235331 0.625 0.88235331
		 0.375 0.8970592 0.625 0.8970592 0.375 0.9117651 0.625 0.9117651 0.375 0.92647099
		 0.625 0.92647099 0.375 0.94117689 0.625 0.94117689 0.375 0.95588279 0.625 0.95588279
		 0.375 0.97058868 0.625 0.97058868 0.375 0.98529458 0.625 0.98529458 0.375 1.000000476837
		 0.625 1.000000476837 0.875 0 0.8602941 0 0.84558821 0 0.83088231 0 0.81617641 0 0.80147052
		 0 0.78676462 0 0.77205873 0 0.75735283 0 0.74264693 0 0.72794104 0 0.71323514 0 0.69852924
		 0 0.68382335 0 0.66911745 0 0.65441155 0 0.63970566 0 0.875 0.25 0.8602941 0.25 0.84558821
		 0.25 0.83088231 0.25 0.81617641 0.25 0.80147052 0.25 0.78676462 0.25 0.77205873 0.25
		 0.75735283 0.25 0.74264693 0.25 0.72794104 0.25 0.71323514 0.25 0.69852924 0.25 0.68382335
		 0.25 0.66911745 0.25 0.65441155 0.25 0.63970566 0.25 0.125 0 0.13970588 0 0.15441176
		 0 0.16911764 0 0.18382353 0 0.19852941 0 0.21323529 0 0.22794117 0 0.24264705 0 0.25735295
		 0 0.27205884 0 0.28676474 0 0.30147064 0 0.31617653 0 0.33088243 0 0.34558833 0 0.36029422
		 0 0.125 0.25 0.13970588 0.25 0.15441176 0.25 0.16911764 0.25 0.18382353 0.25 0.19852941
		 0.25 0.21323529 0.25 0.22794117 0.25 0.24264705 0.25 0.25735295 0.25 0.27205884 0.25
		 0.28676474 0.25 0.30147064 0.25 0.31617653 0.25 0.33088243 0.25 0.34558833 0.25 0.36029422
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".vt[0:71]"  -0.125 -0.25 8 0.125 -0.25 8 -0.125 0.25 8
		 0.125 0.25 8 -0.125 0.25 7.058823586 0.125 0.25 7.058823586 -0.125 0.25 6.11764717
		 0.125 0.25 6.11764717 -0.125 0.25 5.17647076 0.125 0.25 5.17647076 -0.125 0.25 4.23529434
		 0.125 0.25 4.23529434 -0.125 0.25 3.29411793 0.125 0.25 3.29411793 -0.125 0.25 2.35294151
		 0.125 0.25 2.35294151 -0.125 0.25 1.4117651 0.125 0.25 1.4117651 -0.125 0.25 0.47058862
		 0.125 0.25 0.47058862 -0.125 0.25 -0.47058785 0.125 0.25 -0.47058785 -0.125 0.25 -1.41176438
		 0.125 0.25 -1.41176438 -0.125 0.25 -2.3529408 0.125 0.25 -2.3529408 -0.125 0.25 -3.29411721
		 0.125 0.25 -3.29411721 -0.125 0.25 -4.23529387 0.125 0.25 -4.23529387 -0.125 0.25 -5.17647028
		 0.125 0.25 -5.17647028 -0.125 0.25 -6.11764669 0.125 0.25 -6.11764669 -0.125 0.25 -7.058823109
		 0.125 0.25 -7.058823109 -0.125 0.25 -8 0.125 0.25 -8 -0.125 -0.25 -8 0.125 -0.25 -8
		 -0.125 -0.25 -7.058823586 0.125 -0.25 -7.058823586 -0.125 -0.25 -6.11764717 0.125 -0.25 -6.11764717
		 -0.125 -0.25 -5.17647076 0.125 -0.25 -5.17647076 -0.125 -0.25 -4.23529434 0.125 -0.25 -4.23529434
		 -0.125 -0.25 -3.29411793 0.125 -0.25 -3.29411793 -0.125 -0.25 -2.35294151 0.125 -0.25 -2.35294151
		 -0.125 -0.25 -1.4117651 0.125 -0.25 -1.4117651 -0.125 -0.25 -0.47058862 0.125 -0.25 -0.47058862
		 -0.125 -0.25 0.47058785 0.125 -0.25 0.47058785 -0.125 -0.25 1.41176438 0.125 -0.25 1.41176438
		 -0.125 -0.25 2.3529408 0.125 -0.25 2.3529408 -0.125 -0.25 3.29411721 0.125 -0.25 3.29411721
		 -0.125 -0.25 4.23529387 0.125 -0.25 4.23529387 -0.125 -0.25 5.17647028 0.125 -0.25 5.17647028
		 -0.125 -0.25 6.11764669 0.125 -0.25 6.11764669 -0.125 -0.25 7.058823109 0.125 -0.25 7.058823109;
	setAttr -s 140 ".ed[0:139]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 1 10 11 1 12 13 1
		 14 15 1 16 17 1 18 19 1 20 21 1 22 23 1 24 25 1 26 27 1 28 29 1 30 31 1 32 33 1 34 35 1
		 36 37 0 38 39 0 40 41 1 42 43 1 44 45 1 46 47 1 48 49 1 50 51 1 52 53 1 54 55 1 56 57 1
		 58 59 1 60 61 1 62 63 1 64 65 1 66 67 1 68 69 1 70 71 1 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0
		 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 24 0 23 25 0 24 26 0 25 27 0 26 28 0 27 29 0
		 28 30 0 29 31 0 30 32 0 31 33 0 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 40 0
		 39 41 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 48 0 47 49 0 48 50 0 49 51 0
		 50 52 0 51 53 0 52 54 0 53 55 0 54 56 0 55 57 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0
		 61 63 0 62 64 0 63 65 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 0 0 71 1 0
		 41 35 1 43 33 1 45 31 1 47 29 1 49 27 1 51 25 1 53 23 1 55 21 1 57 19 1 59 17 1 61 15 1
		 63 13 1 65 11 1 67 9 1 69 7 1 71 5 1 40 34 1 42 32 1 44 30 1 46 28 1 48 26 1 50 24 1
		 52 22 1 54 20 1 56 18 1 58 16 1 60 14 1 62 12 1 64 10 1 66 8 1 68 6 1 70 4 1;
	setAttr -s 70 -ch 280 ".fc[0:69]" -type "polyFaces" 
		f 4 0 37 -2 -37
		mu 0 4 0 1 3 2
		f 4 1 39 -3 -39
		mu 0 4 2 3 5 4
		f 4 2 41 -4 -41
		mu 0 4 4 5 7 6
		f 4 3 43 -5 -43
		mu 0 4 6 7 9 8
		f 4 4 45 -6 -45
		mu 0 4 8 9 11 10
		f 4 5 47 -7 -47
		mu 0 4 10 11 13 12
		f 4 6 49 -8 -49
		mu 0 4 12 13 15 14
		f 4 7 51 -9 -51
		mu 0 4 14 15 17 16
		f 4 8 53 -10 -53
		mu 0 4 16 17 19 18
		f 4 9 55 -11 -55
		mu 0 4 18 19 21 20
		f 4 10 57 -12 -57
		mu 0 4 20 21 23 22
		f 4 11 59 -13 -59
		mu 0 4 22 23 25 24
		f 4 12 61 -14 -61
		mu 0 4 24 25 27 26
		f 4 13 63 -15 -63
		mu 0 4 26 27 29 28
		f 4 14 65 -16 -65
		mu 0 4 28 29 31 30
		f 4 15 67 -17 -67
		mu 0 4 30 31 33 32
		f 4 16 69 -18 -69
		mu 0 4 32 33 35 34
		f 4 17 71 -19 -71
		mu 0 4 34 35 37 36
		f 4 18 73 -20 -73
		mu 0 4 36 37 39 38
		f 4 19 75 -21 -75
		mu 0 4 38 39 41 40
		f 4 20 77 -22 -77
		mu 0 4 40 41 43 42
		f 4 21 79 -23 -79
		mu 0 4 42 43 45 44
		f 4 22 81 -24 -81
		mu 0 4 44 45 47 46
		f 4 23 83 -25 -83
		mu 0 4 46 47 49 48
		f 4 24 85 -26 -85
		mu 0 4 48 49 51 50
		f 4 25 87 -27 -87
		mu 0 4 50 51 53 52
		f 4 26 89 -28 -89
		mu 0 4 52 53 55 54
		f 4 27 91 -29 -91
		mu 0 4 54 55 57 56
		f 4 28 93 -30 -93
		mu 0 4 56 57 59 58
		f 4 29 95 -31 -95
		mu 0 4 58 59 61 60
		f 4 30 97 -32 -97
		mu 0 4 60 61 63 62
		f 4 31 99 -33 -99
		mu 0 4 62 63 65 64
		f 4 32 101 -34 -101
		mu 0 4 64 65 67 66
		f 4 33 103 -35 -103
		mu 0 4 66 67 69 68
		f 4 34 105 -36 -105
		mu 0 4 68 69 71 70
		f 4 35 107 -1 -107
		mu 0 4 70 71 73 72
		f 4 -76 -74 -72 -109
		mu 0 4 75 74 91 92
		f 4 -78 108 -70 -110
		mu 0 4 76 75 92 93
		f 4 -80 109 -68 -111
		mu 0 4 77 76 93 94
		f 4 -82 110 -66 -112
		mu 0 4 78 77 94 95
		f 4 -84 111 -64 -113
		mu 0 4 79 78 95 96
		f 4 -86 112 -62 -114
		mu 0 4 80 79 96 97
		f 4 -88 113 -60 -115
		mu 0 4 81 80 97 98
		f 4 -90 114 -58 -116
		mu 0 4 82 81 98 99
		f 4 -92 115 -56 -117
		mu 0 4 83 82 99 100
		f 4 -94 116 -54 -118
		mu 0 4 84 83 100 101
		f 4 -96 117 -52 -119
		mu 0 4 85 84 101 102
		f 4 -98 118 -50 -120
		mu 0 4 86 85 102 103
		f 4 -100 119 -48 -121
		mu 0 4 87 86 103 104
		f 4 -102 120 -46 -122
		mu 0 4 88 87 104 105
		f 4 -104 121 -44 -123
		mu 0 4 89 88 105 106
		f 4 -106 122 -42 -124
		mu 0 4 90 89 106 107
		f 4 -108 123 -40 -38
		mu 0 4 1 90 107 3
		f 4 74 124 70 72
		mu 0 4 108 109 126 125
		f 4 76 125 68 -125
		mu 0 4 109 110 127 126
		f 4 78 126 66 -126
		mu 0 4 110 111 128 127
		f 4 80 127 64 -127
		mu 0 4 111 112 129 128
		f 4 82 128 62 -128
		mu 0 4 112 113 130 129
		f 4 84 129 60 -129
		mu 0 4 113 114 131 130
		f 4 86 130 58 -130
		mu 0 4 114 115 132 131
		f 4 88 131 56 -131
		mu 0 4 115 116 133 132
		f 4 90 132 54 -132
		mu 0 4 116 117 134 133
		f 4 92 133 52 -133
		mu 0 4 117 118 135 134
		f 4 94 134 50 -134
		mu 0 4 118 119 136 135
		f 4 96 135 48 -135
		mu 0 4 119 120 137 136
		f 4 98 136 46 -136
		mu 0 4 120 121 138 137
		f 4 100 137 44 -137
		mu 0 4 121 122 139 138
		f 4 102 138 42 -138
		mu 0 4 122 123 140 139
		f 4 104 139 40 -139
		mu 0 4 123 124 141 140
		f 4 106 36 38 -140
		mu 0 4 124 0 2 141;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface1";
	setAttr ".t" -type "double3" 0 0 -8 ;
createNode transform -n "transform8" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pPipe1";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "transform6" -p "pPipe1";
	setAttr ".v" no;
createNode mesh -n "pPipeShape1" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pPipe2";
	setAttr ".t" -type "double3" 0 0.25 0 ;
createNode transform -n "transform5" -p "pPipe2";
	setAttr ".v" no;
createNode mesh -n "pPipeShape2" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pPipe3";
	setAttr ".t" -type "double3" 0 0.25 0 ;
createNode transform -n "transform4" -p "pPipe3";
	setAttr ".v" no;
createNode mesh -n "pPipeShape3" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface2";
	setAttr ".t" -type "double3" -2.5188889157924157 0 -41.458703585240755 ;
createNode transform -n "transform7" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface3";
createNode transform -n "transform13" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "transform11" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" 1.375 0.25 0 ;
createNode transform -n "transform10" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" -1.375 0.25 0 ;
createNode transform -n "transform9" -p "pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:25]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.29166666 0.625 0.29166666 0.375 0.33333331 0.625 0.33333331
		 0.375 0.37499997 0.625 0.37499997 0.375 0.41666663 0.625 0.41666663 0.375 0.45833328
		 0.625 0.45833328 0.375 0.49999994 0.625 0.49999994 0.375 0.74999994 0.625 0.74999994
		 0.375 0.79166663 0.625 0.79166663 0.375 0.83333331 0.625 0.83333331 0.375 0.875 0.625
		 0.875 0.375 0.91666669 0.625 0.91666669 0.375 0.95833337 0.625 0.95833337 0.375 1
		 0.625 1 0.875 0 0.83333331 0 0.79166663 0 0.74999994 0 0.70833325 0 0.66666657 0
		 0.875 0.25 0.83333331 0.25 0.79166663 0.25 0.74999994 0.25 0.70833325 0.25 0.66666657
		 0.25 0.125 0 0.16666667 0 0.20833334 0 0.25 0 0.29166666 0 0.33333331 0 0.125 0.25
		 0.16666667 0.25 0.20833334 0.25 0.25 0.25 0.29166666 0.25 0.33333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  -0.125 -0.25 2.5 0.125 -0.25 2.5 -0.125 0.25 2.5
		 0.125 0.25 2.5 -0.125 0.25 1.66666675 0.125 0.25 1.66666675 -0.125 0.25 0.83333343
		 0.125 0.25 0.83333343 -0.125 0.25 1.1920929e-07 0.125 0.25 1.1920929e-07 -0.125 0.25 -0.83333319
		 0.125 0.25 -0.83333319 -0.125 0.25 -1.66666651 0.125 0.25 -1.66666651 -0.125 0.25 -2.5
		 0.125 0.25 -2.5 -0.125 -0.25 -2.5 0.125 -0.25 -2.5 -0.125 -0.25 -1.66666675 0.125 -0.25 -1.66666675
		 -0.125 -0.25 -0.83333343 0.125 -0.25 -0.83333343 -0.125 -0.25 -1.1920929e-07 0.125 -0.25 -1.1920929e-07
		 -0.125 -0.25 0.83333319 0.125 -0.25 0.83333319 -0.125 -0.25 1.66666651 0.125 -0.25 1.66666651;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 1 10 11 1 12 13 1
		 14 15 0 16 17 0 18 19 1 20 21 1 22 23 1 24 25 1 26 27 1 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0
		 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 24 0 23 25 0 24 26 0 25 27 0 26 0 0 27 1 0
		 19 13 1 21 11 1 23 9 1 25 7 1 27 5 1 18 12 1 20 10 1 22 8 1 24 6 1 26 4 1;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 15 -2 -15
		mu 0 4 0 1 3 2
		f 4 1 17 -3 -17
		mu 0 4 2 3 5 4
		f 4 2 19 -4 -19
		mu 0 4 4 5 7 6
		f 4 3 21 -5 -21
		mu 0 4 6 7 9 8
		f 4 4 23 -6 -23
		mu 0 4 8 9 11 10
		f 4 5 25 -7 -25
		mu 0 4 10 11 13 12
		f 4 6 27 -8 -27
		mu 0 4 12 13 15 14
		f 4 7 29 -9 -29
		mu 0 4 14 15 17 16
		f 4 8 31 -10 -31
		mu 0 4 16 17 19 18
		f 4 9 33 -11 -33
		mu 0 4 18 19 21 20
		f 4 10 35 -12 -35
		mu 0 4 20 21 23 22
		f 4 11 37 -13 -37
		mu 0 4 22 23 25 24
		f 4 12 39 -14 -39
		mu 0 4 24 25 27 26
		f 4 13 41 -1 -41
		mu 0 4 26 27 29 28
		f 4 -32 -30 -28 -43
		mu 0 4 31 30 36 37
		f 4 -34 42 -26 -44
		mu 0 4 32 31 37 38
		f 4 -36 43 -24 -45
		mu 0 4 33 32 38 39
		f 4 -38 44 -22 -46
		mu 0 4 34 33 39 40
		f 4 -40 45 -20 -47
		mu 0 4 35 34 40 41
		f 4 -42 46 -18 -16
		mu 0 4 1 35 41 3
		f 4 30 47 26 28
		mu 0 4 42 43 49 48
		f 4 32 48 24 -48
		mu 0 4 43 44 50 49
		f 4 34 49 22 -49
		mu 0 4 44 45 51 50
		f 4 36 50 20 -50
		mu 0 4 45 46 52 51
		f 4 38 51 18 -51
		mu 0 4 46 47 53 52
		f 4 40 14 16 -52
		mu 0 4 47 0 2 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface4";
	setAttr ".t" -type "double3" 6.6667498331058415 0 -53.17831689506059 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "transform12" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".pt[0:83]" -type "float3"  -0.78128779 0 -0.81275046 
		-0.78128779 0 -0.81275046 -0.78128779 0 -0.81275046 -0.78128779 0 -0.81275046 -0.78128779 
		0 -1.7862216 -0.78128779 0 -1.7862216 -1.1977988 0 -2.7596948 -0.36477706 0 -2.7596948 
		-1.8160294 0 -3.7331674 0.25345358 0 -3.7331674 -2.3328414 0 -4.7066393 0.77026558 
		0 -4.7066393 -3.1915035 0 -5.6801119 1.329766 0 -5.6801119 -3.6030104 0 -6.6535835 
		1.7412729 0 -6.6535835 -3.6030104 0 -6.6535835 1.7412729 0 -6.6535835 -3.1915035 
		0 -5.6801119 1.329766 0 -5.6801119 -2.3328414 0 -4.7066393 0.77026558 0 -4.7066393 
		-1.8160294 0 -3.7331676 0.25345358 0 -3.7331676 -1.1977988 0 -2.7596951 -0.36477706 
		0 -2.7596951 -0.78128779 0 -1.7862219 -0.78128779 0 -1.7862219 -0.78128779 0 -0.81275046 
		-0.78128779 0 -0.81275046 -0.78128779 0 -0.81275046 -0.78128779 0 -0.81275046 -0.78128779 
		0 -1.7862216 -0.78128779 0 -1.7862216 -0.43419552 0 -2.7596948 -0.36477706 0 -2.7596948 
		0.080996811 0 -3.7331674 0.25345358 0 -3.7331674 0.51167333 0 -4.7066393 0.77026558 
		0 -4.7066393 0.95299369 0 -5.6801119 1.329766 0 -5.6801119 1.2959158 0 -6.6535835 
		1.7412729 0 -6.6535835 1.2959158 0 -6.6535835 1.7412729 0 -6.6535835 0.95299369 0 
		-5.6801119 1.329766 0 -5.6801119 0.51167333 0 -4.7066393 0.77026558 0 -4.7066393 
		0.080996811 0 -3.7331676 0.25345358 0 -3.7331676 -0.43419552 0 -2.7596951 -0.36477706 
		0 -2.7596951 -0.78128779 0 -1.7862219 -0.78128779 0 -1.7862219 -0.78128779 0 -0.81275046 
		-0.78128779 0 -0.81275046 -0.78128779 0 -0.81275046 -0.78128779 0 -0.81275046 -0.78128779 
		0 -1.7862216 -0.78128779 0 -1.7862216 -1.1977988 0 -2.7596948 -1.1283803 0 -2.7596948 
		-1.8160294 0 -3.7331674 -1.6435723 0 -3.7331674 -2.3328414 0 -4.7066393 -2.0742483 
		0 -4.7066393 -3.1915035 0 -5.6801119 -2.8147295 0 -5.6801119 -3.6030104 0 -6.6535835 
		-3.1576517 0 -6.6535835 -3.6030104 0 -6.6535835 -3.1576517 0 -6.6535835 -3.1915035 
		0 -5.6801119 -2.8147295 0 -5.6801119 -2.3328414 0 -4.7066393 -2.0742483 0 -4.7066393 
		-1.8160294 0 -3.7331676 -1.6435723 0 -3.7331676 -1.1977988 0 -2.7596951 -1.1283803 
		0 -2.7596951 -0.78128779 0 -1.7862219 -0.78128779 0 -1.7862219;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface5";
createNode transform -n "polySurface6" -p "polySurface5";
createNode transform -n "transform21" -p "polySurface6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface7" -p "polySurface5";
createNode transform -n "transform20" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface8" -p "polySurface5";
createNode transform -n "transform19" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface9" -p "polySurface5";
createNode transform -n "transform17" -p "polySurface9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface10" -p "polySurface5";
createNode transform -n "transform16" -p "polySurface10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface11" -p "polySurface5";
createNode transform -n "transform15" -p "polySurface11";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform14" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface12";
createNode transform -n "transform18" -p "polySurface12";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface13";
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "polySurface14" -p "polySurface13";
createNode transform -n "transform25" -p "polySurface14";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface15" -p "polySurface13";
createNode transform -n "transform24" -p "polySurface15";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface16" -p "polySurface13";
createNode transform -n "transform23" -p "polySurface16";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform22" -p "polySurface13";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[252]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[602]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -295.45623579871409 15.042316725359122 -868.0930639446799 ;
createNode transform -n "transform46" -p "pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform46";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" -100.5160389830672 12.141922984130671 -626.555639650854 ;
	setAttr ".s" -type "double3" 1 0.90572162748422191 1 ;
createNode mesh -n "polySurfaceShape14" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform45" -p "pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube9";
	setAttr ".t" -type "double3" -19.859639255238207 23.586654216429771 -142.0400227197307 ;
	setAttr ".s" -type "double3" 1 1.4345543341291256 1 ;
createNode mesh -n "polySurfaceShape15" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform44" -p "pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube10";
	setAttr ".t" -type "double3" 12.1837623009783 7.9872748574847394 -195.26178084235875 ;
	setAttr ".s" -type "double3" 1 0.53495009632615664 1 ;
createNode mesh -n "polySurfaceShape16" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform43" -p "pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" -173.61861278893485 12.274254295977991 -620.78534252707652 ;
	setAttr ".s" -type "double3" 1 0.79402659538688225 1 ;
createNode mesh -n "polySurfaceShape17" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform42" -p "pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube12";
	setAttr ".t" -type "double3" -41.230552477007137 12.274254295977936 -340.82187188299974 ;
	setAttr ".s" -type "double3" 1 0.79402659538688225 1 ;
createNode mesh -n "polySurfaceShape18" -p "pCube12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform41" -p "pCube12";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube13";
	setAttr ".t" -type "double3" -96.646561564898988 12.274254295977991 -556.4408123684459 ;
	setAttr ".s" -type "double3" 1 0.79402659538688225 1 ;
createNode mesh -n "polySurfaceShape19" -p "pCube13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform40" -p "pCube13";
	setAttr ".v" no;
createNode mesh -n "pCubeShape13" -p "transform40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube14";
	setAttr ".t" -type "double3" -265.54622353986781 12.274254295978048 -769.2226615317154 ;
	setAttr ".s" -type "double3" 1 0.79402659538688225 1 ;
createNode mesh -n "polySurfaceShape20" -p "pCube14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform39" -p "pCube14";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube15";
	setAttr ".t" -type "double3" -219.96730577415229 7.9872748574847954 -906.72886235185365 ;
	setAttr ".s" -type "double3" 1 0.53495009632615664 1 ;
createNode mesh -n "polySurfaceShape21" -p "pCube15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform38" -p "pCube15";
	setAttr ".v" no;
createNode mesh -n "pCubeShape15" -p "transform38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube16";
	setAttr ".t" -type "double3" -204.45603180762129 7.9872748574847972 -1017.3754239167538 ;
	setAttr ".s" -type "double3" 1 0.53495009632615675 1 ;
createNode mesh -n "polySurfaceShape22" -p "pCube16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform37" -p "pCube16";
	setAttr ".v" no;
createNode mesh -n "pCubeShape16" -p "transform37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube17";
	setAttr ".t" -type "double3" -21.556369832652251 7.9872748574847421 -1068.443067715938 ;
	setAttr ".s" -type "double3" 1 0.53495009632615687 1 ;
createNode mesh -n "polySurfaceShape23" -p "pCube17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform36" -p "pCube17";
	setAttr ".v" no;
createNode mesh -n "pCubeShape17" -p "transform36";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube18";
	setAttr ".t" -type "double3" -78.70403461298018 23.586654216429771 -413.842079896462 ;
	setAttr ".s" -type "double3" 1 1.4345543341291256 1 ;
createNode mesh -n "polySurfaceShape24" -p "pCube18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform35" -p "pCube18";
	setAttr ".v" no;
createNode mesh -n "pCubeShape18" -p "transform35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube19";
	setAttr ".t" -type "double3" -79.624013631837599 23.586654216429771 -491.00225534749205 ;
	setAttr ".s" -type "double3" 1 1.4345543341291256 1 ;
createNode mesh -n "polySurfaceShape25" -p "pCube19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform34" -p "pCube19";
	setAttr ".v" no;
createNode mesh -n "pCubeShape19" -p "transform34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube20";
	setAttr ".t" -type "double3" -35.74182644353801 23.586654216429771 -244.17531031809983 ;
	setAttr ".s" -type "double3" 1 1.4345543341291256 1 ;
createNode mesh -n "polySurfaceShape26" -p "pCube20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform33" -p "pCube20";
	setAttr ".v" no;
createNode mesh -n "pCubeShape20" -p "transform33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube21";
	setAttr ".t" -type "double3" -97.972378920544529 12.141922984130616 -1011.5157846615148 ;
	setAttr ".s" -type "double3" 1 0.90572162748422191 1 ;
createNode mesh -n "polySurfaceShape27" -p "pCube21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform32" -p "pCube21";
	setAttr ".v" no;
createNode mesh -n "pCubeShape21" -p "transform32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube22";
	setAttr ".t" -type "double3" -156.22547933061435 12.141922984130671 -540.55862518014601 ;
	setAttr ".s" -type "double3" 1 0.9057216274842218 1 ;
createNode mesh -n "polySurfaceShape28" -p "pCube22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform31" -p "pCube22";
	setAttr ".v" no;
createNode mesh -n "pCubeShape22" -p "transform31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube23";
	setAttr ".t" -type "double3" -225.82694502939077 12.141922984130726 -810.08230078695362 ;
	setAttr ".s" -type "double3" 1 0.9057216274842218 1 ;
createNode mesh -n "polySurfaceShape29" -p "pCube23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform30" -p "pCube23";
	setAttr ".v" no;
createNode mesh -n "pCubeShape23" -p "transform30";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube24";
	setAttr ".t" -type "double3" -134.85456610884535 15.042316725359065 -431.23788097089226 ;
createNode mesh -n "polySurfaceShape30" -p "pCube24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform29" -p "pCube24";
	setAttr ".v" no;
createNode mesh -n "pCubeShape24" -p "transform29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube25";
	setAttr ".t" -type "double3" -264.92189199484653 15.04231672535912 -961.23154106343372 ;
createNode mesh -n "polySurfaceShape31" -p "pCube25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform28" -p "pCube25";
	setAttr ".v" no;
createNode mesh -n "pCubeShape25" -p "transform28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube26";
	setAttr ".t" -type "double3" -156.89124201580631 15.04231672535906 -708.41847331814085 ;
createNode mesh -n "polySurfaceShape32" -p "pCube26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2.5 -20 2.5 2.5 -20 2.5 -2.5 20 2.5 2.5 20 2.5
		 -2.5 20 -2.5 2.5 20 -2.5 -2.5 -20 -2.5 2.5 -20 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform27" -p "pCube26";
	setAttr ".v" no;
createNode mesh -n "pCubeShape26" -p "transform27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface17";
createNode transform -n "transform26" -p "polySurface17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface18";
	setAttr ".s" -type "double3" 7 7 7 ;
createNode mesh -n "polySurfaceShape37" -p "polySurface18";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 3;
	setAttr ".h" 0.5;
	setAttr ".d" 16;
	setAttr ".sd" 17;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 16;
	setAttr ".sd" 17;
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite1";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:69]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:69]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:209]";
createNode polyPipe -n "polyPipe1";
	setAttr ".r" 14;
	setAttr ".h" 1;
	setAttr ".t" 8;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe2";
	setAttr ".r" 14;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe3";
	setAttr ".r" 6.25;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyUnite -n "polyUnite2";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:383]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 13 "f[0:3]" "f[20:36]" "f[52:68]" "f[84:100]" "f[116:132]" "f[148:164]" "f[180:196]" "f[212:228]" "f[244:259]" "f[276:291]" "f[309:323]" "f[340:355]" "f[372:383]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 5 "f[0]" "f[121]" "f[137]" "f[153:154]" "f[170]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 12 "f[0:2]" "f[15:17]" "f[30:32]" "f[45:47]" "f[60:62]" "f[75:77]" "f[90:92]" "f[105:107]" "f[120:122]" "f[135:137]" "f[150:152]" "f[165:167]";
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:209]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -8 1;
	setAttr ".pc" -type "double3" 8.8583815324367752 6.2400997974778774 -45.502830344915502 ;
	setAttr ".ro" -type "double3" 32.834594726810877 -10.891589520042077 110.260055868842 ;
	setAttr ".ps" -type "double2" 13.965584754943848 1 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 216 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 0 4.7683716e-07 0 0 4.7683716e-07
		 0 0 4.7683716e-07 0 0 4.7683716e-07 -0.17905135 0 0.1113555 0.26475343 0 0.1113555
		 -0.21948871 0 0.019172758 0.21665618 0 -0.22199306 -0.64721245 0 -0.17213479 0.11641003
		 0 -0.41329917 -1.16631949 0 -0.87434769 0.4490338 0 -1.57425952 -1.33104515 0 -1.86329556
		 0.2843079 0 -2.56320858 -1.35393023 0 -2.72124386 0.088302441 0 -4.025968075 -1.49739313
		 0 -3.86674905 -0.20337883 0 -5.59797907 -1.98134279 0 -4.78623962 -0.68732727 0 -6.51747131
		 -2.52691722 0 -5.6996994 -1.10005414 0 -7.44393253 -3.28596687 0 -6.42152214 -1.9027226
		 0 -9.29497528 -4.13603401 0 -7.14541578 -2.69603395 0 -10.56887817 -5.0070700645
		 0 -8.2371912 -3.043956757 0 -11.72153473 -6.010707855 0 -9.0039615631 -3.47584438
		 0 -13.38797855 -7.15856123 0 -10.53294373 -3.95406961 0 -15.013180733 -8.33780003
		 0 -12.057420731 -4.74582624 0 -16.59333229 -9.42717552 0 -13.59480667 -5.83519745
		 0 -18.13072586 -10.51655102 0 -15.13219547 -6.92457724 0 -19.66810226 -10.51655102
		 0 -15.13219547 -6.92457724 0 -19.66810226 -9.42717552 0 -13.59481144 -5.83519983
		 0 -18.13072586 -8.33780003 0 -12.057418823 -4.74582815 0 -16.59333611 -7.15856314
		 0 -10.53294373 -3.95407057 0 -15.013183594 -6.010708332 0 -9.0039596558 -3.47584438
		 0 -13.38797951 -5.0070714951 0 -8.2371912 -3.04395771 0 -11.72153759 -4.13603401
		 0 -7.14541912 -2.17291927 0 -10.62976074 -3.28596735 0 -6.42152262 -1.90272379 0
		 -9.29497623 -2.52691722 0 -5.6996994 -1.10005462 0 -7.44393301 -1.98134327 0 -4.7862401
		 -0.68732822 0 -6.51747131 -1.49739361 0 -3.86674953 -0.2033793 0 -5.59798002 -1.35393071
		 0 -2.72124481 0.088302135 0 -4.025968552 -1.33104551 0 -1.86329675 0.2843079 0 -2.56321001
		 -1.16631949 0 -0.87434781 0.4490338 0 -1.5742594 -0.64721245 0 -0.17213455 0.11641003
		 0 -0.41329893 -0.21948871 0 0.019172519 0.21665612 0 -0.22199258 -0.17905135 0 0.1113555
		 0.26475343 0 0.1113555 0 0 4.7683716e-07 0 0 4.7683716e-07 0 0 4.7683716e-07 0 0
		 4.7683716e-07 0.22776972 0 0.1113555 0.26475343 0 0.1113555 0.18031083 0 -0.20189473
		 0.21665618 0 -0.22199306 0.052774664 0 -0.39320228 0.11641003 0 -0.41329917 0.31442103
		 0 -1.51593375 0.4490338 0 -1.57425952 -0.00066445395 0 -2.50488234 0.10243013 0 -2.56320858
		 -0.031883821 0 -3.9172411 0.088302441 0 -4.025968075 -0.31121343 0 -5.45371151 -0.20337883
		 0 -5.59797907 -0.93846905 0 -6.35917521 -0.86935127 0 -6.49965572 -1.21895838 0 -7.29858017
		 -1.10005414 0 -7.44393253 -2.017993212 0 -9.05551815 -1.9027226 0 -9.29497528 -2.81130457
		 0 -10.28414154 -2.69603395 0 -10.56887817 -3.20755053 0 -11.43117809 -3.043956757
		 0 -11.72153473 -3.68708372 0 -13.022643089 -3.47584438 0 -13.38797855 -4.22110558
		 0 -14.63983345 -3.95406961 0 -15.013180733 -5.045156479 0 -16.21533966 -4.74582624
		 0 -16.59333229 -6.13453245 0 -17.75272369 -5.83519745 0 -18.13072586 -7.22390985
		 0 -19.29011345 -6.92457724 0 -19.66810226 -7.22390985 0 -19.29011345 -6.92457724
		 0 -19.66810226 -6.13453579 0 -17.7527256 -5.83519983 0 -18.13072586 -5.045157433
		 0 -16.21534348 -4.74582815 0 -16.59333611 -4.22110748 0 -14.63983345 -3.95407057
		 0 -15.013183594 -3.68708372 0 -13.022643089 -3.47584438 0 -13.38797951 -3.207551
		 0 -11.43118477 -3.04395771 0 -11.72153759 -2.81130648 0 -10.28414249 -2.69603443
		 0 -10.56888008 -2.01799345 0 -9.05551815 -1.90272379 0 -9.29497623 -1.21895933 0
		 -7.29858065 -1.10005462 0 -7.44393301 -0.93846905 0 -6.35917616 -0.86935198 0 -6.49965572
		 -0.31121367 0 -5.45371246 -0.2033793 0 -5.59798002 -0.031884242 0 -3.9172411 0.088302135
		 0 -4.025968552 -0.00066445395 0 -2.50488281 0.10243013 0 -2.56321001 0.31442103 0
		 -1.51593506 0.4490338 0 -1.5742594 0.052774664 0 -0.39320251 0.11641003 0 -0.41329893
		 0.18031079 0 -0.20189449 0.21665612 0 -0.22199258 0.22776972 0 0.1113555 0.26475343
		 0 0.1113555 0 0 4.7683716e-07 0 0 4.7683716e-07 0 0 4.7683716e-07 0 0 4.7683716e-07
		 -0.17905135 0 0.1113555 -0.1420676 0 0.1113555 -0.21948871 0 0.019172758 -0.18314323
		 0 -0.00092473626 -0.64721245 0 -0.17213479 -0.58357698 0 -0.19223174 -1.16631949
		 0 -0.87434769 -1.031706572 0 -0.93267375 -1.33104515 0 -1.86329556 -1.19643235 0
		 -1.9216218 -1.35393023 0 -2.72124386 -1.23374391 0 -2.82997131 -1.49739337 0 -3.86674905
		 -1.38955927 0 -4.011017799 -1.98134279 0 -4.78623962 -1.87350893 0 -4.93050957 -2.52691722
		 0 -5.6996994 -2.4080112 0 -5.84505177;
	setAttr ".tk[166:215]" -3.28596687 0 -6.42152214 -3.17069435 0 -6.66097641
		 -4.079280853 0 -7.15202188 -3.96400738 0 -7.43675852 -5.0070700645 0 -8.2371912 -4.84347916
		 0 -8.52755547 -6.010707855 0 -9.0039615631 -5.79946947 0 -9.36929989 -7.15856123
		 0 -10.53294373 -6.89152193 0 -10.90629864 -8.33780003 0 -12.057420731 -8.038463593
		 0 -12.43541241 -9.42717552 0 -13.59480667 -9.1278429 0 -13.97280693 -10.51655102
		 0 -15.13219547 -10.21722221 0 -15.51019001 -10.51655102 0 -15.13219547 -10.21722221
		 0 -15.51019001 -9.42717552 0 -13.59481144 -9.127841 0 -13.97280598 -8.33780003 0
		 -12.057418823 -8.038463593 0 -12.43541241 -7.15856314 0 -10.53294373 -6.89152193
		 0 -10.9063015 -6.010708332 0 -9.0039596558 -5.79946995 0 -9.36929989 -5.0070714951
		 0 -8.2371912 -4.84347963 0 -8.52755737 -4.07928133 0 -7.15202475 -3.96400785 0 -7.43676281
		 -3.28596735 0 -6.42152262 -3.1706953 0 -6.66097641 -2.52691722 0 -5.6996994 -2.40801167
		 0 -5.8450532 -1.98134327 0 -4.7862401 -1.87350869 0 -4.93050957 -1.49739408 0 -3.86674953
		 -1.38955975 0 -4.011017799 -1.35393071 0 -2.72124481 -1.23374414 0 -2.82997274 -1.33104551
		 0 -1.86329675 -1.19643235 0 -1.92162335 -1.16631949 0 -0.87434781 -1.031706572 0
		 -0.93267435 -0.64721245 0 -0.17213455 -0.58357704 0 -0.19223151 -0.21948871 0 0.019172519
		 -0.18314326 0 -0.00092473626 -0.17905135 0 0.1113555 -0.1420676 0 0.1113555;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 7 "f[18:19]" "f[53]" "f[158:159]" "f[193]" "f[210]" "f[218]" "f[220]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 5 "f[85:86]" "f[120]" "f[205]" "f[207]" "f[209]";
createNode polyUnite -n "polyUnite3";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:350]";
	setAttr ".gi" 15;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 2 "e[408]" "e[493]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 204;
	setAttr ".sv2" 241;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:356]";
	setAttr ".gi" 17;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[409]" "e[519]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 207;
	setAttr ".sv2" 267;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:362]";
	setAttr ".gi" 18;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[414]" "e[680]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 209;
	setAttr ".sv2" 332;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:368]";
	setAttr ".gi" 19;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[415]" "e[706]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 210;
	setAttr ".sv2" 358;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:374]";
	setAttr ".gi" 20;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".ics" -type "componentList" 2 "e[412]" "e[693]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 208;
	setAttr ".sv2" 345;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:380]";
	setAttr ".gi" 21;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	setAttr ".ics" -type "componentList" 2 "e[418]" "e[580]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 213;
	setAttr ".sv2" 280;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:386]";
	setAttr ".gi" 22;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	setAttr ".ics" -type "componentList" 2 "e[416]" "e[593]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 212;
	setAttr ".sv2" 293;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:392]";
	setAttr ".gi" 23;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	setAttr ".ics" -type "componentList" 2 "e[411]" "e[506]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 206;
	setAttr ".sv2" 254;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 215 ".tk";
	setAttr ".tk[216]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[217]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[218]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[219]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[220]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[221]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[222]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[223]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[224]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[225]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[226]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[227]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[228]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[229]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[230]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[231]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[232]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[233]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[234]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[235]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[236]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[237]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[238]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[239]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[240]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[241]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[242]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[243]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[244]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[245]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[246]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[247]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[248]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[249]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[250]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[251]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[252]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[253]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[254]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[255]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[256]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[257]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[258]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[259]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[260]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[261]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[262]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[263]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[264]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[265]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[266]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[267]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[268]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[269]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[270]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[271]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[272]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[273]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[274]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[275]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[276]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[277]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[278]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[279]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[280]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[281]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[282]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[283]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[284]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[285]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[286]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[287]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[288]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[289]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[290]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[291]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[292]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[293]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[294]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[295]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[296]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[297]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[298]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[299]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[300]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[301]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[302]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[303]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[304]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[305]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[306]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[307]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[308]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[309]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[310]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[311]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[312]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[313]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[314]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[315]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[316]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[317]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[318]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[319]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[320]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[321]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[322]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[323]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[324]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[325]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[326]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[327]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[328]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[329]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[330]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[331]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[332]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[333]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[334]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[335]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[336]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[337]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[338]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[339]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[340]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[341]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[342]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[343]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[344]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[345]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[346]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[347]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[348]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[349]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[350]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[351]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[352]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[353]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[354]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[355]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[356]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[357]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[358]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[359]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[360]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[361]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[362]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[363]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[364]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[365]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[366]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[367]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[368]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[369]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[370]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[371]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[372]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[373]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[374]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[375]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[376]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[377]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[378]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[379]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[380]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[381]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[382]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[383]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[384]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[385]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[386]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[387]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[388]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[389]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[390]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[391]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[392]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[393]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[394]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[395]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[396]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[397]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[398]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[399]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[400]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[401]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[402]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[403]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[404]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[405]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[406]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[407]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[408]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[409]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[410]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[411]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[412]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[413]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[414]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[415]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[416]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[417]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[418]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[419]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[420]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[421]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[427]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".tk[428]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[429]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[430]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[431]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[438]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[439]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[440]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
	setAttr ".tk[441]" -type "float3" -0.3666518 -0.02748115 -0.72431624 ;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:398]";
	setAttr ".gi" 24;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	setAttr ".ics" -type "componentList" 2 "e[419]" "e[606]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 214;
	setAttr ".sv2" 306;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:404]";
createNode polyCube -n "polyCube3";
	setAttr ".w" 3;
	setAttr ".h" 0.5;
	setAttr ".d" 5;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 5;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite4";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode polyUnite -n "polyUnite5";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:482]";
	setAttr ".gi" 33;
createNode polyBridgeEdge -n "polyBridgeEdge10";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:482]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 6;
	setAttr -s 6 ".out";
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:134]";
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:134]";
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:134]";
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode polyCut -n "polyCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" -2.1463107279664975 -0.66877380615468485 -47.618211201916246 ;
	setAttr ".ro" -type "double3" -82.698003033488092 80.983180742827514 94.958602561270141 ;
	setAttr ".ps" -type "double2" 10.840832710266112 1 ;
createNode polyCut -n "polyCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" -2.1462520433135244 -0.66742480775778301 -47.61793108041973 ;
	setAttr ".ro" -type "double3" -82.698003033488064 80.983180742827514 94.958602561270169 ;
	setAttr ".ps" -type "double2" 10.840832710266112 1 ;
createNode polyCut -n "polyCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" -2.1102082664115369 0.16112226115338971 -47.445882065759911 ;
	setAttr ".ro" -type "double3" -82.698003033488035 80.983180742827514 94.958602561270169 ;
	setAttr ".ps" -type "double2" 10.840832710266112 1 ;
createNode polyUnite -n "polyUnite6";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:89]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 10 "f[7:8]" "f[20]" "f[26]" "f[37:38]" "f[50]" "f[56]" "f[67:68]" "f[80]" "f[86]" "f[88]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 2 "f[24]" "f[50]";
createNode polyUnite -n "polyUnite7";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:479]";
	setAttr ".gi" 42;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	setAttr ".ics" -type "componentList" 2 "e[201]" "e[921]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 98;
	setAttr ".sv2" 486;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:485]";
	setAttr ".gi" 43;
createNode polyBridgeEdge -n "polyBridgeEdge12";
	setAttr ".ics" -type "componentList" 2 "e[227]" "e[922]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 72;
	setAttr ".sv2" 489;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:491]";
	setAttr ".gi" 44;
createNode polyBridgeEdge -n "polyBridgeEdge13";
	setAttr ".ics" -type "componentList" 2 "e[214]" "e[923]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 111;
	setAttr ".sv2" 487;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:497]";
	setAttr ".gi" 45;
createNode polyBridgeEdge -n "polyBridgeEdge14";
	setAttr ".ics" -type "componentList" 2 "e[796]" "e[975]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 419;
	setAttr ".sv2" 515;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:503]";
	setAttr ".gi" 46;
createNode polyBridgeEdge -n "polyBridgeEdge15";
	setAttr ".ics" -type "componentList" 2 "e[783]" "e[973]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 406;
	setAttr ".sv2" 514;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:509]";
	setAttr ".gi" 47;
createNode polyBridgeEdge -n "polyBridgeEdge16";
	setAttr ".ics" -type "componentList" 2 "e[505]" "e[1027]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 265;
	setAttr ".sv2" 543;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:515]";
	setAttr ".gi" 48;
createNode polyBridgeEdge -n "polyBridgeEdge17";
	setAttr ".ics" -type "componentList" 2 "e[492]" "e[1025]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 252;
	setAttr ".sv2" 542;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:521]";
	setAttr ".gi" 49;
createNode polyBridgeEdge -n "polyBridgeEdge18";
	setAttr ".ics" -type "componentList" 2 "e[770]" "e[976]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 393;
	setAttr ".sv2" 516;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:527]";
	setAttr ".gi" 50;
createNode polyBridgeEdge -n "polyBridgeEdge19";
	setAttr ".ics" -type "componentList" 2 "e[479]" "e[1028]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 239;
	setAttr ".sv2" 544;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:533]";
	setAttr ".gi" 51;
createNode polyBridgeEdge -n "polyBridgeEdge20";
	setAttr ".ics" -type "componentList" 2 "e[188]" "e[924]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 85;
	setAttr ".sv2" 488;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:539]";
	setAttr ".gi" 52;
createNode polyBridgeEdge -n "polyBridgeEdge21";
	setAttr ".ics" -type "componentList" 2 "e[138]" "e[200]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 69;
	setAttr ".sv2" 84;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:545]";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyCube -n "polyCube5";
	setAttr ".w" 5;
	setAttr ".h" 40;
	setAttr ".d" 5;
	setAttr ".cuv" 4;
createNode polyTriangulate -n "polyTriangulate2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate9";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate10";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate11";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate12";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate13";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate14";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate15";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate16";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate17";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate18";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate19";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate20";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate21";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate22";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 380 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]" "f[176]" "f[177]" "f[178]" "f[179]" "f[180]" "f[181]" "f[182]" "f[183]" "f[184]" "f[185]" "f[186]" "f[187]" "f[188]" "f[189]" "f[190]" "f[191]" "f[192]" "f[193]" "f[194]" "f[195]" "f[196]" "f[197]" "f[198]" "f[199]" "f[200]" "f[201]" "f[202]" "f[203]" "f[204]" "f[205]" "f[206]" "f[207]" "f[208]" "f[209]" "f[210]" "f[211]" "f[212]" "f[213]" "f[214]" "f[215]" "f[216]" "f[217]" "f[218]" "f[219]" "f[220]" "f[221]" "f[222]" "f[223]" "f[224]" "f[225]" "f[226]" "f[227]" "f[228]" "f[229]" "f[230]" "f[231]" "f[232]" "f[233]" "f[234]" "f[235]" "f[236]" "f[237]" "f[238]" "f[239]" "f[240]" "f[241]" "f[242]" "f[243]" "f[244]" "f[245]" "f[246]" "f[247]" "f[248]" "f[249]" "f[250]" "f[251]" "f[252]" "f[253]" "f[254]" "f[255]" "f[256]" "f[257]" "f[258]" "f[259]" "f[260]" "f[261]" "f[262]" "f[263]" "f[264]" "f[265]" "f[266]" "f[267]" "f[268]" "f[269]" "f[270]" "f[271]" "f[272]" "f[273]" "f[274]" "f[275]" "f[276]" "f[277]" "f[278]" "f[279]" "f[280]" "f[281]" "f[282]" "f[283]" "f[284]" "f[285]" "f[286]" "f[287]" "f[288]" "f[289]" "f[290]" "f[291]" "f[292]" "f[293]" "f[294]" "f[295]" "f[296]" "f[297]" "f[298]" "f[299]" "f[300]" "f[301]" "f[302]" "f[303]" "f[304]" "f[305]" "f[306]" "f[307]" "f[308]" "f[309]" "f[310]" "f[311]" "f[312]" "f[313]" "f[314]" "f[315]" "f[316]" "f[317]" "f[318]" "f[319]" "f[320]" "f[321]" "f[322]" "f[323]" "f[324]" "f[325]" "f[326]" "f[327]" "f[328]" "f[329]" "f[330]" "f[331]" "f[332]" "f[333]" "f[334]" "f[335]" "f[336]" "f[337]" "f[338]" "f[339]" "f[340]" "f[341]" "f[342]" "f[343]" "f[344]" "f[345]" "f[346]" "f[347]" "f[348]" "f[349]" "f[350]" "f[351]" "f[352]" "f[353]" "f[354]" "f[355]" "f[356]" "f[357]" "f[358]" "f[359]" "f[360]" "f[361]" "f[362]" "f[363]" "f[364]" "f[365]" "f[366]" "f[367]" "f[368]" "f[369]" "f[370]" "f[371]" "f[372]" "f[373]" "f[374]" "f[375]" "f[376]" "f[377]" "f[378]" "f[379]";
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 356 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]" "f[176]" "f[177]" "f[178]" "f[179]" "f[180]" "f[181]" "f[182]" "f[183]" "f[184]" "f[185]" "f[186]" "f[187]" "f[188]" "f[189]" "f[190]" "f[191]" "f[192]" "f[193]" "f[194]" "f[195]" "f[196]" "f[197]" "f[198]" "f[199]" "f[200]" "f[201]" "f[202]" "f[203]" "f[204]" "f[205]" "f[206]" "f[207]" "f[208]" "f[209]" "f[210]" "f[211]" "f[212]" "f[213]" "f[214]" "f[215]" "f[216]" "f[217]" "f[218]" "f[219]" "f[220]" "f[221]" "f[222]" "f[223]" "f[224]" "f[225]" "f[226]" "f[227]" "f[228]" "f[229]" "f[230]" "f[231]" "f[232]" "f[233]" "f[234]" "f[235]" "f[236]" "f[237]" "f[238]" "f[239]" "f[240]" "f[241]" "f[242]" "f[243]" "f[244]" "f[245]" "f[246]" "f[247]" "f[248]" "f[249]" "f[250]" "f[251]" "f[252]" "f[253]" "f[254]" "f[255]" "f[256]" "f[257]" "f[258]" "f[259]" "f[260]" "f[261]" "f[262]" "f[263]" "f[264]" "f[265]" "f[266]" "f[267]" "f[268]" "f[269]" "f[270]" "f[271]" "f[272]" "f[273]" "f[274]" "f[275]" "f[276]" "f[277]" "f[278]" "f[279]" "f[280]" "f[281]" "f[282]" "f[283]" "f[284]" "f[285]" "f[286]" "f[287]" "f[288]" "f[289]" "f[290]" "f[291]" "f[292]" "f[293]" "f[294]" "f[295]" "f[296]" "f[297]" "f[298]" "f[299]" "f[300]" "f[301]" "f[302]" "f[303]" "f[304]" "f[305]" "f[306]" "f[307]" "f[308]" "f[309]" "f[310]" "f[311]" "f[312]" "f[313]" "f[314]" "f[315]" "f[316]" "f[317]" "f[318]" "f[319]" "f[320]" "f[321]" "f[322]" "f[323]" "f[324]" "f[325]" "f[326]" "f[327]" "f[328]" "f[329]" "f[330]" "f[331]" "f[332]" "f[333]" "f[334]" "f[335]" "f[336]" "f[337]" "f[338]" "f[339]" "f[340]" "f[341]" "f[342]" "f[343]" "f[344]" "f[345]" "f[346]" "f[347]" "f[348]" "f[349]" "f[350]" "f[351]" "f[352]" "f[353]" "f[354]" "f[355]";
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 356 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]" "f[176]" "f[177]" "f[178]" "f[179]" "f[180]" "f[181]" "f[182]" "f[183]" "f[184]" "f[185]" "f[186]" "f[187]" "f[188]" "f[189]" "f[190]" "f[191]" "f[192]" "f[193]" "f[194]" "f[195]" "f[196]" "f[197]" "f[198]" "f[199]" "f[200]" "f[201]" "f[202]" "f[203]" "f[204]" "f[205]" "f[206]" "f[207]" "f[208]" "f[209]" "f[210]" "f[211]" "f[212]" "f[213]" "f[214]" "f[215]" "f[216]" "f[217]" "f[218]" "f[219]" "f[220]" "f[221]" "f[222]" "f[223]" "f[224]" "f[225]" "f[226]" "f[227]" "f[228]" "f[229]" "f[230]" "f[231]" "f[232]" "f[233]" "f[234]" "f[235]" "f[236]" "f[237]" "f[238]" "f[239]" "f[240]" "f[241]" "f[242]" "f[243]" "f[244]" "f[245]" "f[246]" "f[247]" "f[248]" "f[249]" "f[250]" "f[251]" "f[252]" "f[253]" "f[254]" "f[255]" "f[256]" "f[257]" "f[258]" "f[259]" "f[260]" "f[261]" "f[262]" "f[263]" "f[264]" "f[265]" "f[266]" "f[267]" "f[268]" "f[269]" "f[270]" "f[271]" "f[272]" "f[273]" "f[274]" "f[275]" "f[276]" "f[277]" "f[278]" "f[279]" "f[280]" "f[281]" "f[282]" "f[283]" "f[284]" "f[285]" "f[286]" "f[287]" "f[288]" "f[289]" "f[290]" "f[291]" "f[292]" "f[293]" "f[294]" "f[295]" "f[296]" "f[297]" "f[298]" "f[299]" "f[300]" "f[301]" "f[302]" "f[303]" "f[304]" "f[305]" "f[306]" "f[307]" "f[308]" "f[309]" "f[310]" "f[311]" "f[312]" "f[313]" "f[314]" "f[315]" "f[316]" "f[317]" "f[318]" "f[319]" "f[320]" "f[321]" "f[322]" "f[323]" "f[324]" "f[325]" "f[326]" "f[327]" "f[328]" "f[329]" "f[330]" "f[331]" "f[332]" "f[333]" "f[334]" "f[335]" "f[336]" "f[337]" "f[338]" "f[339]" "f[340]" "f[341]" "f[342]" "f[343]" "f[344]" "f[345]" "f[346]" "f[347]" "f[348]" "f[349]" "f[350]" "f[351]" "f[352]" "f[353]" "f[354]" "f[355]";
createNode polyUnite -n "polyUnite8";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1091]";
createNode polyUnite -n "polyUnite9";
	setAttr -s 21 ".ip";
	setAttr -s 21 ".im";
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1331]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 76 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 76 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId6.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "deleteComponent5.og" "polySurfaceShape1.i";
connectAttr "groupId7.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId8.id" "pPipeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape1.iog.og[0].gco";
connectAttr "groupParts4.og" "pPipeShape1.i";
connectAttr "groupId9.id" "pPipeShape1.ciog.cog[0].cgid";
connectAttr "groupId10.id" "pPipeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape2.iog.og[0].gco";
connectAttr "groupParts5.og" "pPipeShape2.i";
connectAttr "groupId11.id" "pPipeShape2.ciog.cog[0].cgid";
connectAttr "groupId12.id" "pPipeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape3.iog.og[0].gco";
connectAttr "groupParts6.og" "pPipeShape3.i";
connectAttr "groupId13.id" "pPipeShape3.ciog.cog[0].cgid";
connectAttr "deleteComponent3.og" "polySurfaceShape2.i";
connectAttr "groupId14.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape3.i";
connectAttr "groupId15.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId16.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts18.og" "pCubeShape4.i";
connectAttr "groupId17.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId18.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupParts19.og" "pCubeShape5.i";
connectAttr "groupId19.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId20.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupId21.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "groupParts20.og" "polySurfaceShape4.i";
connectAttr "groupId22.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape6.i";
connectAttr "groupId24.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape7.i";
connectAttr "groupId25.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape8.i";
connectAttr "groupId26.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "polyCut2.out" "polySurfaceShape9.i";
connectAttr "groupId27.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "polyCut3.out" "polySurfaceShape10.i";
connectAttr "groupId28.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "polyCut4.out" "polySurfaceShape11.i";
connectAttr "groupId29.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape5.i";
connectAttr "groupId23.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "deleteComponent7.og" "polySurfaceShape12.i";
connectAttr "groupId30.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts42.og" "polySurfaceShape33.i";
connectAttr "groupId32.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape34.i";
connectAttr "groupId33.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupParts44.og" "polySurfaceShape35.i";
connectAttr "groupId34.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "polyTriangulate2.out" "polySurfaceShape13.i";
connectAttr "groupId31.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts46.og" "pCubeShape7.i";
connectAttr "groupId36.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupId37.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupParts47.og" "pCubeShape8.i";
connectAttr "groupId38.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupId39.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "groupParts48.og" "pCubeShape9.i";
connectAttr "groupId40.id" "pCubeShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape9.iog.og[0].gco";
connectAttr "groupId41.id" "pCubeShape9.ciog.cog[0].cgid";
connectAttr "groupParts49.og" "pCubeShape10.i";
connectAttr "groupId42.id" "pCubeShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape10.iog.og[0].gco";
connectAttr "groupId43.id" "pCubeShape10.ciog.cog[0].cgid";
connectAttr "groupParts50.og" "pCubeShape11.i";
connectAttr "groupId44.id" "pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "groupId45.id" "pCubeShape11.ciog.cog[0].cgid";
connectAttr "groupParts51.og" "pCubeShape12.i";
connectAttr "groupId46.id" "pCubeShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape12.iog.og[0].gco";
connectAttr "groupId47.id" "pCubeShape12.ciog.cog[0].cgid";
connectAttr "groupParts52.og" "pCubeShape13.i";
connectAttr "groupId48.id" "pCubeShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape13.iog.og[0].gco";
connectAttr "groupId49.id" "pCubeShape13.ciog.cog[0].cgid";
connectAttr "groupParts53.og" "pCubeShape14.i";
connectAttr "groupId50.id" "pCubeShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape14.iog.og[0].gco";
connectAttr "groupId51.id" "pCubeShape14.ciog.cog[0].cgid";
connectAttr "groupParts54.og" "pCubeShape15.i";
connectAttr "groupId52.id" "pCubeShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape15.iog.og[0].gco";
connectAttr "groupId53.id" "pCubeShape15.ciog.cog[0].cgid";
connectAttr "groupParts55.og" "pCubeShape16.i";
connectAttr "groupId54.id" "pCubeShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape16.iog.og[0].gco";
connectAttr "groupId55.id" "pCubeShape16.ciog.cog[0].cgid";
connectAttr "groupParts56.og" "pCubeShape17.i";
connectAttr "groupId56.id" "pCubeShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape17.iog.og[0].gco";
connectAttr "groupId57.id" "pCubeShape17.ciog.cog[0].cgid";
connectAttr "groupParts57.og" "pCubeShape18.i";
connectAttr "groupId58.id" "pCubeShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape18.iog.og[0].gco";
connectAttr "groupId59.id" "pCubeShape18.ciog.cog[0].cgid";
connectAttr "groupParts58.og" "pCubeShape19.i";
connectAttr "groupId60.id" "pCubeShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape19.iog.og[0].gco";
connectAttr "groupId61.id" "pCubeShape19.ciog.cog[0].cgid";
connectAttr "groupParts59.og" "pCubeShape20.i";
connectAttr "groupId62.id" "pCubeShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape20.iog.og[0].gco";
connectAttr "groupId63.id" "pCubeShape20.ciog.cog[0].cgid";
connectAttr "groupParts60.og" "pCubeShape21.i";
connectAttr "groupId64.id" "pCubeShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape21.iog.og[0].gco";
connectAttr "groupId65.id" "pCubeShape21.ciog.cog[0].cgid";
connectAttr "groupParts61.og" "pCubeShape22.i";
connectAttr "groupId66.id" "pCubeShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape22.iog.og[0].gco";
connectAttr "groupId67.id" "pCubeShape22.ciog.cog[0].cgid";
connectAttr "groupParts62.og" "pCubeShape23.i";
connectAttr "groupId68.id" "pCubeShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape23.iog.og[0].gco";
connectAttr "groupId69.id" "pCubeShape23.ciog.cog[0].cgid";
connectAttr "groupParts63.og" "pCubeShape24.i";
connectAttr "groupId70.id" "pCubeShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape24.iog.og[0].gco";
connectAttr "groupId71.id" "pCubeShape24.ciog.cog[0].cgid";
connectAttr "groupParts64.og" "pCubeShape25.i";
connectAttr "groupId72.id" "pCubeShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape25.iog.og[0].gco";
connectAttr "groupId73.id" "pCubeShape25.ciog.cog[0].cgid";
connectAttr "groupParts65.og" "pCubeShape26.i";
connectAttr "groupId74.id" "pCubeShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape26.iog.og[0].gco";
connectAttr "groupId75.id" "pCubeShape26.ciog.cog[0].cgid";
connectAttr "groupParts45.og" "polySurfaceShape36.i";
connectAttr "groupId35.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupParts66.og" "polySurfaceShape37.i";
connectAttr "groupId76.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape3.o" "polyUnite1.ip[2]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[2]";
connectAttr "polyCube1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId7.id" "groupParts3.gi";
connectAttr "pPipeShape1.o" "polyUnite2.ip[0]";
connectAttr "pPipeShape2.o" "polyUnite2.ip[1]";
connectAttr "pPipeShape3.o" "polyUnite2.ip[2]";
connectAttr "pPipeShape1.wm" "polyUnite2.im[0]";
connectAttr "pPipeShape2.wm" "polyUnite2.im[1]";
connectAttr "pPipeShape3.wm" "polyUnite2.im[2]";
connectAttr "polyPipe1.out" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "polyPipe2.out" "groupParts5.ig";
connectAttr "groupId10.id" "groupParts5.gi";
connectAttr "polyPipe3.out" "groupParts6.ig";
connectAttr "groupId12.id" "groupParts6.gi";
connectAttr "polyUnite2.out" "groupParts7.ig";
connectAttr "groupId14.id" "groupParts7.gi";
connectAttr "groupParts7.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "polyTweak1.out" "polyCut1.ip";
connectAttr "polySurfaceShape1.wm" "polyCut1.mp";
connectAttr "groupParts3.og" "polyTweak1.ip";
connectAttr "polyCut1.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "polySurfaceShape1.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape2.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape1.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape2.wm" "polyUnite3.im[1]";
connectAttr "polyUnite3.out" "groupParts8.ig";
connectAttr "groupParts8.og" "polyBridgeEdge1.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "groupParts9.ig";
connectAttr "groupParts9.og" "polyBridgeEdge2.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "groupParts10.ig";
connectAttr "groupParts10.og" "polyBridgeEdge3.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "groupParts11.ig";
connectAttr "groupParts11.og" "polyBridgeEdge4.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "groupParts12.ig";
connectAttr "groupParts12.og" "polyBridgeEdge5.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "groupParts13.ig";
connectAttr "groupParts13.og" "polyBridgeEdge6.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge6.mp";
connectAttr "polyBridgeEdge6.out" "groupParts14.ig";
connectAttr "groupParts14.og" "polyBridgeEdge7.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge7.mp";
connectAttr "polyBridgeEdge7.out" "groupParts15.ig";
connectAttr "polyTweak2.out" "polyBridgeEdge8.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge8.mp";
connectAttr "groupParts15.og" "polyTweak2.ip";
connectAttr "polyBridgeEdge8.out" "groupParts16.ig";
connectAttr "groupParts16.og" "polyBridgeEdge9.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge9.mp";
connectAttr "polyBridgeEdge9.out" "groupParts17.ig";
connectAttr "groupId15.id" "groupParts17.gi";
connectAttr "pCubeShape4.o" "polyUnite4.ip[0]";
connectAttr "pCubeShape5.o" "polyUnite4.ip[1]";
connectAttr "pCubeShape6.o" "polyUnite4.ip[2]";
connectAttr "pCubeShape4.wm" "polyUnite4.im[0]";
connectAttr "pCubeShape5.wm" "polyUnite4.im[1]";
connectAttr "pCubeShape6.wm" "polyUnite4.im[2]";
connectAttr "polyCube3.out" "groupParts18.ig";
connectAttr "groupId16.id" "groupParts18.gi";
connectAttr "polyCube4.out" "groupParts19.ig";
connectAttr "groupId18.id" "groupParts19.gi";
connectAttr "polyUnite4.out" "groupParts20.ig";
connectAttr "groupId22.id" "groupParts20.gi";
connectAttr "polySurfaceShape3.o" "polyUnite5.ip[0]";
connectAttr "polySurfaceShape4.o" "polyUnite5.ip[1]";
connectAttr "polySurfaceShape3.wm" "polyUnite5.im[0]";
connectAttr "polySurfaceShape4.wm" "polyUnite5.im[1]";
connectAttr "polyUnite5.out" "groupParts21.ig";
connectAttr "groupParts21.og" "groupParts22.ig";
connectAttr "groupId23.id" "groupParts22.gi";
connectAttr "polySurfaceShape5.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts23.ig";
connectAttr "groupId24.id" "groupParts23.gi";
connectAttr "polySeparate1.out[1]" "groupParts24.ig";
connectAttr "groupId25.id" "groupParts24.gi";
connectAttr "polySeparate1.out[2]" "groupParts25.ig";
connectAttr "groupId26.id" "groupParts25.gi";
connectAttr "polySeparate1.out[3]" "groupParts26.ig";
connectAttr "groupId27.id" "groupParts26.gi";
connectAttr "polySeparate1.out[4]" "groupParts27.ig";
connectAttr "groupId28.id" "groupParts27.gi";
connectAttr "polySeparate1.out[5]" "groupParts28.ig";
connectAttr "groupId29.id" "groupParts28.gi";
connectAttr "groupParts26.og" "polyCut2.ip";
connectAttr "polySurfaceShape9.wm" "polyCut2.mp";
connectAttr "groupParts27.og" "polyCut3.ip";
connectAttr "polySurfaceShape10.wm" "polyCut3.mp";
connectAttr "groupParts28.og" "polyCut4.ip";
connectAttr "polySurfaceShape11.wm" "polyCut4.mp";
connectAttr "polySurfaceShape9.o" "polyUnite6.ip[0]";
connectAttr "polySurfaceShape10.o" "polyUnite6.ip[1]";
connectAttr "polySurfaceShape11.o" "polyUnite6.ip[2]";
connectAttr "polySurfaceShape9.wm" "polyUnite6.im[0]";
connectAttr "polySurfaceShape10.wm" "polyUnite6.im[1]";
connectAttr "polySurfaceShape11.wm" "polyUnite6.im[2]";
connectAttr "polyUnite6.out" "groupParts29.ig";
connectAttr "groupId30.id" "groupParts29.gi";
connectAttr "groupParts29.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "polySurfaceShape6.o" "polyUnite7.ip[0]";
connectAttr "polySurfaceShape7.o" "polyUnite7.ip[1]";
connectAttr "polySurfaceShape8.o" "polyUnite7.ip[2]";
connectAttr "polySurfaceShape12.o" "polyUnite7.ip[3]";
connectAttr "polySurfaceShape6.wm" "polyUnite7.im[0]";
connectAttr "polySurfaceShape7.wm" "polyUnite7.im[1]";
connectAttr "polySurfaceShape8.wm" "polyUnite7.im[2]";
connectAttr "polySurfaceShape12.wm" "polyUnite7.im[3]";
connectAttr "polyUnite7.out" "groupParts30.ig";
connectAttr "groupParts30.og" "polyBridgeEdge11.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge11.mp";
connectAttr "polyBridgeEdge11.out" "groupParts31.ig";
connectAttr "groupParts31.og" "polyBridgeEdge12.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge12.mp";
connectAttr "polyBridgeEdge12.out" "groupParts32.ig";
connectAttr "groupParts32.og" "polyBridgeEdge13.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge13.mp";
connectAttr "polyBridgeEdge13.out" "groupParts33.ig";
connectAttr "groupParts33.og" "polyBridgeEdge14.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge14.mp";
connectAttr "polyBridgeEdge14.out" "groupParts34.ig";
connectAttr "groupParts34.og" "polyBridgeEdge15.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge15.mp";
connectAttr "polyBridgeEdge15.out" "groupParts35.ig";
connectAttr "groupParts35.og" "polyBridgeEdge16.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge16.mp";
connectAttr "polyBridgeEdge16.out" "groupParts36.ig";
connectAttr "groupParts36.og" "polyBridgeEdge17.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge17.mp";
connectAttr "polyBridgeEdge17.out" "groupParts37.ig";
connectAttr "groupParts37.og" "polyBridgeEdge18.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge18.mp";
connectAttr "polyBridgeEdge18.out" "groupParts38.ig";
connectAttr "groupParts38.og" "polyBridgeEdge19.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge19.mp";
connectAttr "polyBridgeEdge19.out" "groupParts39.ig";
connectAttr "groupParts39.og" "polyBridgeEdge20.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge20.mp";
connectAttr "polyBridgeEdge20.out" "groupParts40.ig";
connectAttr "groupParts40.og" "polyBridgeEdge21.ip";
connectAttr "polySurfaceShape13.wm" "polyBridgeEdge21.mp";
connectAttr "polyBridgeEdge21.out" "groupParts41.ig";
connectAttr "groupId31.id" "groupParts41.gi";
connectAttr "groupParts41.og" "polyTriangulate1.ip";
connectAttr "polyTriangulate1.out" "polyTriangulate2.ip";
connectAttr "polyCube5.out" "polyTriangulate3.ip";
connectAttr "polySurfaceShape14.o" "polyTriangulate4.ip";
connectAttr "polySurfaceShape15.o" "polyTriangulate5.ip";
connectAttr "polySurfaceShape16.o" "polyTriangulate6.ip";
connectAttr "polySurfaceShape17.o" "polyTriangulate7.ip";
connectAttr "polySurfaceShape18.o" "polyTriangulate8.ip";
connectAttr "polySurfaceShape19.o" "polyTriangulate9.ip";
connectAttr "polySurfaceShape20.o" "polyTriangulate10.ip";
connectAttr "polySurfaceShape21.o" "polyTriangulate11.ip";
connectAttr "polySurfaceShape22.o" "polyTriangulate12.ip";
connectAttr "polySurfaceShape23.o" "polyTriangulate13.ip";
connectAttr "polySurfaceShape24.o" "polyTriangulate14.ip";
connectAttr "polySurfaceShape25.o" "polyTriangulate15.ip";
connectAttr "polySurfaceShape26.o" "polyTriangulate16.ip";
connectAttr "polySurfaceShape27.o" "polyTriangulate17.ip";
connectAttr "polySurfaceShape28.o" "polyTriangulate18.ip";
connectAttr "polySurfaceShape29.o" "polyTriangulate19.ip";
connectAttr "polySurfaceShape30.o" "polyTriangulate20.ip";
connectAttr "polySurfaceShape31.o" "polyTriangulate21.ip";
connectAttr "polySurfaceShape32.o" "polyTriangulate22.ip";
connectAttr "polySurfaceShape13.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts42.ig";
connectAttr "groupId32.id" "groupParts42.gi";
connectAttr "polySeparate2.out[1]" "groupParts43.ig";
connectAttr "groupId33.id" "groupParts43.gi";
connectAttr "polySeparate2.out[2]" "groupParts44.ig";
connectAttr "groupId34.id" "groupParts44.gi";
connectAttr "polySurfaceShape33.o" "polyUnite8.ip[0]";
connectAttr "polySurfaceShape34.o" "polyUnite8.ip[1]";
connectAttr "polySurfaceShape35.o" "polyUnite8.ip[2]";
connectAttr "polySurfaceShape33.wm" "polyUnite8.im[0]";
connectAttr "polySurfaceShape34.wm" "polyUnite8.im[1]";
connectAttr "polySurfaceShape35.wm" "polyUnite8.im[2]";
connectAttr "polyUnite8.out" "groupParts45.ig";
connectAttr "groupId35.id" "groupParts45.gi";
connectAttr "pCubeShape7.o" "polyUnite9.ip[0]";
connectAttr "pCubeShape8.o" "polyUnite9.ip[1]";
connectAttr "pCubeShape9.o" "polyUnite9.ip[2]";
connectAttr "pCubeShape10.o" "polyUnite9.ip[3]";
connectAttr "pCubeShape11.o" "polyUnite9.ip[4]";
connectAttr "pCubeShape12.o" "polyUnite9.ip[5]";
connectAttr "pCubeShape13.o" "polyUnite9.ip[6]";
connectAttr "pCubeShape14.o" "polyUnite9.ip[7]";
connectAttr "pCubeShape15.o" "polyUnite9.ip[8]";
connectAttr "pCubeShape16.o" "polyUnite9.ip[9]";
connectAttr "pCubeShape17.o" "polyUnite9.ip[10]";
connectAttr "pCubeShape18.o" "polyUnite9.ip[11]";
connectAttr "pCubeShape19.o" "polyUnite9.ip[12]";
connectAttr "pCubeShape20.o" "polyUnite9.ip[13]";
connectAttr "pCubeShape21.o" "polyUnite9.ip[14]";
connectAttr "pCubeShape22.o" "polyUnite9.ip[15]";
connectAttr "pCubeShape23.o" "polyUnite9.ip[16]";
connectAttr "pCubeShape24.o" "polyUnite9.ip[17]";
connectAttr "pCubeShape25.o" "polyUnite9.ip[18]";
connectAttr "pCubeShape26.o" "polyUnite9.ip[19]";
connectAttr "polySurfaceShape36.o" "polyUnite9.ip[20]";
connectAttr "pCubeShape7.wm" "polyUnite9.im[0]";
connectAttr "pCubeShape8.wm" "polyUnite9.im[1]";
connectAttr "pCubeShape9.wm" "polyUnite9.im[2]";
connectAttr "pCubeShape10.wm" "polyUnite9.im[3]";
connectAttr "pCubeShape11.wm" "polyUnite9.im[4]";
connectAttr "pCubeShape12.wm" "polyUnite9.im[5]";
connectAttr "pCubeShape13.wm" "polyUnite9.im[6]";
connectAttr "pCubeShape14.wm" "polyUnite9.im[7]";
connectAttr "pCubeShape15.wm" "polyUnite9.im[8]";
connectAttr "pCubeShape16.wm" "polyUnite9.im[9]";
connectAttr "pCubeShape17.wm" "polyUnite9.im[10]";
connectAttr "pCubeShape18.wm" "polyUnite9.im[11]";
connectAttr "pCubeShape19.wm" "polyUnite9.im[12]";
connectAttr "pCubeShape20.wm" "polyUnite9.im[13]";
connectAttr "pCubeShape21.wm" "polyUnite9.im[14]";
connectAttr "pCubeShape22.wm" "polyUnite9.im[15]";
connectAttr "pCubeShape23.wm" "polyUnite9.im[16]";
connectAttr "pCubeShape24.wm" "polyUnite9.im[17]";
connectAttr "pCubeShape25.wm" "polyUnite9.im[18]";
connectAttr "pCubeShape26.wm" "polyUnite9.im[19]";
connectAttr "polySurfaceShape36.wm" "polyUnite9.im[20]";
connectAttr "polyTriangulate3.out" "groupParts46.ig";
connectAttr "groupId36.id" "groupParts46.gi";
connectAttr "polyTriangulate4.out" "groupParts47.ig";
connectAttr "groupId38.id" "groupParts47.gi";
connectAttr "polyTriangulate5.out" "groupParts48.ig";
connectAttr "groupId40.id" "groupParts48.gi";
connectAttr "polyTriangulate6.out" "groupParts49.ig";
connectAttr "groupId42.id" "groupParts49.gi";
connectAttr "polyTriangulate7.out" "groupParts50.ig";
connectAttr "groupId44.id" "groupParts50.gi";
connectAttr "polyTriangulate8.out" "groupParts51.ig";
connectAttr "groupId46.id" "groupParts51.gi";
connectAttr "polyTriangulate9.out" "groupParts52.ig";
connectAttr "groupId48.id" "groupParts52.gi";
connectAttr "polyTriangulate10.out" "groupParts53.ig";
connectAttr "groupId50.id" "groupParts53.gi";
connectAttr "polyTriangulate11.out" "groupParts54.ig";
connectAttr "groupId52.id" "groupParts54.gi";
connectAttr "polyTriangulate12.out" "groupParts55.ig";
connectAttr "groupId54.id" "groupParts55.gi";
connectAttr "polyTriangulate13.out" "groupParts56.ig";
connectAttr "groupId56.id" "groupParts56.gi";
connectAttr "polyTriangulate14.out" "groupParts57.ig";
connectAttr "groupId58.id" "groupParts57.gi";
connectAttr "polyTriangulate15.out" "groupParts58.ig";
connectAttr "groupId60.id" "groupParts58.gi";
connectAttr "polyTriangulate16.out" "groupParts59.ig";
connectAttr "groupId62.id" "groupParts59.gi";
connectAttr "polyTriangulate17.out" "groupParts60.ig";
connectAttr "groupId64.id" "groupParts60.gi";
connectAttr "polyTriangulate18.out" "groupParts61.ig";
connectAttr "groupId66.id" "groupParts61.gi";
connectAttr "polyTriangulate19.out" "groupParts62.ig";
connectAttr "groupId68.id" "groupParts62.gi";
connectAttr "polyTriangulate20.out" "groupParts63.ig";
connectAttr "groupId70.id" "groupParts63.gi";
connectAttr "polyTriangulate21.out" "groupParts64.ig";
connectAttr "groupId72.id" "groupParts64.gi";
connectAttr "polyTriangulate22.out" "groupParts65.ig";
connectAttr "groupId74.id" "groupParts65.gi";
connectAttr "polyUnite9.out" "groupParts66.ig";
connectAttr "groupId76.id" "groupParts66.gi";
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId73.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId75.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of F - Forest Path 1.ma
