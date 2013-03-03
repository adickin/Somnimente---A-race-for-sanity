//Maya ASCII 2013 scene
//Name: S - Forest Path 2.ma
//Last modified: Thu, Feb 28, 2013 02:59:55 PM
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
	setAttr ".t" -type "double3" 235.95352701164271 116.60441446477377 95.181185400353797 ;
	setAttr ".r" -type "double3" -7.8000000000003133 46.000000000000178 0 ;
	setAttr ".rp" -type "double3" 5.6843418860808015e-14 0 0 ;
	setAttr ".rpt" -type "double3" -3.511806941166967e-13 1.3778339583238245e-13 1.945379708583882e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 730.50768920961036;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -284.6678733825683 17.46314525604248 -407.57705688476551 ;
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
	setAttr ".t" -type "double3" -248.51488608489677 31.279133330740638 -229.41954656130815 ;
	setAttr ".r" -type "double3" -90 -89.999999999999972 0 ;
	setAttr ".rpt" -type "double3" 1.9724257865357025e-14 8.3264728799569866e-15 2.1579160575383678e-14 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 6.1505157595204309;
	setAttr ".ow" 920.46712606783728;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -248.51488608489674 25.128617571220214 -229.41954656130812 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "F___Forest_Path_1:pCube1";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "F___Forest_Path_1:transform3" -p "F___Forest_Path_1:pCube1";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:pCubeShape1" -p "F___Forest_Path_1:transform3";
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
createNode transform -n "F___Forest_Path_1:pCube2";
	setAttr ".t" -type "double3" 1.375 0.25 0 ;
createNode transform -n "F___Forest_Path_1:transform2" -p "F___Forest_Path_1:pCube2";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:pCubeShape2" -p "F___Forest_Path_1:transform2";
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
createNode transform -n "F___Forest_Path_1:pCube3";
	setAttr ".t" -type "double3" -1.375 0.25 0 ;
createNode transform -n "F___Forest_Path_1:transform1" -p "F___Forest_Path_1:pCube3";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:pCubeShape3" -p "F___Forest_Path_1:transform1";
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
createNode transform -n "F___Forest_Path_1:polySurface1";
	setAttr ".t" -type "double3" 0 0 -8 ;
createNode transform -n "F___Forest_Path_1:transform8" -p "F___Forest_Path_1:polySurface1";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape1" -p "F___Forest_Path_1:transform8";
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
createNode transform -n "F___Forest_Path_1:pPipe1";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "F___Forest_Path_1:transform6" -p "F___Forest_Path_1:pPipe1";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:pPipeShape1" -p "F___Forest_Path_1:transform6";
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
createNode transform -n "F___Forest_Path_1:pPipe2";
	setAttr ".t" -type "double3" 0 0.25 0 ;
createNode transform -n "F___Forest_Path_1:transform5" -p "F___Forest_Path_1:pPipe2";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:pPipeShape2" -p "F___Forest_Path_1:transform5";
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
createNode transform -n "F___Forest_Path_1:pPipe3";
	setAttr ".t" -type "double3" 0 0.25 0 ;
createNode transform -n "F___Forest_Path_1:transform4" -p "F___Forest_Path_1:pPipe3";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:pPipeShape3" -p "F___Forest_Path_1:transform4";
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
createNode transform -n "F___Forest_Path_1:polySurface2";
	setAttr ".t" -type "double3" -2.5188889157924157 0 -41.458703585240755 ;
createNode transform -n "F___Forest_Path_1:transform7" -p "F___Forest_Path_1:polySurface2";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape2" -p "F___Forest_Path_1:transform7";
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
createNode transform -n "F___Forest_Path_1:polySurface3";
createNode transform -n "F___Forest_Path_1:transform13" -p "F___Forest_Path_1:polySurface3";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape3" -p "F___Forest_Path_1:transform13";
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
createNode transform -n "F___Forest_Path_1:pCube4";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "F___Forest_Path_1:transform11" -p "F___Forest_Path_1:pCube4";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:pCubeShape4" -p "F___Forest_Path_1:transform11";
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
createNode transform -n "F___Forest_Path_1:pCube5";
	setAttr ".t" -type "double3" 1.375 0.25 0 ;
createNode transform -n "F___Forest_Path_1:transform10" -p "F___Forest_Path_1:pCube5";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:pCubeShape5" -p "F___Forest_Path_1:transform10";
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
createNode transform -n "F___Forest_Path_1:pCube6";
	setAttr ".t" -type "double3" -1.375 0.25 0 ;
createNode transform -n "F___Forest_Path_1:transform9" -p "F___Forest_Path_1:pCube6";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:pCubeShape6" -p "F___Forest_Path_1:transform9";
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
createNode transform -n "F___Forest_Path_1:polySurface4";
	setAttr ".t" -type "double3" 6.6667498331058415 0 -53.17831689506059 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "F___Forest_Path_1:transform12" -p "F___Forest_Path_1:polySurface4";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape4" -p "F___Forest_Path_1:transform12";
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
createNode transform -n "F___Forest_Path_1:polySurface5";
createNode transform -n "F___Forest_Path_1:polySurface6" -p "F___Forest_Path_1:polySurface5";
createNode transform -n "F___Forest_Path_1:transform21" -p "F___Forest_Path_1:polySurface6";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape6" -p "F___Forest_Path_1:transform21";
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
createNode transform -n "F___Forest_Path_1:polySurface7" -p "F___Forest_Path_1:polySurface5";
createNode transform -n "F___Forest_Path_1:transform20" -p "F___Forest_Path_1:polySurface7";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape7" -p "F___Forest_Path_1:transform20";
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
createNode transform -n "F___Forest_Path_1:polySurface8" -p "F___Forest_Path_1:polySurface5";
createNode transform -n "F___Forest_Path_1:transform19" -p "F___Forest_Path_1:polySurface8";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape8" -p "F___Forest_Path_1:transform19";
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
createNode transform -n "F___Forest_Path_1:polySurface9" -p "F___Forest_Path_1:polySurface5";
createNode transform -n "F___Forest_Path_1:transform17" -p "F___Forest_Path_1:polySurface9";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape9" -p "F___Forest_Path_1:transform17";
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
createNode transform -n "F___Forest_Path_1:polySurface10" -p "F___Forest_Path_1:polySurface5";
createNode transform -n "F___Forest_Path_1:transform16" -p "F___Forest_Path_1:polySurface10";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape10" -p "F___Forest_Path_1:transform16";
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
createNode transform -n "F___Forest_Path_1:polySurface11" -p "F___Forest_Path_1:polySurface5";
createNode transform -n "F___Forest_Path_1:transform15" -p "F___Forest_Path_1:polySurface11";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape11" -p "F___Forest_Path_1:transform15";
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
createNode transform -n "F___Forest_Path_1:transform14" -p "F___Forest_Path_1:polySurface5";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape5" -p "F___Forest_Path_1:transform14";
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
createNode transform -n "F___Forest_Path_1:polySurface12";
createNode transform -n "F___Forest_Path_1:transform18" -p "F___Forest_Path_1:polySurface12";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape12" -p "F___Forest_Path_1:transform18";
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
createNode transform -n "F___Forest_Path_1:polySurface13";
createNode transform -n "transform5" -p "F___Forest_Path_1:polySurface13";
	setAttr ".v" no;
createNode mesh -n "F___Forest_Path_1:polySurfaceShape13" -p "transform5";
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
	setAttr -s 98 ".pt";
	setAttr ".pt[22]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[23]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[24]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[25]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[26]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[27]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[28]" -type "float3" -0.74844331 0.25522673 -0.7432611 ;
	setAttr ".pt[29]" -type "float3" -2.0644996 0.25522673 -2.0210452 ;
	setAttr ".pt[30]" -type "float3" -2.0418139 0.29807839 -0.92664796 ;
	setAttr ".pt[31]" -type "float3" -5.149786 0.29807839 -3.4449673 ;
	setAttr ".pt[32]" -type "float3" -4.6460681 0.33522508 -0.91624254 ;
	setAttr ".pt[33]" -type "float3" -7.8350601 0.33522508 -3.6224508 ;
	setAttr ".pt[34]" -type "float3" -6.3241353 0.13361235 -0.46168536 ;
	setAttr ".pt[35]" -type "float3" -9.8646545 0.13361235 -3.3228834 ;
	setAttr ".pt[36]" -type "float3" -6.3241382 0.13361235 -0.46168476 ;
	setAttr ".pt[37]" -type "float3" -9.8646536 0.13361235 -3.3228822 ;
	setAttr ".pt[38]" -type "float3" -4.6460671 0.33522508 -0.91624242 ;
	setAttr ".pt[39]" -type "float3" -7.835062 0.33522508 -3.6224499 ;
	setAttr ".pt[40]" -type "float3" -2.0418146 0.29807839 -0.92664677 ;
	setAttr ".pt[41]" -type "float3" -5.1497879 0.29807839 -3.444967 ;
	setAttr ".pt[42]" -type "float3" -0.74844259 0.25522673 -0.74326104 ;
	setAttr ".pt[43]" -type "float3" -2.0645001 0.25522673 -2.021045 ;
	setAttr ".pt[44]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[45]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[46]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[47]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[48]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[49]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[68]" -type "float3" -7.4328637 0.13361235 0.47698718 ;
	setAttr ".pt[69]" -type "float3" -10.961417 0.13361235 -2.3943329 ;
	setAttr ".pt[70]" -type "float3" -7.424283 0.13361235 0.46972066 ;
	setAttr ".pt[71]" -type "float3" -10.952837 0.13361235 -2.401598 ;
	setAttr ".pt[94]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[95]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[96]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[97]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[98]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[99]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[100]" -type "float3" -1.954828 0.25522673 -1.9145629 ;
	setAttr ".pt[101]" -type "float3" -2.0644996 0.25522673 -2.0210452 ;
	setAttr ".pt[102]" -type "float3" -4.89079 0.29807839 -3.2351089 ;
	setAttr ".pt[103]" -type "float3" -5.149786 0.29807839 -3.4449673 ;
	setAttr ".pt[104]" -type "float3" -7.5693092 0.33522508 -3.3969345 ;
	setAttr ".pt[105]" -type "float3" -7.8350601 0.33522508 -3.6224508 ;
	setAttr ".pt[106]" -type "float3" -9.5696049 0.13361235 -3.08445 ;
	setAttr ".pt[107]" -type "float3" -9.8646545 0.13361235 -3.3228834 ;
	setAttr ".pt[108]" -type "float3" -9.5696058 0.13361235 -3.0844481 ;
	setAttr ".pt[109]" -type "float3" -9.8646536 0.13361235 -3.3228822 ;
	setAttr ".pt[110]" -type "float3" -7.5693111 0.33522508 -3.3969338 ;
	setAttr ".pt[111]" -type "float3" -7.835062 0.33522508 -3.6224499 ;
	setAttr ".pt[112]" -type "float3" -4.89079 0.29807839 -3.2351077 ;
	setAttr ".pt[113]" -type "float3" -5.1497879 0.29807839 -3.444967 ;
	setAttr ".pt[114]" -type "float3" -1.9548285 0.25522673 -1.9145629 ;
	setAttr ".pt[115]" -type "float3" -2.0645001 0.25522673 -2.021045 ;
	setAttr ".pt[116]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[117]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[118]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[119]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[120]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[121]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[140]" -type "float3" -10.67595 0.13361235 -2.1477921 ;
	setAttr ".pt[141]" -type "float3" -10.969999 0.13361235 -2.3870685 ;
	setAttr ".pt[142]" -type "float3" -10.667372 0.13361235 -2.155056 ;
	setAttr ".pt[143]" -type "float3" -10.961417 0.13361235 -2.3943331 ;
	setAttr ".pt[166]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[167]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[168]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[169]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[170]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[171]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[172]" -type "float3" -0.74844331 0.25522673 -0.7432611 ;
	setAttr ".pt[173]" -type "float3" -0.85811532 0.25522673 -0.84974295 ;
	setAttr ".pt[174]" -type "float3" -2.0418139 0.29807839 -0.92664796 ;
	setAttr ".pt[175]" -type "float3" -2.300813 0.29807839 -1.136507 ;
	setAttr ".pt[176]" -type "float3" -4.6460681 0.33522508 -0.91624254 ;
	setAttr ".pt[177]" -type "float3" -4.9118171 0.33522508 -1.1417634 ;
	setAttr ".pt[178]" -type "float3" -6.3241353 0.13361235 -0.46168536 ;
	setAttr ".pt[179]" -type "float3" -6.6191831 0.13361235 -0.70011765 ;
	setAttr ".pt[180]" -type "float3" -6.3241382 0.13361235 -0.46168476 ;
	setAttr ".pt[181]" -type "float3" -6.6191831 0.13361235 -0.7001192 ;
	setAttr ".pt[182]" -type "float3" -4.6460671 0.33522508 -0.91624242 ;
	setAttr ".pt[183]" -type "float3" -4.9118171 0.33522508 -1.1417634 ;
	setAttr ".pt[184]" -type "float3" -2.0418146 0.29807839 -0.92664677 ;
	setAttr ".pt[185]" -type "float3" -2.3008134 0.29807839 -1.1365068 ;
	setAttr ".pt[186]" -type "float3" -0.74844259 0.25522673 -0.74326104 ;
	setAttr ".pt[187]" -type "float3" -0.85811579 0.25522673 -0.84974271 ;
	setAttr ".pt[188]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[189]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[190]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[191]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[192]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[193]" -type "float3" -0.50141287 0.25522673 -0.64177924 ;
	setAttr ".pt[212]" -type "float3" -7.4414444 0.13361235 0.48424917 ;
	setAttr ".pt[213]" -type "float3" -7.7354894 0.13361235 0.24497537 ;
	setAttr ".pt[214]" -type "float3" -7.4328637 0.13361235 0.47698718 ;
	setAttr ".pt[215]" -type "float3" -7.7269111 0.13361235 0.23770945 ;
	setAttr ".pt[252]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[602]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
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
	setAttr -s 28 ".vt[0:27]"  -0.125 -0.25 3 0.125 -0.25 3 -0.125 0.25 3
		 0.125 0.25 3 -0.125 0.25 2 0.125 0.25 2 -0.125 0.25 1 0.125 0.25 1 -0.125 0.25 0
		 0.125 0.25 0 -0.125 0.25 -1 0.125 0.25 -1 -0.125 0.25 -2 0.125 0.25 -2 -0.125 0.25 -3
		 0.125 0.25 -3 -0.125 -0.25 -3 0.125 -0.25 -3 -0.125 -0.25 -2 0.125 -0.25 -2 -0.125 -0.25 -1
		 0.125 -0.25 -1 -0.125 -0.25 0 0.125 -0.25 0 -0.125 -0.25 1 0.125 -0.25 1 -0.125 -0.25 2
		 0.125 -0.25 2;
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
createNode transform -n "polySurface1";
	setAttr ".t" -type "double3" -21.051356414114508 -0.0086090939917617959 -35.623439286307658 ;
	setAttr ".r" -type "double3" 0 66.851367246385635 0 ;
createNode transform -n "transform4" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform4";
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
createNode transform -n "transform10" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform10";
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
	setAttr -s 316 ".pt";
	setAttr ".pt[16]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[18]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[19]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[20]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[21]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[22]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[23]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[24]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[25]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[26]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[27]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[28]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[29]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[30]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[31]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[32]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[33]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[34]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[35]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[36]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[37]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[38]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[39]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[40]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[41]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[42]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[43]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[44]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[45]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[46]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[47]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[48]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[49]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[50]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[51]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[52]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[53]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[54]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[55]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[68]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[69]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[70]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[71]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[88]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[89]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[90]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[91]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[92]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[93]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[94]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[95]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[96]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[97]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[98]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[99]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[100]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[101]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[102]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[103]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[104]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[105]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[106]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[107]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[108]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[109]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[110]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[111]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[112]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[113]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[114]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[115]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[116]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[117]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[118]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[119]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[120]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[121]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[122]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[123]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[124]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[125]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[126]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[127]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[140]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[141]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[142]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[143]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[160]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[161]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[162]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[163]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[164]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[165]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[166]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[167]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[168]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[169]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[170]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[171]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[172]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[173]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[174]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[175]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[176]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[177]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[178]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[179]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[180]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[181]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[182]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[183]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[184]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[185]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[186]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[187]" -type "float3" -0.40861446 1.154792 -1.0685215 ;
	setAttr ".pt[188]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[189]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[190]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[191]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[192]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[193]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[194]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[195]" -type "float3" -0.40861446 1.4910879 -1.0685215 ;
	setAttr ".pt[196]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[197]" -type "float3" -0.031189293 0.89518946 -0.42105776 ;
	setAttr ".pt[198]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[199]" -type "float3" 0 0.34911031 0 ;
	setAttr ".pt[212]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[213]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[214]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[215]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[216]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[217]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[218]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[219]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[220]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[221]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[222]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[223]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[224]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[225]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[226]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[227]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[228]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[229]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[230]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[231]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[232]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[233]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[234]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[235]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[236]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[237]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[238]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[239]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[240]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[241]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[242]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[243]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[244]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[245]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[246]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[247]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[248]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[249]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[250]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[251]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[252]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[253]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[254]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[255]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[256]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[257]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[258]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[259]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[260]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[261]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[262]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[263]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[264]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[265]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[266]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[267]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[268]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[269]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[270]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[271]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[272]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[273]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[274]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[275]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[276]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[277]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[278]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[279]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[280]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[281]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[282]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[283]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[284]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[285]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[286]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[287]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[288]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[289]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[290]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[291]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[292]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[293]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[294]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[295]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[296]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[297]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[298]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[299]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[300]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[301]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[302]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[303]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[304]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[305]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[306]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[307]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[308]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[309]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[310]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[311]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[312]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[313]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[314]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[315]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[316]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[317]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[318]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[319]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[320]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[321]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[322]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[323]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[324]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[325]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[326]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[327]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[328]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[329]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[330]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[331]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[332]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[333]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[334]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[335]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[336]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[337]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[338]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[339]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[340]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[341]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[342]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[343]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[344]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[345]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[346]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[347]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[348]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[349]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[350]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[351]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[352]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[353]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[354]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[355]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[356]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[357]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[358]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[359]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[360]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[361]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[362]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[363]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[364]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[365]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[366]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[367]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[368]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[369]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[370]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[371]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[372]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[373]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[374]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[375]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[376]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[377]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[378]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[379]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[380]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[381]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[382]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[383]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[384]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[385]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[386]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[387]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[388]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[389]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[390]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[391]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[392]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[393]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[394]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[395]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[396]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[397]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[398]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".pt[399]" -type "float3" -0.40861446 0.64868039 -1.0685215 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "transform8" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform8";
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
createNode transform -n "transform7" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform7";
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
createNode transform -n "transform6" -p "pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform6";
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
	setAttr -s 28 ".vt[0:27]"  -0.125 -0.25 3 0.125 -0.25 3 -0.125 0.25 3
		 0.125 0.25 3 -0.125 0.25 2 0.125 0.25 2 -0.125 0.25 1 0.125 0.25 1 -0.125 0.25 0
		 0.125 0.25 0 -0.125 0.25 -1 0.125 0.25 -1 -0.125 0.25 -2 0.125 0.25 -2 -0.125 0.25 -3
		 0.125 0.25 -3 -0.125 -0.25 -3 0.125 -0.25 -3 -0.125 -0.25 -2 0.125 -0.25 -2 -0.125 -0.25 -1
		 0.125 -0.25 -1 -0.125 -0.25 0 0.125 -0.25 0 -0.125 -0.25 1 0.125 -0.25 1 -0.125 -0.25 2
		 0.125 -0.25 2;
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
createNode transform -n "polySurface3";
	setAttr ".t" -type "double3" -27.415820519043827 0.69568826588536248 -39.257706430639409 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "transform9" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform9";
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
	setAttr -s 60 ".pt";
	setAttr ".pt[0]" -type "float3" -1.1389126 0 -0.63680857 ;
	setAttr ".pt[1]" -type "float3" -1.3141915 0 0.37361276 ;
	setAttr ".pt[2]" -type "float3" -1.1389126 0 -0.63680857 ;
	setAttr ".pt[3]" -type "float3" -1.3141915 0 0.37361276 ;
	setAttr ".pt[4]" -type "float3" -0.80210531 0 -0.57838225 ;
	setAttr ".pt[5]" -type "float3" -0.97738427 0 0.43203914 ;
	setAttr ".pt[6]" -type "float3" -0.46529824 0 -0.51995587 ;
	setAttr ".pt[7]" -type "float3" -0.6405772 0 0.49046552 ;
	setAttr ".pt[8]" -type "float3" -0.12849113 0 -0.46152955 ;
	setAttr ".pt[9]" -type "float3" -0.3037701 0 0.54889178 ;
	setAttr ".pt[10]" -type "float3" 0.026448298 0 -0.2495264 ;
	setAttr ".pt[11]" -type "float3" -0.028700892 0 0.32305863 ;
	setAttr ".pt[20]" -type "float3" 0.026448298 0 -0.2495264 ;
	setAttr ".pt[21]" -type "float3" -0.028700892 0 0.32305863 ;
	setAttr ".pt[22]" -type "float3" -0.12849113 0 -0.46152955 ;
	setAttr ".pt[23]" -type "float3" -0.3037701 0 0.54889178 ;
	setAttr ".pt[24]" -type "float3" -0.46529824 0 -0.51995587 ;
	setAttr ".pt[25]" -type "float3" -0.6405772 0 0.49046552 ;
	setAttr ".pt[26]" -type "float3" -0.80210531 0 -0.57838225 ;
	setAttr ".pt[27]" -type "float3" -0.97738427 0 0.43203914 ;
	setAttr ".pt[28]" -type "float3" -1.2995849 0 0.28941095 ;
	setAttr ".pt[29]" -type "float3" -1.3141915 0 0.37361276 ;
	setAttr ".pt[30]" -type "float3" -1.2995849 0 0.28941095 ;
	setAttr ".pt[31]" -type "float3" -1.3141915 0 0.37361276 ;
	setAttr ".pt[32]" -type "float3" -0.96277773 0 0.34783733 ;
	setAttr ".pt[33]" -type "float3" -0.97738427 0 0.43203914 ;
	setAttr ".pt[34]" -type "float3" -0.6259706 0 0.40626371 ;
	setAttr ".pt[35]" -type "float3" -0.6405772 0 0.49046552 ;
	setAttr ".pt[36]" -type "float3" -0.28916353 0 0.46469009 ;
	setAttr ".pt[37]" -type "float3" -0.3037701 0 0.54889178 ;
	setAttr ".pt[38]" -type "float3" -0.024105079 0 0.27534318 ;
	setAttr ".pt[39]" -type "float3" -0.028700892 0 0.32305863 ;
	setAttr ".pt[48]" -type "float3" -0.024105079 0 0.27534318 ;
	setAttr ".pt[49]" -type "float3" -0.028700892 0 0.32305863 ;
	setAttr ".pt[50]" -type "float3" -0.28916353 0 0.46469009 ;
	setAttr ".pt[51]" -type "float3" -0.3037701 0 0.54889178 ;
	setAttr ".pt[52]" -type "float3" -0.6259706 0 0.40626371 ;
	setAttr ".pt[53]" -type "float3" -0.6405772 0 0.49046552 ;
	setAttr ".pt[54]" -type "float3" -0.96277773 0 0.34783733 ;
	setAttr ".pt[55]" -type "float3" -0.97738427 0 0.43203914 ;
	setAttr ".pt[56]" -type "float3" -1.1389126 0 -0.63680857 ;
	setAttr ".pt[57]" -type "float3" -1.153519 0 -0.5526067 ;
	setAttr ".pt[58]" -type "float3" -1.1389126 0 -0.63680857 ;
	setAttr ".pt[59]" -type "float3" -1.153519 0 -0.5526067 ;
	setAttr ".pt[60]" -type "float3" -0.80210531 0 -0.57838225 ;
	setAttr ".pt[61]" -type "float3" -0.81671196 0 -0.49418047 ;
	setAttr ".pt[62]" -type "float3" -0.46529824 0 -0.51995587 ;
	setAttr ".pt[63]" -type "float3" -0.4799048 0 -0.43575412 ;
	setAttr ".pt[64]" -type "float3" -0.12849113 0 -0.46152955 ;
	setAttr ".pt[65]" -type "float3" -0.14309764 0 -0.3773278 ;
	setAttr ".pt[66]" -type "float3" 0.026448298 0 -0.2495264 ;
	setAttr ".pt[67]" -type "float3" 0.021852512 0 -0.20181099 ;
	setAttr ".pt[76]" -type "float3" 0.026448298 0 -0.2495264 ;
	setAttr ".pt[77]" -type "float3" 0.021852512 0 -0.20181099 ;
	setAttr ".pt[78]" -type "float3" -0.12849113 0 -0.46152955 ;
	setAttr ".pt[79]" -type "float3" -0.14309764 0 -0.3773278 ;
	setAttr ".pt[80]" -type "float3" -0.46529824 0 -0.51995587 ;
	setAttr ".pt[81]" -type "float3" -0.4799048 0 -0.43575412 ;
	setAttr ".pt[82]" -type "float3" -0.80210531 0 -0.57838225 ;
	setAttr ".pt[83]" -type "float3" -0.81671196 0 -0.49418047 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface4";
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
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
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -347.15857338255267 -2.2737367544323206e-13 -626.02365691935722 ;
createNode transform -n "transform23" -p "pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform23";
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
	setAttr ".t" -type "double3" -340.15857338255267 -2.2737367544323206e-13 -626.02365691935722 ;
createNode transform -n "transform22" -p "pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube9";
	setAttr ".t" -type "double3" -333.15857338255262 -2.2737367544323206e-13 -626.02365691935711 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "transform21" -p "pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube10";
	setAttr ".t" -type "double3" -326.15857338255256 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform20" -p "pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" -319.15857338255256 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform19" -p "pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube12";
	setAttr ".t" -type "double3" -312.1585733825525 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform18" -p "pCube12";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube13";
	setAttr ".t" -type "double3" -305.15857338255245 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform17" -p "pCube13";
	setAttr ".v" no;
createNode mesh -n "pCubeShape13" -p "transform17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube14";
	setAttr ".t" -type "double3" -298.15857338255245 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform16" -p "pCube14";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube15";
	setAttr ".t" -type "double3" -291.15857338255239 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform15" -p "pCube15";
	setAttr ".v" no;
createNode mesh -n "pCubeShape15" -p "transform15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube16";
	setAttr ".t" -type "double3" -284.15857338255233 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform14" -p "pCube16";
	setAttr ".v" no;
createNode mesh -n "pCubeShape16" -p "transform14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube17";
	setAttr ".t" -type "double3" -277.15857338255233 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform13" -p "pCube17";
	setAttr ".v" no;
createNode mesh -n "pCubeShape17" -p "transform13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube18";
	setAttr ".t" -type "double3" -270.15857338255228 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform12" -p "pCube18";
	setAttr ".v" no;
createNode mesh -n "pCubeShape18" -p "transform12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube19";
	setAttr ".t" -type "double3" -263.15857338255222 -2.2737367544323206e-13 -626.02365691935699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "transform11" -p "pCube19";
	setAttr ".v" no;
createNode mesh -n "pCubeShape19" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "polySurface5";
	setAttr ".t" -type "double3" 686.36027793258529 1.1368683772161603e-13 30.10352096195561 ;
	setAttr ".r" -type "double3" 0 61.266846892174343 0 ;
createNode transform -n "polySurface6" -p "polySurface5";
createNode transform -n "transform37" -p "polySurface6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform37";
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
createNode transform -n "transform36" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform36";
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
createNode transform -n "transform35" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform35";
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
createNode transform -n "transform34" -p "polySurface9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform34";
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
createNode transform -n "transform33" -p "polySurface10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform33";
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
createNode transform -n "transform32" -p "polySurface11";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform32";
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
createNode transform -n "polySurface12" -p "polySurface5";
createNode transform -n "transform31" -p "polySurface12";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform31";
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
createNode transform -n "polySurface13" -p "polySurface5";
createNode transform -n "transform30" -p "polySurface13";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform30";
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
createNode transform -n "polySurface14" -p "polySurface5";
createNode transform -n "transform29" -p "polySurface14";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform29";
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
createNode transform -n "polySurface15" -p "polySurface5";
createNode transform -n "transform28" -p "polySurface15";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform28";
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
createNode transform -n "polySurface16" -p "polySurface5";
createNode transform -n "transform27" -p "polySurface16";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform27";
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
createNode transform -n "polySurface17" -p "polySurface5";
createNode transform -n "transform26" -p "polySurface17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform26";
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
createNode transform -n "polySurface18" -p "polySurface5";
createNode transform -n "transform25" -p "polySurface18";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform25";
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
createNode transform -n "transform24" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform24";
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
createNode transform -n "polySurface19";
	setAttr ".t" -type "double3" -316.41067646820358 25.128617571220168 -651.15415915808205 ;
	setAttr ".r" -type "double3" 0 2.7155768451602746 0 ;
createNode transform -n "polySurface21" -p "polySurface19";
	setAttr ".t" -type "double3" 0.045495150817420331 0 -0.95918036605176826 ;
createNode mesh -n "polySurfaceShape21" -p "polySurface21";
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
createNode transform -n "polySurface22" -p "polySurface19";
	setAttr ".t" -type "double3" 2.3979509151292504 0 0.11373787704354274 ;
	setAttr ".s" -type "double3" 1 0.89508486305198121 1 ;
createNode mesh -n "polySurfaceShape22" -p "polySurface22";
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
createNode transform -n "polySurface23" -p "polySurface19";
	setAttr ".t" -type "double3" -1.3477802474427036 0 -1.986603458329548 ;
	setAttr ".s" -type "double3" 1 1.1134825128544417 1 ;
createNode mesh -n "polySurfaceShape23" -p "polySurface23";
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
createNode transform -n "polySurface24" -p "polySurface19";
	setAttr ".s" -type "double3" 1 1.1576621125385145 1 ;
createNode mesh -n "polySurfaceShape24" -p "polySurface24";
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
createNode transform -n "polySurface25" -p "polySurface19";
	setAttr ".t" -type "double3" 2.3069606134944149 0 2.0320986091469657 ;
	setAttr ".s" -type "double3" 1 0.73374164773766204 1 ;
createNode mesh -n "polySurfaceShape25" -p "polySurface25";
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
createNode transform -n "polySurface26" -p "polySurface19";
	setAttr ".t" -type "double3" -1.8728655812860027 0 -1.0501706676866034 ;
	setAttr ".s" -type "double3" 1 0.87632247292028098 1 ;
createNode mesh -n "polySurfaceShape26" -p "polySurface26";
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
createNode transform -n "polySurface27" -p "polySurface19";
	setAttr ".s" -type "double3" 1 0.86684677868840732 1 ;
createNode mesh -n "polySurfaceShape27" -p "polySurface27";
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
createNode transform -n "polySurface28" -p "polySurface19";
	setAttr ".t" -type "double3" 1.4387705490775957 0 0.068242726226127801 ;
	setAttr ".s" -type "double3" 1 1.0508863289044743 1 ;
createNode mesh -n "polySurfaceShape28" -p "polySurface28";
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
createNode transform -n "polySurface29" -p "polySurface19";
	setAttr ".s" -type "double3" 1 0.89503643377619635 1 ;
createNode mesh -n "polySurfaceShape29" -p "polySurface29";
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
createNode transform -n "polySurface30" -p "polySurface19";
	setAttr ".t" -type "double3" -0.54783290925195494 0 1.4160229736688883 ;
	setAttr ".s" -type "double3" 1 0.86693494753527844 1 ;
createNode mesh -n "polySurfaceShape30" -p "polySurface30";
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
createNode transform -n "polySurface31" -p "polySurface19";
	setAttr ".s" -type "double3" 1 0.99674979388020191 1 ;
createNode mesh -n "polySurfaceShape31" -p "polySurface31";
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
createNode transform -n "polySurface32" -p "polySurface19";
	setAttr ".t" -type "double3" 2.3069606134944154 0 2.0320986091469662 ;
	setAttr ".s" -type "double3" 1 1.0329527914403789 1 ;
createNode mesh -n "polySurfaceShape32" -p "polySurface32";
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
createNode transform -n "polySurface33" -p "polySurface19";
	setAttr ".s" -type "double3" 1 1.1223682536136648 1 ;
createNode mesh -n "polySurfaceShape33" -p "polySurface33";
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
createNode transform -n "transform38" -p "polySurface19";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform38";
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
createNode transform -n "polySurface20";
	setAttr ".t" -type "double3" -190.43270064805978 29.97844719465148 -610.35172767081053 ;
	setAttr ".r" -type "double3" 0 -5.6609921668375707 0 ;
createNode transform -n "polySurface34" -p "polySurface20";
	setAttr ".t" -type "double3" -0.71459300753695287 0 -2.3415776573636524 ;
	setAttr ".s" -type "double3" 1 0.87585184484019885 1 ;
createNode mesh -n "polySurfaceShape34" -p "polySurface34";
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
createNode transform -n "polySurface35" -p "polySurface20";
	setAttr ".s" -type "double3" 1 1.2009478906315056 1 ;
createNode mesh -n "polySurfaceShape35" -p "polySurface35";
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
createNode transform -n "polySurface36" -p "polySurface20";
	setAttr ".t" -type "double3" 2.0058730745408742 0 0.76613127182416974 ;
	setAttr ".s" -type "double3" 1 0.65081216327550206 1 ;
createNode mesh -n "polySurfaceShape36" -p "polySurface36";
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
createNode transform -n "polySurface37" -p "polySurface20";
	setAttr ".s" -type "double3" 1 0.95898553886993043 1 ;
createNode mesh -n "polySurfaceShape37" -p "polySurface37";
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
createNode transform -n "polySurface38" -p "polySurface20";
createNode mesh -n "polySurfaceShape38" -p "polySurface38";
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
createNode transform -n "polySurface39" -p "polySurface20";
	setAttr ".t" -type "double3" -2.8667264525435123 0 0.28416631853560187 ;
	setAttr ".s" -type "double3" 1 1.0897028332258116 1 ;
createNode mesh -n "polySurfaceShape39" -p "polySurface39";
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
createNode transform -n "polySurface40" -p "polySurface20";
	setAttr ".t" -type "double3" -1.9585120214515972 0 -0.28834352973349486 ;
createNode mesh -n "polySurfaceShape40" -p "polySurface40";
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
createNode transform -n "polySurface41" -p "polySurface20";
	setAttr ".t" -type "double3" 1.670168491718105 0 2.2468555511851203 ;
	setAttr ".s" -type "double3" 1 0.90293673034567412 1 ;
createNode mesh -n "polySurfaceShape41" -p "polySurface41";
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
createNode transform -n "polySurface42" -p "polySurface20";
	setAttr ".t" -type "double3" -1.9111509683623322 0 0.18944421235706699 ;
createNode mesh -n "polySurfaceShape42" -p "polySurface42";
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
createNode transform -n "polySurface43" -p "polySurface20";
	setAttr ".t" -type "double3" 1.8596127040751358 0 4.158006519547369 ;
	setAttr ".s" -type "double3" 1 1.0517859307666075 1 ;
createNode mesh -n "polySurfaceShape43" -p "polySurface43";
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
createNode transform -n "polySurface44" -p "polySurface20";
	setAttr ".t" -type "double3" -1.8637899152730395 0 0.66723195444762617 ;
	setAttr ".s" -type "double3" 1 0.93000185835047322 1 ;
createNode mesh -n "polySurfaceShape44" -p "polySurface44";
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
createNode transform -n "polySurface45" -p "polySurface20";
	setAttr ".t" -type "double3" 1.1923807496274867 0 2.2942166042743906 ;
createNode mesh -n "polySurfaceShape45" -p "polySurface45";
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
createNode transform -n "polySurface46" -p "polySurface20";
	setAttr ".s" -type "double3" 1 0.87555824179844488 1 ;
createNode mesh -n "polySurfaceShape46" -p "polySurface46";
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
createNode transform -n "transform39" -p "polySurface20";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:77]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 182 ".uvst[0].uvsp[0:181]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 104 ".vt[0:103]"  -28.47943115 -20 36.96085358 -26.075805664 -20 32.5765152
		 -28.47943115 20 36.96085358 -26.075805664 20 32.5765152 -32.86376953 20 34.55719757
		 -30.46014404 20 30.17285728 -32.86376953 -20 34.55719757 -30.46014404 -20 30.17285728
		 -25.11431885 -20 30.82275963 -22.71069336 -20 26.43842125 -25.11431885 20 30.82275963
		 -22.71069336 20 26.43842125 -29.49865723 20 28.41910362 -27.095031738 20 24.034765244
		 -29.49865723 -20 28.41910362 -27.095031738 -20 24.034765244 -21.74920654 -20 24.6846981
		 -19.34558105 -20 20.30035973 -21.74920654 20 24.6846981 -19.34558105 20 20.30035973
		 -26.13354492 20 22.2810421 -23.72991943 20 17.89670372 -26.13354492 -20 22.2810421
		 -23.72991943 -20 17.89670372 -18.38409424 -20 18.54660606 -15.98046875 -20 14.16226768
		 -18.38409424 20 18.54660606 -15.98046875 20 14.16226768 -22.76843262 20 16.14295006
		 -20.36480713 20 11.75861168 -22.76843262 -20 16.14295006 -20.36480713 -20 11.75861168
		 -15.018981934 -20 12.40854454 -12.61529541 -20 8.024206161 -15.018981934 20 12.40854454
		 -12.61529541 20 8.024206161 -19.40332031 20 10.0048885345 -16.99969482 20 5.62055016
		 -19.40332031 -20 10.0048885345 -16.99969482 -20 5.62055016 -11.65386963 -20 6.2704525
		 -9.25018311 -20 1.88611412 -11.65386963 20 6.2704525 -9.25018311 20 1.88611412 -16.038208008 20 3.86679649
		 -13.63458252 20 -0.51754189 -16.038208008 -20 3.86679649 -13.63458252 -20 -0.51754189
		 -8.28875732 -20 0.13239098 -5.8850708 -20 -4.2519474 -8.28875732 20 0.13239098 -5.8850708 20 -4.2519474
		 -12.6730957 20 -2.27126503 -10.26947021 20 -6.65560341 -12.6730957 -20 -2.27126503
		 -10.26947021 -20 -6.65560341 -4.92364502 -20 -6.0057010651 -2.5199585 -20 -10.39003944
		 -4.92364502 20 -6.0057010651 -2.5199585 20 -10.39003944 -9.3079834 20 -8.40935707
		 -6.90435791 20 -12.79369545 -9.3079834 -20 -8.40935707 -6.90435791 -20 -12.79369545
		 -1.55853271 -20 -12.14376259 0.84515381 -20 -16.52811623 -1.55853271 20 -12.14376259
		 0.84515381 20 -16.52811623 -5.94287109 20 -14.54741859 -3.53918457 20 -18.93177223
		 -5.94287109 -20 -14.54741859 -3.53918457 -20 -18.93177223 1.80657959 -20 -18.28183937
		 4.21026611 -20 -22.66619301 1.80657959 20 -18.28183937 4.21026611 20 -22.66619301
		 -2.57775879 20 -20.68549538 -0.17407227 20 -25.069849014 -2.57775879 -20 -20.68549538
		 -0.17407227 -20 -25.069849014 5.17169189 -20 -24.41991615 7.57537842 -20 -28.80426979
		 5.17169189 20 -24.41991615 7.57537842 20 -28.80426979 0.78735352 20 -26.82357216
		 3.19104004 20 -31.2079258 0.78735352 -20 -26.82357216 3.19104004 -20 -31.2079258
		 8.5368042 -20 -30.55799294 10.94049072 -20 -34.94234467 8.5368042 20 -30.55799294
		 10.94049072 20 -34.94234467 4.15252686 20 -32.96164703 6.55615234 20 -37.34600067
		 4.15252686 -20 -32.96164703 6.55615234 -20 -37.34600067 11.9019165 -20 -36.69608307
		 14.30560303 -20 -41.080421448 11.9019165 20 -36.69608307 14.30560303 20 -41.080421448
		 7.51763916 20 -39.099739075 9.92126465 20 -43.48407745 7.51763916 -20 -39.099739075
		 9.92126465 -20 -43.48407745;
	setAttr -s 156 ".ed[0:155]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0
		 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0
		 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0
		 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0
		 58 59 0 60 61 0 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0
		 64 65 0 66 67 0 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0
		 71 65 0 72 73 0 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0
		 78 72 0 79 73 0 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0
		 85 87 0 86 80 0 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0
		 92 94 0 93 95 0 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0
		 98 100 0 99 101 0 100 102 0 101 103 0 102 96 0 103 97 0;
	setAttr -s 78 -ch 312 ".fc[0:77]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 144 149 -146 -149
		mu 0 4 168 169 170 171
		f 4 145 151 -147 -151
		mu 0 4 171 170 172 173
		f 4 146 153 -148 -153
		mu 0 4 173 172 174 175
		f 4 147 155 -145 -155
		mu 0 4 175 174 176 177
		f 4 -156 -154 -152 -150
		mu 0 4 169 178 179 170
		f 4 154 148 150 152
		mu 0 4 180 168 171 181;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube20";
	setAttr ".t" -type "double3" -135.23450667347404 50.42879312690696 -460.2335630339187 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	setAttr -k off ".v";
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
	setAttr ".t" -type "double3" -6.0872103232393613 13.878730060634737 -229.02618065668938 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape47" -p "pCube21";
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
createNode transform -n "pCube22";
	setAttr ".t" -type "double3" -64.52326193943631 30.946333514882411 -301.00583743450602 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape48" -p "pCube22";
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
createNode transform -n "pCube23";
	setAttr ".t" -type "double3" -22.624034410798032 39.683776659019905 -322.81785463990514 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape49" -p "pCube23";
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
createNode transform -n "pCube24";
	setAttr ".t" -type "double3" -94.147296350234342 43.776880088908086 -381.71030109448236 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape50" -p "pCube24";
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
createNode transform -n "pCube25";
	setAttr ".t" -type "double3" -23.892446454577282 7.751075660734692 -139.59691011455354 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape51" -p "pCube25";
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
createNode transform -n "pCube26";
	setAttr ".t" -type "double3" -129.33592574564281 29.18059980582634 -551.10444212429707 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape52" -p "pCube26";
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
createNode transform -n "pCube27";
	setAttr ".t" -type "double3" -67.572526654553158 49.103690057212845 -486.68635678179413 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape53" -p "pCube27";
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
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "F___Forest_Path_1:polyCube1";
	setAttr ".w" 3;
	setAttr ".h" 0.5;
	setAttr ".d" 16;
	setAttr ".sd" 17;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Forest_Path_1:polyCube2";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 16;
	setAttr ".sd" 17;
	setAttr ".cuv" 4;
createNode polyUnite -n "F___Forest_Path_1:polyUnite1";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "F___Forest_Path_1:groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:69]";
createNode groupId -n "F___Forest_Path_1:groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:69]";
createNode groupId -n "F___Forest_Path_1:groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:209]";
createNode polyPipe -n "F___Forest_Path_1:polyPipe1";
	setAttr ".r" 14;
	setAttr ".h" 1;
	setAttr ".t" 8;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "F___Forest_Path_1:polyPipe2";
	setAttr ".r" 14;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "F___Forest_Path_1:polyPipe3";
	setAttr ".r" 6.25;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyUnite -n "F___Forest_Path_1:polyUnite2";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "F___Forest_Path_1:groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "F___Forest_Path_1:groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "F___Forest_Path_1:groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "F___Forest_Path_1:groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:383]";
createNode deleteComponent -n "F___Forest_Path_1:deleteComponent1";
	setAttr ".dc" -type "componentList" 13 "f[0:3]" "f[20:36]" "f[52:68]" "f[84:100]" "f[116:132]" "f[148:164]" "f[180:196]" "f[212:228]" "f[244:259]" "f[276:291]" "f[309:323]" "f[340:355]" "f[372:383]";
createNode deleteComponent -n "F___Forest_Path_1:deleteComponent2";
	setAttr ".dc" -type "componentList" 5 "f[0]" "f[121]" "f[137]" "f[153:154]" "f[170]";
createNode deleteComponent -n "F___Forest_Path_1:deleteComponent3";
	setAttr ".dc" -type "componentList" 12 "f[0:2]" "f[15:17]" "f[30:32]" "f[45:47]" "f[60:62]" "f[75:77]" "f[90:92]" "f[105:107]" "f[120:122]" "f[135:137]" "f[150:152]" "f[165:167]";
createNode polyCut -n "F___Forest_Path_1:polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:209]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -8 1;
	setAttr ".pc" -type "double3" 8.8583815324367752 6.2400997974778774 -45.502830344915502 ;
	setAttr ".ro" -type "double3" 32.834594726810877 -10.891589520042077 110.260055868842 ;
	setAttr ".ps" -type "double2" 13.965584754943848 1 ;
createNode polyTweak -n "F___Forest_Path_1:polyTweak1";
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
createNode deleteComponent -n "F___Forest_Path_1:deleteComponent4";
	setAttr ".dc" -type "componentList" 7 "f[18:19]" "f[53]" "f[158:159]" "f[193]" "f[210]" "f[218]" "f[220]";
createNode deleteComponent -n "F___Forest_Path_1:deleteComponent5";
	setAttr ".dc" -type "componentList" 5 "f[85:86]" "f[120]" "f[205]" "f[207]" "f[209]";
createNode polyUnite -n "F___Forest_Path_1:polyUnite3";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "F___Forest_Path_1:groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:350]";
	setAttr ".gi" 15;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 2 "e[408]" "e[493]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 204;
	setAttr ".sv2" 241;
createNode groupParts -n "F___Forest_Path_1:groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:356]";
	setAttr ".gi" 17;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[409]" "e[519]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 207;
	setAttr ".sv2" 267;
createNode groupParts -n "F___Forest_Path_1:groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:362]";
	setAttr ".gi" 18;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[414]" "e[680]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 209;
	setAttr ".sv2" 332;
createNode groupParts -n "F___Forest_Path_1:groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:368]";
	setAttr ".gi" 19;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[415]" "e[706]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 210;
	setAttr ".sv2" 358;
createNode groupParts -n "F___Forest_Path_1:groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:374]";
	setAttr ".gi" 20;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge5";
	setAttr ".ics" -type "componentList" 2 "e[412]" "e[693]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 208;
	setAttr ".sv2" 345;
createNode groupParts -n "F___Forest_Path_1:groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:380]";
	setAttr ".gi" 21;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge6";
	setAttr ".ics" -type "componentList" 2 "e[418]" "e[580]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 213;
	setAttr ".sv2" 280;
createNode groupParts -n "F___Forest_Path_1:groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:386]";
	setAttr ".gi" 22;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge7";
	setAttr ".ics" -type "componentList" 2 "e[416]" "e[593]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 212;
	setAttr ".sv2" 293;
createNode groupParts -n "F___Forest_Path_1:groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:392]";
	setAttr ".gi" 23;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge8";
	setAttr ".ics" -type "componentList" 2 "e[411]" "e[506]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 206;
	setAttr ".sv2" 254;
createNode polyTweak -n "F___Forest_Path_1:polyTweak2";
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
createNode groupParts -n "F___Forest_Path_1:groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:398]";
	setAttr ".gi" 24;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge9";
	setAttr ".ics" -type "componentList" 2 "e[419]" "e[606]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 214;
	setAttr ".sv2" 306;
createNode groupId -n "F___Forest_Path_1:groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:404]";
createNode polyCube -n "F___Forest_Path_1:polyCube3";
	setAttr ".w" 3;
	setAttr ".h" 0.5;
	setAttr ".d" 5;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Forest_Path_1:polyCube4";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 5;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyUnite -n "F___Forest_Path_1:polyUnite4";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "F___Forest_Path_1:groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "F___Forest_Path_1:groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "F___Forest_Path_1:groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId20";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId21";
	setAttr ".ihi" 0;
createNode groupId -n "F___Forest_Path_1:groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode polyUnite -n "F___Forest_Path_1:polyUnite5";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "F___Forest_Path_1:groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:482]";
	setAttr ".gi" 33;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge10";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode groupId -n "F___Forest_Path_1:groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:482]";
createNode polySeparate -n "F___Forest_Path_1:polySeparate1";
	setAttr ".ic" 6;
	setAttr -s 6 ".out";
createNode groupId -n "F___Forest_Path_1:groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:134]";
createNode groupId -n "F___Forest_Path_1:groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:134]";
createNode groupId -n "F___Forest_Path_1:groupId26";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:134]";
createNode groupId -n "F___Forest_Path_1:groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "F___Forest_Path_1:groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "F___Forest_Path_1:groupId29";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode polyCut -n "F___Forest_Path_1:polyCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" -2.1463107279664975 -0.66877380615468485 -47.618211201916246 ;
	setAttr ".ro" -type "double3" -82.698003033488092 80.983180742827514 94.958602561270141 ;
	setAttr ".ps" -type "double2" 10.840832710266112 1 ;
createNode polyCut -n "F___Forest_Path_1:polyCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" -2.1462520433135244 -0.66742480775778301 -47.61793108041973 ;
	setAttr ".ro" -type "double3" -82.698003033488064 80.983180742827514 94.958602561270169 ;
	setAttr ".ps" -type "double2" 10.840832710266112 1 ;
createNode polyCut -n "F___Forest_Path_1:polyCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" -2.1102082664115369 0.16112226115338971 -47.445882065759911 ;
	setAttr ".ro" -type "double3" -82.698003033488035 80.983180742827514 94.958602561270169 ;
	setAttr ".ps" -type "double2" 10.840832710266112 1 ;
createNode polyUnite -n "F___Forest_Path_1:polyUnite6";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "F___Forest_Path_1:groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:89]";
createNode deleteComponent -n "F___Forest_Path_1:deleteComponent6";
	setAttr ".dc" -type "componentList" 10 "f[7:8]" "f[20]" "f[26]" "f[37:38]" "f[50]" "f[56]" "f[67:68]" "f[80]" "f[86]" "f[88]";
createNode deleteComponent -n "F___Forest_Path_1:deleteComponent7";
	setAttr ".dc" -type "componentList" 2 "f[24]" "f[50]";
createNode polyUnite -n "F___Forest_Path_1:polyUnite7";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupParts -n "F___Forest_Path_1:groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:479]";
	setAttr ".gi" 42;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge11";
	setAttr ".ics" -type "componentList" 2 "e[201]" "e[921]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 98;
	setAttr ".sv2" 486;
createNode groupParts -n "F___Forest_Path_1:groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:485]";
	setAttr ".gi" 43;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge12";
	setAttr ".ics" -type "componentList" 2 "e[227]" "e[922]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 72;
	setAttr ".sv2" 489;
createNode groupParts -n "F___Forest_Path_1:groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:491]";
	setAttr ".gi" 44;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge13";
	setAttr ".ics" -type "componentList" 2 "e[214]" "e[923]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 111;
	setAttr ".sv2" 487;
createNode groupParts -n "F___Forest_Path_1:groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:497]";
	setAttr ".gi" 45;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge14";
	setAttr ".ics" -type "componentList" 2 "e[796]" "e[975]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 419;
	setAttr ".sv2" 515;
createNode groupParts -n "F___Forest_Path_1:groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:503]";
	setAttr ".gi" 46;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge15";
	setAttr ".ics" -type "componentList" 2 "e[783]" "e[973]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 406;
	setAttr ".sv2" 514;
createNode groupParts -n "F___Forest_Path_1:groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:509]";
	setAttr ".gi" 47;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge16";
	setAttr ".ics" -type "componentList" 2 "e[505]" "e[1027]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 265;
	setAttr ".sv2" 543;
createNode groupParts -n "F___Forest_Path_1:groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:515]";
	setAttr ".gi" 48;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge17";
	setAttr ".ics" -type "componentList" 2 "e[492]" "e[1025]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 252;
	setAttr ".sv2" 542;
createNode groupParts -n "F___Forest_Path_1:groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:521]";
	setAttr ".gi" 49;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge18";
	setAttr ".ics" -type "componentList" 2 "e[770]" "e[976]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 393;
	setAttr ".sv2" 516;
createNode groupParts -n "F___Forest_Path_1:groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:527]";
	setAttr ".gi" 50;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge19";
	setAttr ".ics" -type "componentList" 2 "e[479]" "e[1028]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 239;
	setAttr ".sv2" 544;
createNode groupParts -n "F___Forest_Path_1:groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:533]";
	setAttr ".gi" 51;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge20";
	setAttr ".ics" -type "componentList" 2 "e[188]" "e[924]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 85;
	setAttr ".sv2" 488;
createNode groupParts -n "F___Forest_Path_1:groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:539]";
	setAttr ".gi" 52;
createNode polyBridgeEdge -n "F___Forest_Path_1:polyBridgeEdge21";
	setAttr ".ics" -type "componentList" 2 "e[138]" "e[200]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 69;
	setAttr ".sv2" 84;
createNode groupId -n "F___Forest_Path_1:groupId31";
	setAttr ".ihi" 0;
createNode groupParts -n "F___Forest_Path_1:groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:545]";
createNode script -n "F___Forest_Path_1:uiConfigurationScriptNode";
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
createNode script -n "F___Forest_Path_1:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 19 "f[69:79]" "f[81:116]" "f[204:214]" "f[216:226]" "f[228:238]" "f[240:250]" "f[339:386]" "f[407:415]" "f[417:421]" "f[423:424]" "f[428:429]" "f[432:440]" "f[442:446]" "f[448:451]" "f[453:454]" "f[459:463]" "f[467:469]" "f[473:474]" "f[478:539]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[266:290]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 6 "f[69:81]" "f[83:87]" "f[157:178]" "f[251:253]" "f[257:259]" "f[261:271]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 2 "f[210]" "f[213]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[211]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 2 "f[69]" "f[208:210]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[207]";
createNode polyCube -n "polyCube1";
	setAttr ".w" 3;
	setAttr ".h" 0.5;
	setAttr ".d" 6;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 6;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite1";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
	setAttr ".gi" 59;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:77]";
	setAttr ".ix" -type "matrix" 0.3931177212048993 0 -0.91948814961078595 0 0 1 0 0
		 0.91948814961078595 0 0.3931177212048993 0 -21.051356414114508 -0.0086090939917617959 -35.623439286307658 1;
	setAttr ".pc" -type "double3" -20.210678371402231 -0.082039419117792931 -30.281789735465335 ;
	setAttr ".ro" -type "double3" -174.0929836674074 66.822049720044816 6.1027593659494652 ;
	setAttr ".ps" -type "double2" 7.7193527221679679 1.0000000298023224 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk";
	setAttr ".tk[0]" -type "float3" -2.6024528 0 0 ;
	setAttr ".tk[1]" -type "float3" 2.6024528 0 0 ;
	setAttr ".tk[2]" -type "float3" -2.6024528 0 0 ;
	setAttr ".tk[3]" -type "float3" 2.6024528 0 0 ;
	setAttr ".tk[4]" -type "float3" -2.3281019 0 0 ;
	setAttr ".tk[5]" -type "float3" 2.3281019 0 0 ;
	setAttr ".tk[6]" -type "float3" -1.7538027 0 0 ;
	setAttr ".tk[7]" -type "float3" 1.7538027 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.93476921 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.93476921 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.31664005 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.31664005 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.31664005 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.31664005 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.93476921 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.93476921 0 0 ;
	setAttr ".tk[24]" -type "float3" -1.7538027 0 0 ;
	setAttr ".tk[25]" -type "float3" 1.7538027 0 0 ;
	setAttr ".tk[26]" -type "float3" -2.3281019 0 0 ;
	setAttr ".tk[27]" -type "float3" 2.3281019 0 0 ;
	setAttr ".tk[28]" -type "float3" 2.1687105 0 0 ;
	setAttr ".tk[29]" -type "float3" 2.6024528 0 0 ;
	setAttr ".tk[30]" -type "float3" 2.1687105 0 0 ;
	setAttr ".tk[31]" -type "float3" 2.6024528 0 0 ;
	setAttr ".tk[32]" -type "float3" 1.9400846 0 0 ;
	setAttr ".tk[33]" -type "float3" 2.3281019 0 0 ;
	setAttr ".tk[34]" -type "float3" 1.461502 0 0 ;
	setAttr ".tk[35]" -type "float3" 1.7538027 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.77897429 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.93476921 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.26386669 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.31664005 0 0 ;
	setAttr ".tk[48]" -type "float3" 0.26386669 0 0 ;
	setAttr ".tk[49]" -type "float3" 0.31664005 0 0 ;
	setAttr ".tk[50]" -type "float3" 0.77897429 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.93476921 0 0 ;
	setAttr ".tk[52]" -type "float3" 1.461502 0 0 ;
	setAttr ".tk[53]" -type "float3" 1.7538027 0 0 ;
	setAttr ".tk[54]" -type "float3" 1.9400846 0 0 ;
	setAttr ".tk[55]" -type "float3" 2.3281019 0 0 ;
	setAttr ".tk[56]" -type "float3" -2.6024528 0 0 ;
	setAttr ".tk[57]" -type "float3" -2.1687105 0 0 ;
	setAttr ".tk[58]" -type "float3" -2.6024528 0 0 ;
	setAttr ".tk[59]" -type "float3" -2.1687105 0 0 ;
	setAttr ".tk[60]" -type "float3" -2.3281019 0 0 ;
	setAttr ".tk[61]" -type "float3" -1.9400846 0 0 ;
	setAttr ".tk[62]" -type "float3" -1.7538027 0 0 ;
	setAttr ".tk[63]" -type "float3" -1.461502 0 0 ;
	setAttr ".tk[64]" -type "float3" -0.93476921 0 0 ;
	setAttr ".tk[65]" -type "float3" -0.77897429 0 0 ;
	setAttr ".tk[66]" -type "float3" -0.31664005 0 0 ;
	setAttr ".tk[67]" -type "float3" -0.26386669 0 0 ;
	setAttr ".tk[76]" -type "float3" -0.31664005 0 0 ;
	setAttr ".tk[77]" -type "float3" -0.26386669 0 0 ;
	setAttr ".tk[78]" -type "float3" -0.93476921 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.77897429 0 0 ;
	setAttr ".tk[80]" -type "float3" -1.7538027 0 0 ;
	setAttr ".tk[81]" -type "float3" -1.461502 0 0 ;
	setAttr ".tk[82]" -type "float3" -2.3281019 0 0 ;
	setAttr ".tk[83]" -type "float3" -1.9400846 0 0 ;
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 7 "f[0:1]" "f[19]" "f[26:27]" "f[45]" "f[79]" "f[83]" "f[85]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 5 "f[46:47]" "f[65]" "f[74]" "f[78]" "f[80]";
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:281]";
	setAttr ".gi" 61;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[136]" "e[564]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 68;
	setAttr ".sv2" 289;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:287]";
	setAttr ".gi" 62;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[416]" "e[572]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 212;
	setAttr ".sv2" 297;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:293]";
	setAttr ".gi" 63;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[276]" "e[568]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 140;
	setAttr ".sv2" 293;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:299]";
	setAttr ".gi" 64;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".ics" -type "componentList" 2 "e[419]" "e[575]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 214;
	setAttr ".sv2" 296;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:305]";
	setAttr ".gi" 65;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	setAttr ".ics" -type "componentList" 2 "e[137]" "e[565]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 71;
	setAttr ".sv2" 290;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:311]";
	setAttr ".gi" 66;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	setAttr ".ics" -type "componentList" 2 "e[139]" "e[567]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 70;
	setAttr ".sv2" 288;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:317]";
	setAttr ".gi" 67;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	setAttr ".ics" -type "componentList" 2 "e[418]" "e[574]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 213;
	setAttr ".sv2" 299;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:323]";
	setAttr ".gi" 68;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	setAttr ".ics" -type "componentList" 2 "e[279]" "e[571]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 142;
	setAttr ".sv2" 292;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:329]";
	setAttr ".gi" 69;
createNode polyBridgeEdge -n "polyBridgeEdge10";
	setAttr ".ics" -type "componentList" 2 "e[138]" "e[566]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 69;
	setAttr ".sv2" 291;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:335]";
	setAttr ".gi" 70;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	setAttr ".ics" -type "componentList" 2 "e[278]" "e[570]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 141;
	setAttr ".sv2" 295;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:341]";
createNode polyCube -n "polyCube3";
	setAttr ".w" 3;
	setAttr ".h" 0.5;
	setAttr ".d" 6;
	setAttr ".sw" 2;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 6;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite3";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:91]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 12 "e[32]" "e[35]" "e[38]" "e[41]" "e[44]" "e[47]" "e[53]" "e[56]" "e[59]" "e[62]" "e[65]" "e[68]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "e[29]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "e[43]";
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 2 "vtx[22]" "vtx[25]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 2 "vtx[19]" "vtx[26]";
createNode deleteComponent -n "deleteComponent15";
	setAttr ".dc" -type "componentList" 2 "vtx[16]" "vtx[27]";
createNode deleteComponent -n "deleteComponent16";
	setAttr ".dc" -type "componentList" 2 "vtx[13]" "vtx[28]";
createNode deleteComponent -n "deleteComponent17";
	setAttr ".dc" -type "componentList" 2 "vtx[10]" "vtx[29]";
createNode deleteComponent -n "deleteComponent18";
	setAttr ".dc" -type "componentList" 2 "vtx[7]" "vtx[30]";
createNode deleteComponent -n "deleteComponent19";
	setAttr ".dc" -type "componentList" 2 "vtx[1]" "vtx[4]";
createNode polyUnite -n "polyUnite4";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:419]";
	setAttr ".gi" 105;
createNode polyCut -n "polyCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:419]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" -24.111929978029792 1.4439334741816079 -39.6226918679017 ;
	setAttr ".ro" -type "double3" -1.0015441886899303 -70.083594006189756 180 ;
	setAttr ".ps" -type "double2" 32.36485481262207 2.746314525604248 ;
createNode polyCut -n "polyCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:431]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" -23.347860020503227 1.4439334741816079 -39.286501086590086 ;
	setAttr ".ro" -type "double3" 1.884719022811095 -66.336859291807997 180 ;
	setAttr ".ps" -type "double2" 32.36485481262207 2.746314525604248 ;
createNode deleteComponent -n "deleteComponent20";
	setAttr ".dc" -type "componentList" 15 "f[212:213]" "f[224]" "f[235:236]" "f[247]" "f[342]" "f[355]" "f[394:395]" "f[413]" "f[420]" "f[423]" "f[429]" "f[431:432]" "f[434]" "f[436]" "f[438]";
createNode deleteComponent -n "deleteComponent21";
	setAttr ".dc" -type "componentList" 4 "f[253]" "f[264]" "f[421]" "f[423]";
createNode deleteComponent -n "deleteComponent22";
	setAttr ".dc" -type "componentList" 1 "f[252]";
createNode deleteComponent -n "deleteComponent23";
	setAttr ".dc" -type "componentList" 5 "f[350]" "f[357:358]" "f[376]" "f[409]" "f[411]";
createNode polyBridgeEdge -n "polyBridgeEdge12";
	setAttr ".ics" -type "componentList" 2 "e[872]" "e[890]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 461;
	setAttr ".sv2" 472;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:419]";
	setAttr ".gi" 106;
createNode polyBridgeEdge -n "polyBridgeEdge13";
	setAttr ".ics" -type "componentList" 2 "e[880]" "e[898]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 469;
	setAttr ".sv2" 480;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:425]";
	setAttr ".gi" 107;
createNode polyBridgeEdge -n "polyBridgeEdge14";
	setAttr ".ics" -type "componentList" 2 "e[876]" "e[894]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 465;
	setAttr ".sv2" 476;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:431]";
	setAttr ".gi" 108;
createNode polyBridgeEdge -n "polyBridgeEdge15";
	setAttr ".ics" -type "componentList" 2 "e[879]" "e[897]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 464;
	setAttr ".sv2" 478;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:437]";
	setAttr ".gi" 109;
createNode polyBridgeEdge -n "polyBridgeEdge16";
	setAttr ".ics" -type "componentList" 2 "e[882]" "e[900]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 471;
	setAttr ".sv2" 481;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:443]";
	setAttr ".gi" 110;
createNode polyBridgeEdge -n "polyBridgeEdge17";
	setAttr ".ics" -type "componentList" 2 "e[875]" "e[893]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 460;
	setAttr ".sv2" 474;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:449]";
	setAttr ".gi" 111;
createNode polyBridgeEdge -n "polyBridgeEdge18";
	setAttr ".ics" -type "componentList" 2 "e[883]" "e[901]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 468;
	setAttr ".sv2" 482;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:455]";
	setAttr ".gi" 112;
createNode polyBridgeEdge -n "polyBridgeEdge19";
	setAttr ".ics" -type "componentList" 2 "e[873]" "e[891]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 462;
	setAttr ".sv2" 475;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:461]";
	setAttr ".gi" 113;
createNode polyBridgeEdge -n "polyBridgeEdge20";
	setAttr ".ics" -type "componentList" 2 "e[874]" "e[892]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 463;
	setAttr ".sv2" 473;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:467]";
	setAttr ".gi" 114;
createNode polyBridgeEdge -n "polyBridgeEdge21";
	setAttr ".ics" -type "componentList" 2 "e[878]" "e[896]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 467;
	setAttr ".sv2" 477;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:473]";
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyCube -n "polyCube5";
	setAttr ".w" 5;
	setAttr ".h" 40;
	setAttr ".d" 5;
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite5";
	setAttr -s 13 ".ip";
	setAttr -s 13 ".im";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 13;
	setAttr -s 13 ".out";
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode polyUnite -n "polyUnite6";
	setAttr -s 13 ".ip";
	setAttr -s 13 ".im";
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 13;
	setAttr -s 13 ".out";
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 13;
	setAttr -s 13 ".out";
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId77";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId78";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId81";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId82";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId83";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId84";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode polyCube -n "polyCube6";
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
createNode polyTriangulate -n "polyTriangulate23";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate24";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate25";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate26";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate27";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate28";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate29";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate30";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate31";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate32";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate33";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate34";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate35";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate36";
	setAttr ".ics" -type "componentList" 1 "f[*]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 123 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 115 ".gn";
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
connectAttr "F___Forest_Path_1:groupId1.id" "F___Forest_Path_1:pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:pCubeShape1.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts1.og" "F___Forest_Path_1:pCubeShape1.i"
		;
connectAttr "F___Forest_Path_1:groupId2.id" "F___Forest_Path_1:pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "F___Forest_Path_1:groupId3.id" "F___Forest_Path_1:pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:pCubeShape2.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts2.og" "F___Forest_Path_1:pCubeShape2.i"
		;
connectAttr "F___Forest_Path_1:groupId4.id" "F___Forest_Path_1:pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "F___Forest_Path_1:groupId5.id" "F___Forest_Path_1:pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:pCubeShape3.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupId6.id" "F___Forest_Path_1:pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "F___Forest_Path_1:deleteComponent5.og" "F___Forest_Path_1:polySurfaceShape1.i"
		;
connectAttr "F___Forest_Path_1:groupId7.id" "F___Forest_Path_1:polySurfaceShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupId8.id" "F___Forest_Path_1:pPipeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:pPipeShape1.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts4.og" "F___Forest_Path_1:pPipeShape1.i"
		;
connectAttr "F___Forest_Path_1:groupId9.id" "F___Forest_Path_1:pPipeShape1.ciog.cog[0].cgid"
		;
connectAttr "F___Forest_Path_1:groupId10.id" "F___Forest_Path_1:pPipeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:pPipeShape2.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts5.og" "F___Forest_Path_1:pPipeShape2.i"
		;
connectAttr "F___Forest_Path_1:groupId11.id" "F___Forest_Path_1:pPipeShape2.ciog.cog[0].cgid"
		;
connectAttr "F___Forest_Path_1:groupId12.id" "F___Forest_Path_1:pPipeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:pPipeShape3.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts6.og" "F___Forest_Path_1:pPipeShape3.i"
		;
connectAttr "F___Forest_Path_1:groupId13.id" "F___Forest_Path_1:pPipeShape3.ciog.cog[0].cgid"
		;
connectAttr "F___Forest_Path_1:deleteComponent3.og" "F___Forest_Path_1:polySurfaceShape2.i"
		;
connectAttr "F___Forest_Path_1:groupId14.id" "F___Forest_Path_1:polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts17.og" "F___Forest_Path_1:polySurfaceShape3.i"
		;
connectAttr "F___Forest_Path_1:groupId15.id" "F___Forest_Path_1:polySurfaceShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape3.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupId16.id" "F___Forest_Path_1:pCubeShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:pCubeShape4.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts18.og" "F___Forest_Path_1:pCubeShape4.i"
		;
connectAttr "F___Forest_Path_1:groupId17.id" "F___Forest_Path_1:pCubeShape4.ciog.cog[0].cgid"
		;
connectAttr "F___Forest_Path_1:groupId18.id" "F___Forest_Path_1:pCubeShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:pCubeShape5.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts19.og" "F___Forest_Path_1:pCubeShape5.i"
		;
connectAttr "F___Forest_Path_1:groupId19.id" "F___Forest_Path_1:pCubeShape5.ciog.cog[0].cgid"
		;
connectAttr "F___Forest_Path_1:groupId20.id" "F___Forest_Path_1:pCubeShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:pCubeShape6.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupId21.id" "F___Forest_Path_1:pCubeShape6.ciog.cog[0].cgid"
		;
connectAttr "F___Forest_Path_1:groupParts20.og" "F___Forest_Path_1:polySurfaceShape4.i"
		;
connectAttr "F___Forest_Path_1:groupId22.id" "F___Forest_Path_1:polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts23.og" "F___Forest_Path_1:polySurfaceShape6.i"
		;
connectAttr "F___Forest_Path_1:groupId24.id" "F___Forest_Path_1:polySurfaceShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape6.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts24.og" "F___Forest_Path_1:polySurfaceShape7.i"
		;
connectAttr "F___Forest_Path_1:groupId25.id" "F___Forest_Path_1:polySurfaceShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape7.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts25.og" "F___Forest_Path_1:polySurfaceShape8.i"
		;
connectAttr "F___Forest_Path_1:groupId26.id" "F___Forest_Path_1:polySurfaceShape8.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape8.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:polyCut2.out" "F___Forest_Path_1:polySurfaceShape9.i"
		;
connectAttr "F___Forest_Path_1:groupId27.id" "F___Forest_Path_1:polySurfaceShape9.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape9.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:polyCut3.out" "F___Forest_Path_1:polySurfaceShape10.i"
		;
connectAttr "F___Forest_Path_1:groupId28.id" "F___Forest_Path_1:polySurfaceShape10.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape10.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:polyCut4.out" "F___Forest_Path_1:polySurfaceShape11.i"
		;
connectAttr "F___Forest_Path_1:groupId29.id" "F___Forest_Path_1:polySurfaceShape11.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape11.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:groupParts22.og" "F___Forest_Path_1:polySurfaceShape5.i"
		;
connectAttr "F___Forest_Path_1:groupId23.id" "F___Forest_Path_1:polySurfaceShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "F___Forest_Path_1:deleteComponent7.og" "F___Forest_Path_1:polySurfaceShape12.i"
		;
connectAttr "F___Forest_Path_1:groupId30.id" "F___Forest_Path_1:polySurfaceShape12.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape12.iog.og[0].gco"
		;
connectAttr "deleteComponent7.og" "F___Forest_Path_1:polySurfaceShape13.i";
connectAttr "F___Forest_Path_1:groupId31.id" "F___Forest_Path_1:polySurfaceShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "F___Forest_Path_1:polySurfaceShape13.iog.og[0].gco"
		;
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
connectAttr "deleteComponent9.og" "polySurfaceShape1.i";
connectAttr "groupId7.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape2.i";
connectAttr "groupId8.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId9.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts16.og" "pCubeShape4.i";
connectAttr "groupId10.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId11.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupParts17.og" "pCubeShape5.i";
connectAttr "groupId12.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId13.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupId14.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "deleteComponent19.og" "polySurfaceShape3.i";
connectAttr "groupId15.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "polyTriangulate2.out" "polySurfaceShape4.i";
connectAttr "groupId16.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId17.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupParts30.og" "pCubeShape7.i";
connectAttr "groupId18.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupId19.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupId20.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "groupId21.id" "pCubeShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape9.iog.og[0].gco";
connectAttr "groupId22.id" "pCubeShape9.ciog.cog[0].cgid";
connectAttr "groupId23.id" "pCubeShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape10.iog.og[0].gco";
connectAttr "groupId24.id" "pCubeShape10.ciog.cog[0].cgid";
connectAttr "groupId25.id" "pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "groupId26.id" "pCubeShape11.ciog.cog[0].cgid";
connectAttr "groupId27.id" "pCubeShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape12.iog.og[0].gco";
connectAttr "groupId28.id" "pCubeShape12.ciog.cog[0].cgid";
connectAttr "groupId29.id" "pCubeShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape13.iog.og[0].gco";
connectAttr "groupId30.id" "pCubeShape13.ciog.cog[0].cgid";
connectAttr "groupId31.id" "pCubeShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape14.iog.og[0].gco";
connectAttr "groupId32.id" "pCubeShape14.ciog.cog[0].cgid";
connectAttr "groupId33.id" "pCubeShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape15.iog.og[0].gco";
connectAttr "groupId34.id" "pCubeShape15.ciog.cog[0].cgid";
connectAttr "groupId35.id" "pCubeShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape16.iog.og[0].gco";
connectAttr "groupId36.id" "pCubeShape16.ciog.cog[0].cgid";
connectAttr "groupId37.id" "pCubeShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape17.iog.og[0].gco";
connectAttr "groupId38.id" "pCubeShape17.ciog.cog[0].cgid";
connectAttr "groupId39.id" "pCubeShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape18.iog.og[0].gco";
connectAttr "groupId40.id" "pCubeShape18.ciog.cog[0].cgid";
connectAttr "groupId41.id" "pCubeShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape19.iog.og[0].gco";
connectAttr "groupId42.id" "pCubeShape19.ciog.cog[0].cgid";
connectAttr "groupParts32.og" "polySurfaceShape6.i";
connectAttr "groupId44.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape7.i";
connectAttr "groupId45.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape8.i";
connectAttr "groupId46.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape9.i";
connectAttr "groupId47.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape10.i";
connectAttr "groupId48.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape11.i";
connectAttr "groupId49.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts38.og" "polySurfaceShape12.i";
connectAttr "groupId50.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts39.og" "polySurfaceShape13.i";
connectAttr "groupId51.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts40.og" "polySurfaceShape14.i";
connectAttr "groupId52.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts41.og" "polySurfaceShape15.i";
connectAttr "groupId53.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts42.og" "polySurfaceShape16.i";
connectAttr "groupId54.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape17.i";
connectAttr "groupId55.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts44.og" "polySurfaceShape18.i";
connectAttr "groupId56.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape5.i";
connectAttr "groupId43.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "polyTriangulate3.out" "polySurfaceShape21.i";
connectAttr "groupId59.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "polyTriangulate4.out" "polySurfaceShape22.i";
connectAttr "groupId60.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "polyTriangulate5.out" "polySurfaceShape23.i";
connectAttr "groupId61.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "polyTriangulate6.out" "polySurfaceShape24.i";
connectAttr "groupId62.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "polyTriangulate7.out" "polySurfaceShape25.i";
connectAttr "groupId63.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "polyTriangulate8.out" "polySurfaceShape26.i";
connectAttr "groupId64.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "polyTriangulate9.out" "polySurfaceShape27.i";
connectAttr "groupId65.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "polyTriangulate10.out" "polySurfaceShape28.i";
connectAttr "groupId66.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "polyTriangulate11.out" "polySurfaceShape29.i";
connectAttr "groupId67.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "polyTriangulate12.out" "polySurfaceShape30.i";
connectAttr "groupId68.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "polyTriangulate13.out" "polySurfaceShape31.i";
connectAttr "groupId69.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "polyTriangulate14.out" "polySurfaceShape32.i";
connectAttr "groupId70.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "polyTriangulate15.out" "polySurfaceShape33.i";
connectAttr "groupId71.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupParts45.og" "polySurfaceShape19.i";
connectAttr "groupId57.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "polyTriangulate16.out" "polySurfaceShape34.i";
connectAttr "groupId72.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "polyTriangulate17.out" "polySurfaceShape35.i";
connectAttr "groupId73.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "polyTriangulate18.out" "polySurfaceShape36.i";
connectAttr "groupId74.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "polyTriangulate19.out" "polySurfaceShape37.i";
connectAttr "groupId75.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "polyTriangulate20.out" "polySurfaceShape38.i";
connectAttr "groupId76.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "polyTriangulate21.out" "polySurfaceShape39.i";
connectAttr "groupId77.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "polyTriangulate22.out" "polySurfaceShape40.i";
connectAttr "groupId78.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "polyTriangulate23.out" "polySurfaceShape41.i";
connectAttr "groupId79.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "polyTriangulate24.out" "polySurfaceShape42.i";
connectAttr "groupId80.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "polyTriangulate25.out" "polySurfaceShape43.i";
connectAttr "groupId81.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "polyTriangulate26.out" "polySurfaceShape44.i";
connectAttr "groupId82.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "polyTriangulate27.out" "polySurfaceShape45.i";
connectAttr "groupId83.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "polyTriangulate28.out" "polySurfaceShape46.i";
connectAttr "groupId84.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupId58.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "polyTriangulate29.out" "pCubeShape20.i";
connectAttr "polyTriangulate30.out" "pCubeShape21.i";
connectAttr "polyTriangulate31.out" "pCubeShape22.i";
connectAttr "polyTriangulate32.out" "pCubeShape23.i";
connectAttr "polyTriangulate33.out" "pCubeShape24.i";
connectAttr "polyTriangulate34.out" "pCubeShape25.i";
connectAttr "polyTriangulate35.out" "pCubeShape26.i";
connectAttr "polyTriangulate36.out" "pCubeShape27.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "F___Forest_Path_1:pCubeShape1.o" "F___Forest_Path_1:polyUnite1.ip[0]"
		;
connectAttr "F___Forest_Path_1:pCubeShape2.o" "F___Forest_Path_1:polyUnite1.ip[1]"
		;
connectAttr "F___Forest_Path_1:pCubeShape3.o" "F___Forest_Path_1:polyUnite1.ip[2]"
		;
connectAttr "F___Forest_Path_1:pCubeShape1.wm" "F___Forest_Path_1:polyUnite1.im[0]"
		;
connectAttr "F___Forest_Path_1:pCubeShape2.wm" "F___Forest_Path_1:polyUnite1.im[1]"
		;
connectAttr "F___Forest_Path_1:pCubeShape3.wm" "F___Forest_Path_1:polyUnite1.im[2]"
		;
connectAttr "F___Forest_Path_1:polyCube1.out" "F___Forest_Path_1:groupParts1.ig"
		;
connectAttr "F___Forest_Path_1:groupId1.id" "F___Forest_Path_1:groupParts1.gi";
connectAttr "F___Forest_Path_1:polyCube2.out" "F___Forest_Path_1:groupParts2.ig"
		;
connectAttr "F___Forest_Path_1:groupId3.id" "F___Forest_Path_1:groupParts2.gi";
connectAttr "F___Forest_Path_1:polyUnite1.out" "F___Forest_Path_1:groupParts3.ig"
		;
connectAttr "F___Forest_Path_1:groupId7.id" "F___Forest_Path_1:groupParts3.gi";
connectAttr "F___Forest_Path_1:pPipeShape1.o" "F___Forest_Path_1:polyUnite2.ip[0]"
		;
connectAttr "F___Forest_Path_1:pPipeShape2.o" "F___Forest_Path_1:polyUnite2.ip[1]"
		;
connectAttr "F___Forest_Path_1:pPipeShape3.o" "F___Forest_Path_1:polyUnite2.ip[2]"
		;
connectAttr "F___Forest_Path_1:pPipeShape1.wm" "F___Forest_Path_1:polyUnite2.im[0]"
		;
connectAttr "F___Forest_Path_1:pPipeShape2.wm" "F___Forest_Path_1:polyUnite2.im[1]"
		;
connectAttr "F___Forest_Path_1:pPipeShape3.wm" "F___Forest_Path_1:polyUnite2.im[2]"
		;
connectAttr "F___Forest_Path_1:polyPipe1.out" "F___Forest_Path_1:groupParts4.ig"
		;
connectAttr "F___Forest_Path_1:groupId8.id" "F___Forest_Path_1:groupParts4.gi";
connectAttr "F___Forest_Path_1:polyPipe2.out" "F___Forest_Path_1:groupParts5.ig"
		;
connectAttr "F___Forest_Path_1:groupId10.id" "F___Forest_Path_1:groupParts5.gi";
connectAttr "F___Forest_Path_1:polyPipe3.out" "F___Forest_Path_1:groupParts6.ig"
		;
connectAttr "F___Forest_Path_1:groupId12.id" "F___Forest_Path_1:groupParts6.gi";
connectAttr "F___Forest_Path_1:polyUnite2.out" "F___Forest_Path_1:groupParts7.ig"
		;
connectAttr "F___Forest_Path_1:groupId14.id" "F___Forest_Path_1:groupParts7.gi";
connectAttr "F___Forest_Path_1:groupParts7.og" "F___Forest_Path_1:deleteComponent1.ig"
		;
connectAttr "F___Forest_Path_1:deleteComponent1.og" "F___Forest_Path_1:deleteComponent2.ig"
		;
connectAttr "F___Forest_Path_1:deleteComponent2.og" "F___Forest_Path_1:deleteComponent3.ig"
		;
connectAttr "F___Forest_Path_1:polyTweak1.out" "F___Forest_Path_1:polyCut1.ip";
connectAttr "F___Forest_Path_1:polySurfaceShape1.wm" "F___Forest_Path_1:polyCut1.mp"
		;
connectAttr "F___Forest_Path_1:groupParts3.og" "F___Forest_Path_1:polyTweak1.ip"
		;
connectAttr "F___Forest_Path_1:polyCut1.out" "F___Forest_Path_1:deleteComponent4.ig"
		;
connectAttr "F___Forest_Path_1:deleteComponent4.og" "F___Forest_Path_1:deleteComponent5.ig"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape1.o" "F___Forest_Path_1:polyUnite3.ip[0]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape2.o" "F___Forest_Path_1:polyUnite3.ip[1]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape1.wm" "F___Forest_Path_1:polyUnite3.im[0]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape2.wm" "F___Forest_Path_1:polyUnite3.im[1]"
		;
connectAttr "F___Forest_Path_1:polyUnite3.out" "F___Forest_Path_1:groupParts8.ig"
		;
connectAttr "F___Forest_Path_1:groupParts8.og" "F___Forest_Path_1:polyBridgeEdge1.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyBridgeEdge1.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge1.out" "F___Forest_Path_1:groupParts9.ig"
		;
connectAttr "F___Forest_Path_1:groupParts9.og" "F___Forest_Path_1:polyBridgeEdge2.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyBridgeEdge2.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge2.out" "F___Forest_Path_1:groupParts10.ig"
		;
connectAttr "F___Forest_Path_1:groupParts10.og" "F___Forest_Path_1:polyBridgeEdge3.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyBridgeEdge3.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge3.out" "F___Forest_Path_1:groupParts11.ig"
		;
connectAttr "F___Forest_Path_1:groupParts11.og" "F___Forest_Path_1:polyBridgeEdge4.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyBridgeEdge4.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge4.out" "F___Forest_Path_1:groupParts12.ig"
		;
connectAttr "F___Forest_Path_1:groupParts12.og" "F___Forest_Path_1:polyBridgeEdge5.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyBridgeEdge5.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge5.out" "F___Forest_Path_1:groupParts13.ig"
		;
connectAttr "F___Forest_Path_1:groupParts13.og" "F___Forest_Path_1:polyBridgeEdge6.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyBridgeEdge6.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge6.out" "F___Forest_Path_1:groupParts14.ig"
		;
connectAttr "F___Forest_Path_1:groupParts14.og" "F___Forest_Path_1:polyBridgeEdge7.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyBridgeEdge7.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge7.out" "F___Forest_Path_1:groupParts15.ig"
		;
connectAttr "F___Forest_Path_1:polyTweak2.out" "F___Forest_Path_1:polyBridgeEdge8.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyBridgeEdge8.mp"
		;
connectAttr "F___Forest_Path_1:groupParts15.og" "F___Forest_Path_1:polyTweak2.ip"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge8.out" "F___Forest_Path_1:groupParts16.ig"
		;
connectAttr "F___Forest_Path_1:groupParts16.og" "F___Forest_Path_1:polyBridgeEdge9.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyBridgeEdge9.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge9.out" "F___Forest_Path_1:groupParts17.ig"
		;
connectAttr "F___Forest_Path_1:groupId15.id" "F___Forest_Path_1:groupParts17.gi"
		;
connectAttr "F___Forest_Path_1:pCubeShape4.o" "F___Forest_Path_1:polyUnite4.ip[0]"
		;
connectAttr "F___Forest_Path_1:pCubeShape5.o" "F___Forest_Path_1:polyUnite4.ip[1]"
		;
connectAttr "F___Forest_Path_1:pCubeShape6.o" "F___Forest_Path_1:polyUnite4.ip[2]"
		;
connectAttr "F___Forest_Path_1:pCubeShape4.wm" "F___Forest_Path_1:polyUnite4.im[0]"
		;
connectAttr "F___Forest_Path_1:pCubeShape5.wm" "F___Forest_Path_1:polyUnite4.im[1]"
		;
connectAttr "F___Forest_Path_1:pCubeShape6.wm" "F___Forest_Path_1:polyUnite4.im[2]"
		;
connectAttr "F___Forest_Path_1:polyCube3.out" "F___Forest_Path_1:groupParts18.ig"
		;
connectAttr "F___Forest_Path_1:groupId16.id" "F___Forest_Path_1:groupParts18.gi"
		;
connectAttr "F___Forest_Path_1:polyCube4.out" "F___Forest_Path_1:groupParts19.ig"
		;
connectAttr "F___Forest_Path_1:groupId18.id" "F___Forest_Path_1:groupParts19.gi"
		;
connectAttr "F___Forest_Path_1:polyUnite4.out" "F___Forest_Path_1:groupParts20.ig"
		;
connectAttr "F___Forest_Path_1:groupId22.id" "F___Forest_Path_1:groupParts20.gi"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.o" "F___Forest_Path_1:polyUnite5.ip[0]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape4.o" "F___Forest_Path_1:polyUnite5.ip[1]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape3.wm" "F___Forest_Path_1:polyUnite5.im[0]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape4.wm" "F___Forest_Path_1:polyUnite5.im[1]"
		;
connectAttr "F___Forest_Path_1:polyUnite5.out" "F___Forest_Path_1:groupParts21.ig"
		;
connectAttr "F___Forest_Path_1:groupParts21.og" "F___Forest_Path_1:groupParts22.ig"
		;
connectAttr "F___Forest_Path_1:groupId23.id" "F___Forest_Path_1:groupParts22.gi"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape5.o" "F___Forest_Path_1:polySeparate1.ip"
		;
connectAttr "F___Forest_Path_1:polySeparate1.out[0]" "F___Forest_Path_1:groupParts23.ig"
		;
connectAttr "F___Forest_Path_1:groupId24.id" "F___Forest_Path_1:groupParts23.gi"
		;
connectAttr "F___Forest_Path_1:polySeparate1.out[1]" "F___Forest_Path_1:groupParts24.ig"
		;
connectAttr "F___Forest_Path_1:groupId25.id" "F___Forest_Path_1:groupParts24.gi"
		;
connectAttr "F___Forest_Path_1:polySeparate1.out[2]" "F___Forest_Path_1:groupParts25.ig"
		;
connectAttr "F___Forest_Path_1:groupId26.id" "F___Forest_Path_1:groupParts25.gi"
		;
connectAttr "F___Forest_Path_1:polySeparate1.out[3]" "F___Forest_Path_1:groupParts26.ig"
		;
connectAttr "F___Forest_Path_1:groupId27.id" "F___Forest_Path_1:groupParts26.gi"
		;
connectAttr "F___Forest_Path_1:polySeparate1.out[4]" "F___Forest_Path_1:groupParts27.ig"
		;
connectAttr "F___Forest_Path_1:groupId28.id" "F___Forest_Path_1:groupParts27.gi"
		;
connectAttr "F___Forest_Path_1:polySeparate1.out[5]" "F___Forest_Path_1:groupParts28.ig"
		;
connectAttr "F___Forest_Path_1:groupId29.id" "F___Forest_Path_1:groupParts28.gi"
		;
connectAttr "F___Forest_Path_1:groupParts26.og" "F___Forest_Path_1:polyCut2.ip";
connectAttr "F___Forest_Path_1:polySurfaceShape9.wm" "F___Forest_Path_1:polyCut2.mp"
		;
connectAttr "F___Forest_Path_1:groupParts27.og" "F___Forest_Path_1:polyCut3.ip";
connectAttr "F___Forest_Path_1:polySurfaceShape10.wm" "F___Forest_Path_1:polyCut3.mp"
		;
connectAttr "F___Forest_Path_1:groupParts28.og" "F___Forest_Path_1:polyCut4.ip";
connectAttr "F___Forest_Path_1:polySurfaceShape11.wm" "F___Forest_Path_1:polyCut4.mp"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape9.o" "F___Forest_Path_1:polyUnite6.ip[0]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape10.o" "F___Forest_Path_1:polyUnite6.ip[1]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape11.o" "F___Forest_Path_1:polyUnite6.ip[2]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape9.wm" "F___Forest_Path_1:polyUnite6.im[0]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape10.wm" "F___Forest_Path_1:polyUnite6.im[1]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape11.wm" "F___Forest_Path_1:polyUnite6.im[2]"
		;
connectAttr "F___Forest_Path_1:polyUnite6.out" "F___Forest_Path_1:groupParts29.ig"
		;
connectAttr "F___Forest_Path_1:groupId30.id" "F___Forest_Path_1:groupParts29.gi"
		;
connectAttr "F___Forest_Path_1:groupParts29.og" "F___Forest_Path_1:deleteComponent6.ig"
		;
connectAttr "F___Forest_Path_1:deleteComponent6.og" "F___Forest_Path_1:deleteComponent7.ig"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape6.o" "F___Forest_Path_1:polyUnite7.ip[0]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape7.o" "F___Forest_Path_1:polyUnite7.ip[1]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape8.o" "F___Forest_Path_1:polyUnite7.ip[2]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape12.o" "F___Forest_Path_1:polyUnite7.ip[3]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape6.wm" "F___Forest_Path_1:polyUnite7.im[0]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape7.wm" "F___Forest_Path_1:polyUnite7.im[1]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape8.wm" "F___Forest_Path_1:polyUnite7.im[2]"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape12.wm" "F___Forest_Path_1:polyUnite7.im[3]"
		;
connectAttr "F___Forest_Path_1:polyUnite7.out" "F___Forest_Path_1:groupParts30.ig"
		;
connectAttr "F___Forest_Path_1:groupParts30.og" "F___Forest_Path_1:polyBridgeEdge11.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge11.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge11.out" "F___Forest_Path_1:groupParts31.ig"
		;
connectAttr "F___Forest_Path_1:groupParts31.og" "F___Forest_Path_1:polyBridgeEdge12.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge12.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge12.out" "F___Forest_Path_1:groupParts32.ig"
		;
connectAttr "F___Forest_Path_1:groupParts32.og" "F___Forest_Path_1:polyBridgeEdge13.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge13.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge13.out" "F___Forest_Path_1:groupParts33.ig"
		;
connectAttr "F___Forest_Path_1:groupParts33.og" "F___Forest_Path_1:polyBridgeEdge14.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge14.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge14.out" "F___Forest_Path_1:groupParts34.ig"
		;
connectAttr "F___Forest_Path_1:groupParts34.og" "F___Forest_Path_1:polyBridgeEdge15.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge15.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge15.out" "F___Forest_Path_1:groupParts35.ig"
		;
connectAttr "F___Forest_Path_1:groupParts35.og" "F___Forest_Path_1:polyBridgeEdge16.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge16.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge16.out" "F___Forest_Path_1:groupParts36.ig"
		;
connectAttr "F___Forest_Path_1:groupParts36.og" "F___Forest_Path_1:polyBridgeEdge17.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge17.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge17.out" "F___Forest_Path_1:groupParts37.ig"
		;
connectAttr "F___Forest_Path_1:groupParts37.og" "F___Forest_Path_1:polyBridgeEdge18.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge18.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge18.out" "F___Forest_Path_1:groupParts38.ig"
		;
connectAttr "F___Forest_Path_1:groupParts38.og" "F___Forest_Path_1:polyBridgeEdge19.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge19.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge19.out" "F___Forest_Path_1:groupParts39.ig"
		;
connectAttr "F___Forest_Path_1:groupParts39.og" "F___Forest_Path_1:polyBridgeEdge20.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge20.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge20.out" "F___Forest_Path_1:groupParts40.ig"
		;
connectAttr "F___Forest_Path_1:groupParts40.og" "F___Forest_Path_1:polyBridgeEdge21.ip"
		;
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "F___Forest_Path_1:polyBridgeEdge21.mp"
		;
connectAttr "F___Forest_Path_1:polyBridgeEdge21.out" "F___Forest_Path_1:groupParts41.ig"
		;
connectAttr "F___Forest_Path_1:groupId31.id" "F___Forest_Path_1:groupParts41.gi"
		;
connectAttr "F___Forest_Path_1:groupParts41.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
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
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyTweak1.out" "polyCut1.ip";
connectAttr "polySurfaceShape1.wm" "polyCut1.mp";
connectAttr "groupParts4.og" "polyTweak1.ip";
connectAttr "polyCut1.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "F___Forest_Path_1:polySurfaceShape13.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape1.o" "polyUnite2.ip[1]";
connectAttr "F___Forest_Path_1:polySurfaceShape13.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape1.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts5.ig";
connectAttr "groupParts5.og" "polyBridgeEdge2.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "groupParts6.ig";
connectAttr "groupParts6.og" "polyBridgeEdge3.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "groupParts7.ig";
connectAttr "groupParts7.og" "polyBridgeEdge4.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "groupParts8.ig";
connectAttr "groupParts8.og" "polyBridgeEdge5.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "groupParts9.ig";
connectAttr "groupParts9.og" "polyBridgeEdge6.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge6.mp";
connectAttr "polyBridgeEdge6.out" "groupParts10.ig";
connectAttr "groupParts10.og" "polyBridgeEdge7.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge7.mp";
connectAttr "polyBridgeEdge7.out" "groupParts11.ig";
connectAttr "groupParts11.og" "polyBridgeEdge8.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge8.mp";
connectAttr "polyBridgeEdge8.out" "groupParts12.ig";
connectAttr "groupParts12.og" "polyBridgeEdge9.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge9.mp";
connectAttr "polyBridgeEdge9.out" "groupParts13.ig";
connectAttr "groupParts13.og" "polyBridgeEdge10.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge10.mp";
connectAttr "polyBridgeEdge10.out" "groupParts14.ig";
connectAttr "groupParts14.og" "polyBridgeEdge11.ip";
connectAttr "polySurfaceShape2.wm" "polyBridgeEdge11.mp";
connectAttr "polyBridgeEdge11.out" "groupParts15.ig";
connectAttr "groupId8.id" "groupParts15.gi";
connectAttr "pCubeShape4.o" "polyUnite3.ip[0]";
connectAttr "pCubeShape5.o" "polyUnite3.ip[1]";
connectAttr "pCubeShape6.o" "polyUnite3.ip[2]";
connectAttr "pCubeShape4.wm" "polyUnite3.im[0]";
connectAttr "pCubeShape5.wm" "polyUnite3.im[1]";
connectAttr "pCubeShape6.wm" "polyUnite3.im[2]";
connectAttr "polyCube3.out" "groupParts16.ig";
connectAttr "groupId9.id" "groupParts16.gi";
connectAttr "polyCube4.out" "groupParts17.ig";
connectAttr "groupId11.id" "groupParts17.gi";
connectAttr "polyUnite3.out" "groupParts18.ig";
connectAttr "groupId15.id" "groupParts18.gi";
connectAttr "groupParts18.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "polySurfaceShape2.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape2.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite4.im[1]";
connectAttr "polyUnite4.out" "groupParts19.ig";
connectAttr "groupParts19.og" "polyCut2.ip";
connectAttr "polySurfaceShape4.wm" "polyCut2.mp";
connectAttr "polyCut2.out" "polyCut3.ip";
connectAttr "polySurfaceShape4.wm" "polyCut3.mp";
connectAttr "polyCut3.out" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "polyBridgeEdge12.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge12.mp";
connectAttr "polyBridgeEdge12.out" "groupParts20.ig";
connectAttr "groupParts20.og" "polyBridgeEdge13.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge13.mp";
connectAttr "polyBridgeEdge13.out" "groupParts21.ig";
connectAttr "groupParts21.og" "polyBridgeEdge14.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge14.mp";
connectAttr "polyBridgeEdge14.out" "groupParts22.ig";
connectAttr "groupParts22.og" "polyBridgeEdge15.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge15.mp";
connectAttr "polyBridgeEdge15.out" "groupParts23.ig";
connectAttr "groupParts23.og" "polyBridgeEdge16.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge16.mp";
connectAttr "polyBridgeEdge16.out" "groupParts24.ig";
connectAttr "groupParts24.og" "polyBridgeEdge17.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge17.mp";
connectAttr "polyBridgeEdge17.out" "groupParts25.ig";
connectAttr "groupParts25.og" "polyBridgeEdge18.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge18.mp";
connectAttr "polyBridgeEdge18.out" "groupParts26.ig";
connectAttr "groupParts26.og" "polyBridgeEdge19.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge19.mp";
connectAttr "polyBridgeEdge19.out" "groupParts27.ig";
connectAttr "groupParts27.og" "polyBridgeEdge20.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge20.mp";
connectAttr "polyBridgeEdge20.out" "groupParts28.ig";
connectAttr "groupParts28.og" "polyBridgeEdge21.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge21.mp";
connectAttr "polyBridgeEdge21.out" "groupParts29.ig";
connectAttr "groupId16.id" "groupParts29.gi";
connectAttr "groupParts29.og" "polyTriangulate1.ip";
connectAttr "pCubeShape7.o" "polyUnite5.ip[0]";
connectAttr "pCubeShape8.o" "polyUnite5.ip[1]";
connectAttr "pCubeShape9.o" "polyUnite5.ip[2]";
connectAttr "pCubeShape10.o" "polyUnite5.ip[3]";
connectAttr "pCubeShape11.o" "polyUnite5.ip[4]";
connectAttr "pCubeShape12.o" "polyUnite5.ip[5]";
connectAttr "pCubeShape13.o" "polyUnite5.ip[6]";
connectAttr "pCubeShape14.o" "polyUnite5.ip[7]";
connectAttr "pCubeShape15.o" "polyUnite5.ip[8]";
connectAttr "pCubeShape16.o" "polyUnite5.ip[9]";
connectAttr "pCubeShape17.o" "polyUnite5.ip[10]";
connectAttr "pCubeShape18.o" "polyUnite5.ip[11]";
connectAttr "pCubeShape19.o" "polyUnite5.ip[12]";
connectAttr "pCubeShape7.wm" "polyUnite5.im[0]";
connectAttr "pCubeShape8.wm" "polyUnite5.im[1]";
connectAttr "pCubeShape9.wm" "polyUnite5.im[2]";
connectAttr "pCubeShape10.wm" "polyUnite5.im[3]";
connectAttr "pCubeShape11.wm" "polyUnite5.im[4]";
connectAttr "pCubeShape12.wm" "polyUnite5.im[5]";
connectAttr "pCubeShape13.wm" "polyUnite5.im[6]";
connectAttr "pCubeShape14.wm" "polyUnite5.im[7]";
connectAttr "pCubeShape15.wm" "polyUnite5.im[8]";
connectAttr "pCubeShape16.wm" "polyUnite5.im[9]";
connectAttr "pCubeShape17.wm" "polyUnite5.im[10]";
connectAttr "pCubeShape18.wm" "polyUnite5.im[11]";
connectAttr "pCubeShape19.wm" "polyUnite5.im[12]";
connectAttr "polyCube5.out" "groupParts30.ig";
connectAttr "groupId17.id" "groupParts30.gi";
connectAttr "polyUnite5.out" "groupParts31.ig";
connectAttr "groupId43.id" "groupParts31.gi";
connectAttr "polySurfaceShape5.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts32.ig";
connectAttr "groupId44.id" "groupParts32.gi";
connectAttr "polySeparate1.out[1]" "groupParts33.ig";
connectAttr "groupId45.id" "groupParts33.gi";
connectAttr "polySeparate1.out[2]" "groupParts34.ig";
connectAttr "groupId46.id" "groupParts34.gi";
connectAttr "polySeparate1.out[3]" "groupParts35.ig";
connectAttr "groupId47.id" "groupParts35.gi";
connectAttr "polySeparate1.out[4]" "groupParts36.ig";
connectAttr "groupId48.id" "groupParts36.gi";
connectAttr "polySeparate1.out[5]" "groupParts37.ig";
connectAttr "groupId49.id" "groupParts37.gi";
connectAttr "polySeparate1.out[6]" "groupParts38.ig";
connectAttr "groupId50.id" "groupParts38.gi";
connectAttr "polySeparate1.out[7]" "groupParts39.ig";
connectAttr "groupId51.id" "groupParts39.gi";
connectAttr "polySeparate1.out[8]" "groupParts40.ig";
connectAttr "groupId52.id" "groupParts40.gi";
connectAttr "polySeparate1.out[9]" "groupParts41.ig";
connectAttr "groupId53.id" "groupParts41.gi";
connectAttr "polySeparate1.out[10]" "groupParts42.ig";
connectAttr "groupId54.id" "groupParts42.gi";
connectAttr "polySeparate1.out[11]" "groupParts43.ig";
connectAttr "groupId55.id" "groupParts43.gi";
connectAttr "polySeparate1.out[12]" "groupParts44.ig";
connectAttr "groupId56.id" "groupParts44.gi";
connectAttr "polySurfaceShape6.o" "polyUnite6.ip[0]";
connectAttr "polySurfaceShape7.o" "polyUnite6.ip[1]";
connectAttr "polySurfaceShape8.o" "polyUnite6.ip[2]";
connectAttr "polySurfaceShape9.o" "polyUnite6.ip[3]";
connectAttr "polySurfaceShape10.o" "polyUnite6.ip[4]";
connectAttr "polySurfaceShape11.o" "polyUnite6.ip[5]";
connectAttr "polySurfaceShape12.o" "polyUnite6.ip[6]";
connectAttr "polySurfaceShape13.o" "polyUnite6.ip[7]";
connectAttr "polySurfaceShape14.o" "polyUnite6.ip[8]";
connectAttr "polySurfaceShape15.o" "polyUnite6.ip[9]";
connectAttr "polySurfaceShape16.o" "polyUnite6.ip[10]";
connectAttr "polySurfaceShape17.o" "polyUnite6.ip[11]";
connectAttr "polySurfaceShape18.o" "polyUnite6.ip[12]";
connectAttr "polySurfaceShape6.wm" "polyUnite6.im[0]";
connectAttr "polySurfaceShape7.wm" "polyUnite6.im[1]";
connectAttr "polySurfaceShape8.wm" "polyUnite6.im[2]";
connectAttr "polySurfaceShape9.wm" "polyUnite6.im[3]";
connectAttr "polySurfaceShape10.wm" "polyUnite6.im[4]";
connectAttr "polySurfaceShape11.wm" "polyUnite6.im[5]";
connectAttr "polySurfaceShape12.wm" "polyUnite6.im[6]";
connectAttr "polySurfaceShape13.wm" "polyUnite6.im[7]";
connectAttr "polySurfaceShape14.wm" "polyUnite6.im[8]";
connectAttr "polySurfaceShape15.wm" "polyUnite6.im[9]";
connectAttr "polySurfaceShape16.wm" "polyUnite6.im[10]";
connectAttr "polySurfaceShape17.wm" "polyUnite6.im[11]";
connectAttr "polySurfaceShape18.wm" "polyUnite6.im[12]";
connectAttr "polyUnite6.out" "groupParts45.ig";
connectAttr "groupId57.id" "groupParts45.gi";
connectAttr "polySurfaceShape19.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts46.ig";
connectAttr "groupId59.id" "groupParts46.gi";
connectAttr "polySeparate2.out[1]" "groupParts47.ig";
connectAttr "groupId60.id" "groupParts47.gi";
connectAttr "polySeparate2.out[2]" "groupParts48.ig";
connectAttr "groupId61.id" "groupParts48.gi";
connectAttr "polySeparate2.out[3]" "groupParts49.ig";
connectAttr "groupId62.id" "groupParts49.gi";
connectAttr "polySeparate2.out[4]" "groupParts50.ig";
connectAttr "groupId63.id" "groupParts50.gi";
connectAttr "polySeparate2.out[5]" "groupParts51.ig";
connectAttr "groupId64.id" "groupParts51.gi";
connectAttr "polySeparate2.out[6]" "groupParts52.ig";
connectAttr "groupId65.id" "groupParts52.gi";
connectAttr "polySeparate2.out[7]" "groupParts53.ig";
connectAttr "groupId66.id" "groupParts53.gi";
connectAttr "polySeparate2.out[8]" "groupParts54.ig";
connectAttr "groupId67.id" "groupParts54.gi";
connectAttr "polySeparate2.out[9]" "groupParts55.ig";
connectAttr "groupId68.id" "groupParts55.gi";
connectAttr "polySeparate2.out[10]" "groupParts56.ig";
connectAttr "groupId69.id" "groupParts56.gi";
connectAttr "polySeparate2.out[11]" "groupParts57.ig";
connectAttr "groupId70.id" "groupParts57.gi";
connectAttr "polySeparate2.out[12]" "groupParts58.ig";
connectAttr "groupId71.id" "groupParts58.gi";
connectAttr "polySurfaceShape20.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts59.ig";
connectAttr "groupId72.id" "groupParts59.gi";
connectAttr "polySeparate3.out[1]" "groupParts60.ig";
connectAttr "groupId73.id" "groupParts60.gi";
connectAttr "polySeparate3.out[2]" "groupParts61.ig";
connectAttr "groupId74.id" "groupParts61.gi";
connectAttr "polySeparate3.out[3]" "groupParts62.ig";
connectAttr "groupId75.id" "groupParts62.gi";
connectAttr "polySeparate3.out[4]" "groupParts63.ig";
connectAttr "groupId76.id" "groupParts63.gi";
connectAttr "polySeparate3.out[5]" "groupParts64.ig";
connectAttr "groupId77.id" "groupParts64.gi";
connectAttr "polySeparate3.out[6]" "groupParts65.ig";
connectAttr "groupId78.id" "groupParts65.gi";
connectAttr "polySeparate3.out[7]" "groupParts66.ig";
connectAttr "groupId79.id" "groupParts66.gi";
connectAttr "polySeparate3.out[8]" "groupParts67.ig";
connectAttr "groupId80.id" "groupParts67.gi";
connectAttr "polySeparate3.out[9]" "groupParts68.ig";
connectAttr "groupId81.id" "groupParts68.gi";
connectAttr "polySeparate3.out[10]" "groupParts69.ig";
connectAttr "groupId82.id" "groupParts69.gi";
connectAttr "polySeparate3.out[11]" "groupParts70.ig";
connectAttr "groupId83.id" "groupParts70.gi";
connectAttr "polySeparate3.out[12]" "groupParts71.ig";
connectAttr "groupId84.id" "groupParts71.gi";
connectAttr "polyTriangulate1.out" "polyTriangulate2.ip";
connectAttr "groupParts46.og" "polyTriangulate3.ip";
connectAttr "groupParts47.og" "polyTriangulate4.ip";
connectAttr "groupParts48.og" "polyTriangulate5.ip";
connectAttr "groupParts49.og" "polyTriangulate6.ip";
connectAttr "groupParts50.og" "polyTriangulate7.ip";
connectAttr "groupParts51.og" "polyTriangulate8.ip";
connectAttr "groupParts52.og" "polyTriangulate9.ip";
connectAttr "groupParts53.og" "polyTriangulate10.ip";
connectAttr "groupParts54.og" "polyTriangulate11.ip";
connectAttr "groupParts55.og" "polyTriangulate12.ip";
connectAttr "groupParts56.og" "polyTriangulate13.ip";
connectAttr "groupParts57.og" "polyTriangulate14.ip";
connectAttr "groupParts58.og" "polyTriangulate15.ip";
connectAttr "groupParts59.og" "polyTriangulate16.ip";
connectAttr "groupParts60.og" "polyTriangulate17.ip";
connectAttr "groupParts61.og" "polyTriangulate18.ip";
connectAttr "groupParts62.og" "polyTriangulate19.ip";
connectAttr "groupParts63.og" "polyTriangulate20.ip";
connectAttr "groupParts64.og" "polyTriangulate21.ip";
connectAttr "groupParts65.og" "polyTriangulate22.ip";
connectAttr "groupParts66.og" "polyTriangulate23.ip";
connectAttr "groupParts67.og" "polyTriangulate24.ip";
connectAttr "groupParts68.og" "polyTriangulate25.ip";
connectAttr "groupParts69.og" "polyTriangulate26.ip";
connectAttr "groupParts70.og" "polyTriangulate27.ip";
connectAttr "groupParts71.og" "polyTriangulate28.ip";
connectAttr "polyCube6.out" "polyTriangulate29.ip";
connectAttr "polySurfaceShape47.o" "polyTriangulate30.ip";
connectAttr "polySurfaceShape48.o" "polyTriangulate31.ip";
connectAttr "polySurfaceShape49.o" "polyTriangulate32.ip";
connectAttr "polySurfaceShape50.o" "polyTriangulate33.ip";
connectAttr "polySurfaceShape51.o" "polyTriangulate34.ip";
connectAttr "polySurfaceShape52.o" "polyTriangulate35.ip";
connectAttr "polySurfaceShape53.o" "polyTriangulate36.ip";
connectAttr "F___Forest_Path_1:pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pPipeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pPipeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pPipeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pPipeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pPipeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pPipeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "F___Forest_Path_1:polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "F___Forest_Path_1:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "F___Forest_Path_1:groupId31.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId77.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId79.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId81.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId83.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of S - Forest Path 2.ma
