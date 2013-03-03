//Maya ASCII 2013 scene
//Name: C - Uphill curve.ma
//Last modified: Sun, Feb 10, 2013 03:02:09 PM
//Codeset: UTF-8
requires maya "2013";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220220-825135";
fileInfo "osv" "Mac OS X 10.8.2";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 277.01001498520793 183.08553283035954 476.73800289169139 ;
	setAttr ".r" -type "double3" -17.400000000000144 -329.59999999998161 -9.2188529730415378e-16 ;
	setAttr ".rpt" -type "double3" 3.5752297155825521e-15 4.99090766958135e-15 1.6415258723254212e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 65.434107070899998;
	setAttr ".coi" 591.89502148877045;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -9.0699996948242188 0 -7.279998779296875 ;
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
	setAttr ".t" -type "double3" -9.0699996948242205 4.1049217631473772e-16 -25.58777528671995 ;
	setAttr ".r" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".rpt" -type "double3" -9.9849256828667784e-16 -4.1049217631473772e-16 2.2031275897279345e-16 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 18.307776507423075;
	setAttr ".ow" 40.030475057681542;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -9.069999694824217 0 -7.279998779296875 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group1";
createNode transform -n "pPipe1" -p "group1";
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
createNode transform -n "pPipe2" -p "group1";
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
createNode transform -n "pPipe3" -p "group1";
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
createNode transform -n "pPipe4";
createNode transform -n "transform3" -p "pPipe4";
	setAttr ".v" no;
createNode mesh -n "pPipeShape4" -p "transform3";
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
createNode transform -n "pPipe5";
createNode transform -n "transform2" -p "pPipe5";
	setAttr ".v" no;
createNode mesh -n "pPipeShape5" -p "transform2";
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
createNode transform -n "pPipe6";
createNode transform -n "transform1" -p "pPipe6";
	setAttr ".v" no;
createNode mesh -n "pPipeShape6" -p "transform1";
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
createNode transform -n "polySurface1";
createNode transform -n "polySurface3" -p "polySurface1";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "transform10" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform10";
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
createNode transform -n "polySurface4" -p "polySurface1";
	setAttr ".t" -type "double3" 0 0.25 0 ;
createNode transform -n "transform9" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform9";
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
createNode transform -n "polySurface5" -p "polySurface1";
	setAttr ".t" -type "double3" 0 0.25 0 ;
createNode transform -n "transform8" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform8";
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
createNode transform -n "transform7" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform7";
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
	setAttr ".t" -type "double3" -5.5 0 0 ;
createNode transform -n "transform13" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform13";
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
createNode transform -n "polySurface6";
	setAttr ".t" -type "double3" -19.65 -1.4210854715202004e-14 -4.56 ;
createNode transform -n "transform12" -p "polySurface6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform12";
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
createNode transform -n "polySurface7";
	setAttr ".t" -type "double3" -5.5 0 -14 ;
createNode transform -n "transform11" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 0.59375 1 0.59375
		 0.75 0.625 1 0.625 0.75 0.65625 1 0.65625 0.75 0.6875 1 0.6875 0.75 0.71875 1 0.71875
		 0.75 0.75 1 0.75 0.75 0.59375 0.5 0.625 0.5 0.65625 0.5 0.6875 0.5 0.71875 0.5 0.75
		 0.5 0.59375 0.25 0.625 0.25 0.65625 0.25 0.6875 0.25 0.71875 0.25 0.75 0.25 0.59375
		 0 0.625 0 0.65625 0 0.6875 0 0.71875 0 0.75 0 0.59375 1 0.59375 0.75 0.625 1 0.625
		 0.75 0.65625 1 0.65625 0.75 0.6875 1 0.6875 0.75 0.71875 1 0.71875 0.75 0.75 1 0.75
		 0.75 0.59375 0.5 0.625 0.5 0.65625 0.5 0.6875 0.5 0.71875 0.5 0.75 0.5 0.59375 0.25
		 0.625 0.25 0.65625 0.25 0.6875 0.25 0.71875 0.25 0.75 0.25 0.59375 0 0.625 0 0.65625
		 0 0.6875 0 0.71875 0 0.75 0 0.59375 1 0.59375 0.75 0.625 1 0.625 0.75 0.65625 1 0.65625
		 0.75 0.6875 1 0.6875 0.75 0.71875 1 0.71875 0.75 0.75 1 0.75 0.75 0.59375 0.5 0.625
		 0.5 0.65625 0.5 0.6875 0.5 0.71875 0.5 0.75 0.5 0.59375 0.25 0.625 0.25 0.65625 0.25
		 0.6875 0.25 0.71875 0.25 0.75 0.25 0.59375 0 0.625 0 0.65625 0 0.6875 0 0.71875 0
		 0.75 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".vt[0:71]"  -5.82028198 -0.5 3.88898993 -4.94974232 -0.5 4.9497447
		 -3.88898706 -0.5 5.82028341 -2.67878008 -0.5 6.46715164 -1.3656292 -0.5 6.86549091
		 1.9073486e-06 -0.5 6.99999285 -5.82028198 0 3.88898993 -4.94974232 0 4.9497447 -3.88898706 0 5.82028341
		 -2.67878008 0 6.46715164 -1.3656292 0 6.86549091 1.9073486e-06 0 6.99999285 -8.3146925 0 5.55569983
		 -7.071064949 0 7.071064472 -5.5557003 0 8.3146925 -3.82683277 0 9.23879147 -1.95090234 0 9.80784893
		 1.1920929e-07 0 9.99999523 -8.3146925 -0.5 5.55569983 -7.071064949 -0.5 7.071064472
		 -5.5557003 -0.5 8.3146925 -3.82683277 -0.5 9.23879147 -1.95090234 -0.5 9.80784893
		 1.1920929e-07 -0.5 9.99999523 -8.10682201 0 5.4168067 -6.89428473 0 6.89428663 -5.41680431 0 8.10682297
		 -3.73115897 0 9.007818222 -1.90212762 0 9.56264782 1.3113022e-06 0 9.74999142 -8.10682201 0.5 5.4168067
		 -6.89428473 0.5 6.89428663 -5.41680431 0.5 8.10682297 -3.73115897 0.5 9.007818222
		 -1.90212762 0.5 9.56264782 1.3113022e-06 0.5 9.74999142 -8.3146925 0.5 5.55569983
		 -7.071064949 0.5 7.071064472 -5.5557003 0.5 8.3146925 -3.82683277 0.5 9.23879147
		 -1.95090234 0.5 9.80784893 1.1920929e-07 0.5 9.99999523 -8.3146925 0 5.55569983 -7.071064949 0 7.071064472
		 -5.5557003 0 8.3146925 -3.82683277 0 9.23879147 -1.95090234 0 9.80784893 1.1920929e-07 0 9.99999523
		 -5.82028198 0 3.88898993 -4.94974232 0 4.9497447 -3.88898706 0 5.82028341 -2.67878008 0 6.46715164
		 -1.3656292 0 6.86549091 1.9073486e-06 0 6.99999285 -5.82028198 0.5 3.88898993 -4.94974232 0.5 4.9497447
		 -3.88898706 0.5 5.82028341 -2.67878008 0.5 6.46715164 -1.3656292 0.5 6.86549091 1.9073486e-06 0.5 6.99999285
		 -6.028152466 0.5 4.027884007 -5.12652206 0.5 5.12652349 -4.027881622 0.5 6.028153419
		 -2.77445245 0.5 6.69812489 -1.41440272 0.5 7.11069107 1.7881393e-06 0.5 7.24999714
		 -6.028152466 0 4.027884007 -5.12652206 0 5.12652349 -4.027881622 0 6.028153419 -2.77445245 0 6.69812489
		 -1.41440272 0 7.11069107 1.7881393e-06 0 7.24999714;
	setAttr -s 132 ".ed[0:131]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 0 7 8 0
		 8 9 0 9 10 0 10 11 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 18 19 0 19 20 0 20 21 0
		 21 22 0 22 23 0 0 6 0 1 7 1 2 8 1 3 9 1 4 10 1 5 11 0 6 12 0 7 13 1 8 14 1 9 15 1
		 10 16 1 11 17 0 12 18 0 13 19 1 14 20 1 15 21 1 16 22 1 17 23 0 18 0 0 19 1 1 20 2 1
		 21 3 1 22 4 1 23 5 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 30 31 0 31 32 0 32 33 0
		 33 34 0 34 35 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 42 43 0 43 44 0 44 45 0 45 46 0
		 46 47 0 24 30 0 25 31 1 26 32 1 27 33 1 28 34 1 29 35 0 30 36 0 31 37 1 32 38 1 33 39 1
		 34 40 1 35 41 0 36 42 0 37 43 1 38 44 1 39 45 1 40 46 1 41 47 0 42 24 0 43 25 1 44 26 1
		 45 27 1 46 28 1 47 29 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 54 55 0 55 56 0 56 57 0
		 57 58 0 58 59 0 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 66 67 0 67 68 0 68 69 0 69 70 0
		 70 71 0 48 54 0 49 55 1 50 56 1 51 57 1 52 58 1 53 59 0 54 60 0 55 61 1 56 62 1 57 63 1
		 58 64 1 59 65 0 60 66 0 61 67 1 62 68 1 63 69 1 64 70 1 65 71 0 66 48 0 67 49 1 68 50 1
		 69 51 1 70 52 1 71 53 0;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 -1 20 5 -22
		mu 0 4 2 0 1 3
		f 4 -2 21 6 -23
		mu 0 4 4 2 3 5
		f 4 -3 22 7 -24
		mu 0 4 6 4 5 7
		f 4 -4 23 8 -25
		mu 0 4 8 6 7 9
		f 4 -5 24 9 -26
		mu 0 4 10 8 9 11
		f 4 -6 26 10 -28
		mu 0 4 3 1 12 13
		f 4 -7 27 11 -29
		mu 0 4 5 3 13 14
		f 4 -8 28 12 -30
		mu 0 4 7 5 14 15
		f 4 -9 29 13 -31
		mu 0 4 9 7 15 16
		f 4 -10 30 14 -32
		mu 0 4 11 9 16 17
		f 4 -11 32 15 -34
		mu 0 4 13 12 18 19
		f 4 -12 33 16 -35
		mu 0 4 14 13 19 20
		f 4 -13 34 17 -36
		mu 0 4 15 14 20 21
		f 4 -14 35 18 -37
		mu 0 4 16 15 21 22
		f 4 -15 36 19 -38
		mu 0 4 17 16 22 23
		f 4 -16 38 0 -40
		mu 0 4 19 18 24 25
		f 4 -17 39 1 -41
		mu 0 4 20 19 25 26
		f 4 -18 40 2 -42
		mu 0 4 21 20 26 27
		f 4 -19 41 3 -43
		mu 0 4 22 21 27 28
		f 4 -20 42 4 -44
		mu 0 4 23 22 28 29
		f 4 -45 64 49 -66
		mu 0 4 32 30 31 33
		f 4 -46 65 50 -67
		mu 0 4 34 32 33 35
		f 4 -47 66 51 -68
		mu 0 4 36 34 35 37
		f 4 -48 67 52 -69
		mu 0 4 38 36 37 39
		f 4 -49 68 53 -70
		mu 0 4 40 38 39 41
		f 4 -50 70 54 -72
		mu 0 4 33 31 42 43
		f 4 -51 71 55 -73
		mu 0 4 35 33 43 44
		f 4 -52 72 56 -74
		mu 0 4 37 35 44 45
		f 4 -53 73 57 -75
		mu 0 4 39 37 45 46
		f 4 -54 74 58 -76
		mu 0 4 41 39 46 47
		f 4 -55 76 59 -78
		mu 0 4 43 42 48 49
		f 4 -56 77 60 -79
		mu 0 4 44 43 49 50
		f 4 -57 78 61 -80
		mu 0 4 45 44 50 51
		f 4 -58 79 62 -81
		mu 0 4 46 45 51 52
		f 4 -59 80 63 -82
		mu 0 4 47 46 52 53
		f 4 -60 82 44 -84
		mu 0 4 49 48 54 55
		f 4 -61 83 45 -85
		mu 0 4 50 49 55 56
		f 4 -62 84 46 -86
		mu 0 4 51 50 56 57
		f 4 -63 85 47 -87
		mu 0 4 52 51 57 58
		f 4 -64 86 48 -88
		mu 0 4 53 52 58 59
		f 4 -89 108 93 -110
		mu 0 4 62 60 61 63
		f 4 -90 109 94 -111
		mu 0 4 64 62 63 65
		f 4 -91 110 95 -112
		mu 0 4 66 64 65 67
		f 4 -92 111 96 -113
		mu 0 4 68 66 67 69
		f 4 -93 112 97 -114
		mu 0 4 70 68 69 71
		f 4 -94 114 98 -116
		mu 0 4 63 61 72 73
		f 4 -95 115 99 -117
		mu 0 4 65 63 73 74
		f 4 -96 116 100 -118
		mu 0 4 67 65 74 75
		f 4 -97 117 101 -119
		mu 0 4 69 67 75 76
		f 4 -98 118 102 -120
		mu 0 4 71 69 76 77
		f 4 -99 120 103 -122
		mu 0 4 73 72 78 79
		f 4 -100 121 104 -123
		mu 0 4 74 73 79 80
		f 4 -101 122 105 -124
		mu 0 4 75 74 80 81
		f 4 -102 123 106 -125
		mu 0 4 76 75 81 82
		f 4 -103 124 107 -126
		mu 0 4 77 76 82 83
		f 4 -104 126 88 -128
		mu 0 4 79 78 84 85
		f 4 -105 127 89 -129
		mu 0 4 80 79 85 86
		f 4 -106 128 90 -130
		mu 0 4 81 80 86 87
		f 4 -107 129 91 -131
		mu 0 4 82 81 87 88
		f 4 -108 130 92 -132
		mu 0 4 83 82 88 89;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface8";
createNode transform -n "polySurface9" -p "polySurface8";
createNode transform -n "transform24" -p "polySurface9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform24";
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
createNode transform -n "polySurface10" -p "polySurface8";
createNode transform -n "transform23" -p "polySurface10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform23";
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
createNode transform -n "polySurface11" -p "polySurface8";
createNode transform -n "transform22" -p "polySurface11";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform22";
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
createNode transform -n "polySurface12" -p "polySurface8";
createNode transform -n "transform17" -p "polySurface12";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform17";
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
createNode transform -n "polySurface13" -p "polySurface8";
createNode transform -n "transform16" -p "polySurface13";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform16";
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
createNode transform -n "polySurface14" -p "polySurface8";
createNode transform -n "transform15" -p "polySurface14";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform15";
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
createNode transform -n "polySurface15" -p "polySurface8";
createNode transform -n "transform21" -p "polySurface15";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform21";
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
createNode transform -n "polySurface16" -p "polySurface8";
createNode transform -n "transform20" -p "polySurface16";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform20";
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
createNode transform -n "polySurface17" -p "polySurface8";
createNode transform -n "transform19" -p "polySurface17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform19";
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
createNode transform -n "transform14" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform14";
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
	setAttr ".t" -type "double3" 0.01 0 0 ;
createNode transform -n "transform18" -p "polySurface18";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform18";
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
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "polySurfaceShape19" -p "polySurface19";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 430 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[2]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[3]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[6]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[7]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[8]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[11]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[12]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[13]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[14]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[16]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[17]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[19]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[22]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[23]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[24]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[25]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[26]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[28]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[30]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[31]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[32]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[33]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[34]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[35]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[37]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[38]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[39]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[40]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[41]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[42]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[43]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[44]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[46]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[47]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[48]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[49]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[50]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[51]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[52]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[53]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[55]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[56]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[57]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[58]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[59]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[60]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[61]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[62]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[64]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[65]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[66]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[67]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[68]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[69]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[70]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[71]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[73]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[74]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[75]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[76]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[77]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[78]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[79]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[80]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[82]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[83]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[84]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[85]" -type "float3" 0 0.78530216 0 ;
	setAttr ".pt[86]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[87]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[88]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[89]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[91]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[92]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[93]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[94]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[95]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[96]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[97]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[98]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[100]" -type "float3" 0 0.18971789 0 ;
	setAttr ".pt[101]" -type "float3" 0 0.37943578 0 ;
	setAttr ".pt[102]" -type "float3" 0 0.47429472 0 ;
	setAttr ".pt[103]" -type "float3" 0 0.8537305 0 ;
	setAttr ".pt[104]" -type "float3" 0 1.1383073 0 ;
	setAttr ".pt[105]" -type "float3" 0 1.422884 0 ;
	setAttr ".pt[106]" -type "float3" 0 1.9920373 0 ;
	setAttr ".pt[107]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[108]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[109]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[110]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[111]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[112]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[113]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[114]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[115]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[116]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[117]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[118]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[119]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[120]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[121]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[122]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[123]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[124]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[125]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[126]" -type "float3" 0 5.2297335 0 ;
	setAttr ".pt[127]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[128]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[129]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[130]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[131]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[132]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[133]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[134]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[135]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[136]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[137]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[138]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[139]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[140]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[141]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[142]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[143]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[144]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[145]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[146]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[147]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[148]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[149]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[150]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[151]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[152]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[153]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[154]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[155]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[156]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[157]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[158]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[159]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[160]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[161]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[162]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[163]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[164]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[165]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[166]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[167]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[168]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[169]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[170]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[171]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[172]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[173]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[174]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[175]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[176]" -type "float3" 0 4.0789332 0 ;
	setAttr ".pt[177]" -type "float3" 0 3.414921 0 ;
	setAttr ".pt[178]" -type "float3" 0 2.7957549 0 ;
	setAttr ".pt[179]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[180]" -type "float3" 0 5.2297335 0 ;
	setAttr ".pt[181]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[182]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[183]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[184]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[185]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[186]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[187]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[188]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[189]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[190]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[191]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[192]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[193]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[194]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[195]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[196]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[197]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[198]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[199]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[200]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[201]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[202]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[203]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[204]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[205]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[206]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[207]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[208]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[209]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[210]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[211]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[212]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[213]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[214]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[215]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[216]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[217]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[218]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[219]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[220]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[221]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[222]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[223]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[224]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[225]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[226]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[227]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[228]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[229]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[230]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[231]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[232]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[233]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[234]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[235]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[236]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[237]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[238]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[239]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[240]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[241]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[242]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[243]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[244]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[245]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[246]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[247]" -type "float3" 0 5.9761138 0 ;
	setAttr ".pt[248]" -type "float3" 0 6.3555498 0 ;
	setAttr ".pt[249]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[250]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[251]" -type "float3" 0 7.0195632 0 ;
	setAttr ".pt[252]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[253]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[254]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[255]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[256]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[257]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[258]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[259]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[260]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[261]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[262]" -type "float3" 0 5.2473621 0 ;
	setAttr ".pt[263]" -type "float3" 0 5.2293677 0 ;
	setAttr ".pt[264]" -type "float3" 0 5.248333 0 ;
	setAttr ".pt[265]" -type "float3" 0 5.2293677 0 ;
	setAttr ".pt[266]" -type "float3" 0 5.2297111 0 ;
	setAttr ".pt[267]" -type "float3" 0 5.2293677 0 ;
	setAttr ".pt[268]" -type "float3" 0 5.1950421 0 ;
	setAttr ".pt[269]" -type "float3" 0 5.2293677 0 ;
	setAttr ".pt[270]" -type "float3" 0 5.2131667 0 ;
	setAttr ".pt[271]" -type "float3" 0 5.2293677 0 ;
	setAttr ".pt[272]" -type "float3" 0 5.2293682 0 ;
	setAttr ".pt[273]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[274]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[275]" -type "float3" 0 5.2297344 0 ;
	setAttr ".pt[276]" -type "float3" 0 5.2293682 0 ;
	setAttr ".pt[277]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[278]" -type "float3" 0 5.2293682 0 ;
	setAttr ".pt[279]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[280]" -type "float3" 0 5.2293682 0 ;
	setAttr ".pt[281]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[282]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[283]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[284]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[285]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[286]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[287]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[288]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[289]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[290]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[291]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[292]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[293]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[294]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[295]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[296]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[297]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[298]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[299]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[300]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[301]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[302]" -type "float3" 0 5.2303605 0 ;
	setAttr ".pt[303]" -type "float3" 0 5.2308483 0 ;
	setAttr ".pt[304]" -type "float3" 0 5.2303605 0 ;
	setAttr ".pt[305]" -type "float3" 0 5.2464066 0 ;
	setAttr ".pt[306]" -type "float3" 0 5.2303605 0 ;
	setAttr ".pt[307]" -type "float3" 0 5.2457294 0 ;
	setAttr ".pt[308]" -type "float3" 0 5.2303605 0 ;
	setAttr ".pt[309]" -type "float3" 0 5.2131662 0 ;
	setAttr ".pt[310]" -type "float3" 0 5.2303605 0 ;
	setAttr ".pt[311]" -type "float3" 0 5.2131662 0 ;
	setAttr ".pt[312]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[313]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[314]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[315]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[316]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[317]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[318]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[319]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[320]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[321]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[322]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[323]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[324]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[325]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[326]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[327]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[328]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[329]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[330]" -type "float3" 0 5.2303615 0 ;
	setAttr ".pt[331]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[332]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[333]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[334]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[335]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[336]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[337]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[338]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[339]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[340]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[341]" -type "float3" 0 4.5532289 0 ;
	setAttr ".pt[342]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[343]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[344]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[345]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[346]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[347]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[348]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[349]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[350]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[351]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[352]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[353]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[354]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[355]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[356]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[357]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[358]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[359]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[360]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[361]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[362]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[363]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[364]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[365]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[366]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[367]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[368]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[369]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[370]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[371]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[372]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[373]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[374]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[375]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[376]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[377]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[378]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[379]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[380]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[381]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[382]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[383]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[384]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[385]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[386]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[387]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[388]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[389]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[390]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[391]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[392]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[393]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[394]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[395]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[396]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[397]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[398]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[399]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[400]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[401]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[402]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[403]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[404]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[405]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[406]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[407]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[408]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[409]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[410]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[411]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[412]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[413]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[414]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[415]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[416]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[417]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[418]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[419]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[420]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[421]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[422]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[423]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[424]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[425]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[426]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[427]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[428]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[429]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[430]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[431]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[432]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[433]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[434]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[435]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[436]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[437]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[438]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[439]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[440]" -type "float3" 0 2.300025 0 ;
	setAttr ".pt[441]" -type "float3" 0 2.300025 0 ;
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
createNode polyPipe -n "polyPipe1";
	setAttr ".r" 7;
	setAttr ".h" 1;
	setAttr ".t" 3;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe2";
	setAttr ".r" 7;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe3";
	setAttr ".r" 4.25;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe4";
	setAttr ".r" 10;
	setAttr ".h" 1;
	setAttr ".t" 3;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe5";
	setAttr ".r" 10;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe6";
	setAttr ".r" 7.25;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyUnite -n "polyUnite1";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:383]";
createNode polyUnite -n "polyUnite2";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:383]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 128 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 128 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 128 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 12 "f[8:23]" "f[40:55]" "f[72:87]" "f[104:119]" "f[136:151]" "f[168:183]" "f[200:215]" "f[232:247]" "f[264:279]" "f[296:311]" "f[328:343]" "f[360:375]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 12 "f[8:15]" "f[24:31]" "f[40:47]" "f[56:63]" "f[72:79]" "f[88:95]" "f[104:111]" "f[120:127]" "f[136:143]" "f[152:159]" "f[168:175]" "f[184:191]";
createNode polyUnite -n "polyUnite3";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:383]";
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 15 "f[0:1]" "f[14:33]" "f[46:65]" "f[78:86]" "f[89:97]" "f[110:129]" "f[142:161]" "f[174:193]" "f[206:214]" "f[217:225]" "f[238:257]" "f[270:289]" "f[302:321]" "f[334:353]" "f[366:383]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 2 "f[36:37]" "f[86:87]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 12 "f[6:10]" "f[18:23]" "f[30:35]" "f[42:47]" "f[54:59]" "f[66:71]" "f[78:83]" "f[90:95]" "f[102:106]" "f[114:118]" "f[126:130]" "f[138:142]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 5 "f[6]" "f[55]" "f[62]" "f[69]" "f[76]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 7 "f[0]" "f[6]" "f[18]" "f[48]" "f[54]" "f[60]" "f[66]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 5 "f[10]" "f[21]" "f[27]" "f[33]" "f[39]";
createNode polyUnite -n "polyUnite4";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 9;
	setAttr -s 9 ".out";
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 32 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]";
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 32 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]";
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 32 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]";
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode polyUnite -n "polyUnite5";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode polyUnite -n "polyUnite6";
	setAttr -s 7 ".ip";
	setAttr -s 7 ".im";
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
	setAttr ".gi" 43;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 2 "e[230]" "e[362]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 120;
	setAttr ".sv2" 192;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:221]";
	setAttr ".gi" 44;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[242]" "e[374]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 108;
	setAttr ".sv2" 180;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:227]";
	setAttr ".gi" 45;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[224]" "e[368]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 114;
	setAttr ".sv2" 198;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:233]";
	setAttr ".gi" 46;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[312]" "e[412]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 162;
	setAttr ".sv2" 222;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:239]";
	setAttr ".gi" 48;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".ics" -type "componentList" 2 "e[324]" "e[400]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 174;
	setAttr ".sv2" 210;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:245]";
	setAttr ".gi" 49;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	setAttr ".ics" -type "componentList" 2 "e[236]" "e[356]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 126;
	setAttr ".sv2" 186;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
	setAttr ".gi" 50;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	setAttr ".ics" -type "componentList" 2 "e[280]" "e[444]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 150;
	setAttr ".sv2" 234;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:257]";
	setAttr ".gi" 51;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	setAttr ".ics" -type "componentList" 2 "e[268]" "e[456]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 138;
	setAttr ".sv2" 246;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:263]";
	setAttr ".gi" 52;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	setAttr ".ics" -type "componentList" 2 "e[274]" "e[450]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 144;
	setAttr ".sv2" 240;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:269]";
	setAttr ".gi" 53;
createNode polyBridgeEdge -n "polyBridgeEdge10";
	setAttr ".ics" -type "componentList" 2 "e[67]" "e[247]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 35;
	setAttr ".sv2" 131;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:275]";
	setAttr ".gi" 54;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	setAttr ".ics" -type "componentList" 2 "e[49]" "e[235]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 17;
	setAttr ".sv2" 119;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:281]";
	setAttr ".gi" 55;
createNode polyBridgeEdge -n "polyBridgeEdge12";
	setAttr ".ics" -type "componentList" 2 "e[58]" "e[229]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 26;
	setAttr ".sv2" 113;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:287]";
	setAttr ".gi" 56;
createNode polyBridgeEdge -n "polyBridgeEdge13";
	setAttr ".ics" -type "componentList" 2 "e[126]" "e[317]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 62;
	setAttr ".sv2" 161;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:293]";
	setAttr ".gi" 57;
createNode polyBridgeEdge -n "polyBridgeEdge14";
	setAttr ".ics" -type "componentList" 2 "e[117]" "e[323]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 53;
	setAttr ".sv2" 167;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:299]";
	setAttr ".gi" 58;
createNode polyBridgeEdge -n "polyBridgeEdge15";
	setAttr ".ics" -type "componentList" 2 "e[108]" "e[329]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 44;
	setAttr ".sv2" 173;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:305]";
	setAttr ".gi" 59;
createNode polyBridgeEdge -n "polyBridgeEdge16";
	setAttr ".ics" -type "componentList" 2 "e[194]" "e[273]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 98;
	setAttr ".sv2" 137;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:311]";
	setAttr ".gi" 60;
createNode polyBridgeEdge -n "polyBridgeEdge17";
	setAttr ".ics" -type "componentList" 2 "e[176]" "e[285]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 80;
	setAttr ".sv2" 149;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:317]";
	setAttr ".gi" 61;
createNode polyBridgeEdge -n "polyBridgeEdge18";
	setAttr ".ics" -type "componentList" 2 "e[40]" "e[241]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 8;
	setAttr ".sv2" 125;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:323]";
	setAttr ".gi" 62;
createNode polyBridgeEdge -n "polyBridgeEdge19";
	setAttr ".ics" -type "componentList" 2 "e[185]" "e[279]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 89;
	setAttr ".sv2" 143;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:329]";
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 31 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 31 ".gn";
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
connectAttr "groupId8.id" "pPipeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape1.iog.og[0].gco";
connectAttr "groupParts5.og" "pPipeShape1.i";
connectAttr "groupId9.id" "pPipeShape1.ciog.cog[0].cgid";
connectAttr "groupId10.id" "pPipeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape2.iog.og[0].gco";
connectAttr "groupParts6.og" "pPipeShape2.i";
connectAttr "groupId11.id" "pPipeShape2.ciog.cog[0].cgid";
connectAttr "groupId12.id" "pPipeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape3.iog.og[0].gco";
connectAttr "groupParts7.og" "pPipeShape3.i";
connectAttr "groupId13.id" "pPipeShape3.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pPipeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape4.iog.og[0].gco";
connectAttr "groupParts1.og" "pPipeShape4.i";
connectAttr "groupId2.id" "pPipeShape4.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pPipeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape5.iog.og[0].gco";
connectAttr "groupParts2.og" "pPipeShape5.i";
connectAttr "groupId4.id" "pPipeShape5.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pPipeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape6.iog.og[0].gco";
connectAttr "groupParts3.og" "pPipeShape6.i";
connectAttr "groupId6.id" "pPipeShape6.ciog.cog[0].cgid";
connectAttr "groupParts9.og" "polySurfaceShape3.i";
connectAttr "groupId15.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape4.i";
connectAttr "groupId16.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape5.i";
connectAttr "groupId17.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts4.og" "polySurfaceShape1.i";
connectAttr "groupId7.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "deleteComponent2.og" "polySurfaceShape2.i";
connectAttr "groupId14.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "deleteComponent8.og" "polySurfaceShape6.i";
connectAttr "groupId18.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupId19.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape9.i";
connectAttr "groupId21.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape10.i";
connectAttr "groupId22.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape11.i";
connectAttr "groupId23.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape12.i";
connectAttr "groupId24.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape13.i";
connectAttr "groupId25.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape14.i";
connectAttr "groupId26.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape15.i";
connectAttr "groupId27.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape16.i";
connectAttr "groupId28.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape17.i";
connectAttr "groupId29.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape8.i";
connectAttr "groupId20.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape18.i";
connectAttr "groupId30.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape19.i";
connectAttr "groupId31.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pPipeShape4.o" "polyUnite1.ip[0]";
connectAttr "pPipeShape5.o" "polyUnite1.ip[1]";
connectAttr "pPipeShape6.o" "polyUnite1.ip[2]";
connectAttr "pPipeShape4.wm" "polyUnite1.im[0]";
connectAttr "pPipeShape5.wm" "polyUnite1.im[1]";
connectAttr "pPipeShape6.wm" "polyUnite1.im[2]";
connectAttr "polyPipe4.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyPipe5.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyPipe6.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polyUnite1.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "pPipeShape1.o" "polyUnite2.ip[0]";
connectAttr "pPipeShape2.o" "polyUnite2.ip[1]";
connectAttr "pPipeShape3.o" "polyUnite2.ip[2]";
connectAttr "pPipeShape1.wm" "polyUnite2.im[0]";
connectAttr "pPipeShape2.wm" "polyUnite2.im[1]";
connectAttr "pPipeShape3.wm" "polyUnite2.im[2]";
connectAttr "polyPipe1.out" "groupParts5.ig";
connectAttr "groupId8.id" "groupParts5.gi";
connectAttr "polyPipe2.out" "groupParts6.ig";
connectAttr "groupId10.id" "groupParts6.gi";
connectAttr "polyPipe3.out" "groupParts7.ig";
connectAttr "groupId12.id" "groupParts7.gi";
connectAttr "polyUnite2.out" "groupParts8.ig";
connectAttr "groupId14.id" "groupParts8.gi";
connectAttr "polySurfaceShape1.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts9.ig";
connectAttr "groupId15.id" "groupParts9.gi";
connectAttr "polySeparate1.out[1]" "groupParts10.ig";
connectAttr "groupId16.id" "groupParts10.gi";
connectAttr "polySeparate1.out[2]" "groupParts11.ig";
connectAttr "groupId17.id" "groupParts11.gi";
connectAttr "groupParts8.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polySurfaceShape3.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape4.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape5.o" "polyUnite3.ip[2]";
connectAttr "polySurfaceShape3.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape4.wm" "polyUnite3.im[1]";
connectAttr "polySurfaceShape5.wm" "polyUnite3.im[2]";
connectAttr "polyUnite3.out" "groupParts12.ig";
connectAttr "groupId18.id" "groupParts12.gi";
connectAttr "groupParts12.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "polySurfaceShape2.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape6.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape7.o" "polyUnite4.ip[2]";
connectAttr "polySurfaceShape2.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape6.wm" "polyUnite4.im[1]";
connectAttr "polySurfaceShape7.wm" "polyUnite4.im[2]";
connectAttr "polyUnite4.out" "groupParts13.ig";
connectAttr "groupId20.id" "groupParts13.gi";
connectAttr "polySurfaceShape8.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts14.ig";
connectAttr "groupId21.id" "groupParts14.gi";
connectAttr "polySeparate2.out[1]" "groupParts15.ig";
connectAttr "groupId22.id" "groupParts15.gi";
connectAttr "polySeparate2.out[2]" "groupParts16.ig";
connectAttr "groupId23.id" "groupParts16.gi";
connectAttr "polySeparate2.out[3]" "groupParts17.ig";
connectAttr "groupId24.id" "groupParts17.gi";
connectAttr "polySeparate2.out[4]" "groupParts18.ig";
connectAttr "groupId25.id" "groupParts18.gi";
connectAttr "polySeparate2.out[5]" "groupParts19.ig";
connectAttr "groupId26.id" "groupParts19.gi";
connectAttr "polySeparate2.out[6]" "groupParts20.ig";
connectAttr "groupId27.id" "groupParts20.gi";
connectAttr "polySeparate2.out[7]" "groupParts21.ig";
connectAttr "groupId28.id" "groupParts21.gi";
connectAttr "polySeparate2.out[8]" "groupParts22.ig";
connectAttr "groupId29.id" "groupParts22.gi";
connectAttr "polySurfaceShape12.o" "polyUnite5.ip[0]";
connectAttr "polySurfaceShape13.o" "polyUnite5.ip[1]";
connectAttr "polySurfaceShape14.o" "polyUnite5.ip[2]";
connectAttr "polySurfaceShape12.wm" "polyUnite5.im[0]";
connectAttr "polySurfaceShape13.wm" "polyUnite5.im[1]";
connectAttr "polySurfaceShape14.wm" "polyUnite5.im[2]";
connectAttr "polyUnite5.out" "groupParts23.ig";
connectAttr "groupId30.id" "groupParts23.gi";
connectAttr "polySurfaceShape9.o" "polyUnite6.ip[0]";
connectAttr "polySurfaceShape10.o" "polyUnite6.ip[1]";
connectAttr "polySurfaceShape11.o" "polyUnite6.ip[2]";
connectAttr "polySurfaceShape15.o" "polyUnite6.ip[3]";
connectAttr "polySurfaceShape16.o" "polyUnite6.ip[4]";
connectAttr "polySurfaceShape17.o" "polyUnite6.ip[5]";
connectAttr "polySurfaceShape18.o" "polyUnite6.ip[6]";
connectAttr "polySurfaceShape9.wm" "polyUnite6.im[0]";
connectAttr "polySurfaceShape10.wm" "polyUnite6.im[1]";
connectAttr "polySurfaceShape11.wm" "polyUnite6.im[2]";
connectAttr "polySurfaceShape15.wm" "polyUnite6.im[3]";
connectAttr "polySurfaceShape16.wm" "polyUnite6.im[4]";
connectAttr "polySurfaceShape17.wm" "polyUnite6.im[5]";
connectAttr "polySurfaceShape18.wm" "polyUnite6.im[6]";
connectAttr "polyUnite6.out" "groupParts24.ig";
connectAttr "groupParts24.og" "polyBridgeEdge1.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "groupParts25.ig";
connectAttr "groupParts25.og" "polyBridgeEdge2.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "groupParts26.ig";
connectAttr "groupParts26.og" "polyBridgeEdge3.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "groupParts27.ig";
connectAttr "groupParts27.og" "polyBridgeEdge4.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "groupParts28.ig";
connectAttr "groupParts28.og" "polyBridgeEdge5.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "groupParts29.ig";
connectAttr "groupParts29.og" "polyBridgeEdge6.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge6.mp";
connectAttr "polyBridgeEdge6.out" "groupParts30.ig";
connectAttr "groupParts30.og" "polyBridgeEdge7.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge7.mp";
connectAttr "polyBridgeEdge7.out" "groupParts31.ig";
connectAttr "groupParts31.og" "polyBridgeEdge8.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge8.mp";
connectAttr "polyBridgeEdge8.out" "groupParts32.ig";
connectAttr "groupParts32.og" "polyBridgeEdge9.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge9.mp";
connectAttr "polyBridgeEdge9.out" "groupParts33.ig";
connectAttr "groupParts33.og" "polyBridgeEdge10.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge10.mp";
connectAttr "polyBridgeEdge10.out" "groupParts34.ig";
connectAttr "groupParts34.og" "polyBridgeEdge11.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge11.mp";
connectAttr "polyBridgeEdge11.out" "groupParts35.ig";
connectAttr "groupParts35.og" "polyBridgeEdge12.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge12.mp";
connectAttr "polyBridgeEdge12.out" "groupParts36.ig";
connectAttr "groupParts36.og" "polyBridgeEdge13.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge13.mp";
connectAttr "polyBridgeEdge13.out" "groupParts37.ig";
connectAttr "groupParts37.og" "polyBridgeEdge14.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge14.mp";
connectAttr "polyBridgeEdge14.out" "groupParts38.ig";
connectAttr "groupParts38.og" "polyBridgeEdge15.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge15.mp";
connectAttr "polyBridgeEdge15.out" "groupParts39.ig";
connectAttr "groupParts39.og" "polyBridgeEdge16.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge16.mp";
connectAttr "polyBridgeEdge16.out" "groupParts40.ig";
connectAttr "groupParts40.og" "polyBridgeEdge17.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge17.mp";
connectAttr "polyBridgeEdge17.out" "groupParts41.ig";
connectAttr "groupParts41.og" "polyBridgeEdge18.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge18.mp";
connectAttr "polyBridgeEdge18.out" "groupParts42.ig";
connectAttr "groupParts42.og" "polyBridgeEdge19.ip";
connectAttr "polySurfaceShape19.wm" "polyBridgeEdge19.mp";
connectAttr "polyBridgeEdge19.out" "groupParts43.ig";
connectAttr "groupId31.id" "groupParts43.gi";
connectAttr "pPipeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of C - Uphill curve.ma
