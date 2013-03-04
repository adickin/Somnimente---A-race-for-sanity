//Maya ASCII 2013 scene
//Name: R - Stairs 2.ma
//Last modified: Sun, Mar 03, 2013 09:59:46 PM
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
	setAttr ".t" -type "double3" 556.7180276278167 75.19022599019857 318.56784235111462 ;
	setAttr ".r" -type "double3" 353.39999999997235 60.000000000000227 7.9513867036588471e-16 ;
	setAttr ".rpt" -type "double3" -1.7875311141149064e-19 1.1809141717106034e-16 -1.2359658891227586e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 642.79483907271197;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 19.679970380436796 0.75 11.933180254745183 ;
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
	setAttr ".t" -type "double3" 5.2369200839068748 21.315305423534006 -1.807696169709053 ;
	setAttr ".r" -type "double3" -89.999999999999986 0.015172538801486344 0 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 0 -7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" -6.3801985628499465e-16 -6.5470918049735891e-15 7.2283686619720116e-15 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 20.815305423534003;
	setAttr ".ow" 1407.4561632906236;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 23.961802253341322 0.50000000000000355 11.439123364190245 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "F___Stairs_1:pCube1";
	setAttr ".t" -type "double3" 12 0.25 3 ;
createNode transform -n "transform33" -p "F___Stairs_1:pCube1";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape1" -p "transform33";
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
createNode transform -n "F___Stairs_1:pCube2";
	setAttr ".t" -type "double3" 0.125 0.75 -3.75 ;
createNode transform -n "transform32" -p "F___Stairs_1:pCube2";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape2" -p "transform32";
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
createNode transform -n "F___Stairs_1:pCube3";
	setAttr ".t" -type "double3" 2.88 0.75 -1.65 ;
createNode transform -n "transform31" -p "F___Stairs_1:pCube3";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape3" -p "transform31";
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
createNode transform -n "F___Stairs_1:pCube4";
	setAttr ".t" -type "double3" 6.125 0.75 -1.65 ;
createNode transform -n "transform30" -p "F___Stairs_1:pCube4";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape4" -p "transform30";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube5";
	setAttr ".t" -type "double3" 14.88 0.75 1.625 ;
createNode transform -n "transform29" -p "F___Stairs_1:pCube5";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape5" -p "transform29";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube6";
	setAttr ".t" -type "double3" 12.125 0.75 4.38 ;
createNode transform -n "transform28" -p "F___Stairs_1:pCube6";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape6" -p "transform28";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube7";
	setAttr ".t" -type "double3" 20.88 0.75 6.125 ;
createNode transform -n "transform27" -p "F___Stairs_1:pCube7";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape7" -p "transform27";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube8";
	setAttr ".t" -type "double3" 22.38 0.75 9.125 ;
createNode transform -n "transform26" -p "F___Stairs_1:pCube8";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape8" -p "transform26";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube9";
	setAttr ".t" -type "double3" 18.125362086647566 0.75 8.88 ;
createNode transform -n "transform25" -p "F___Stairs_1:pCube9";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape9" -p "transform25";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube10";
	setAttr ".t" -type "double3" 19.625 0.75 11.88 ;
createNode transform -n "transform24" -p "F___Stairs_1:pCube10";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape10" -p "transform24";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube11";
	setAttr ".t" -type "double3" 17.88 0.75 3.815 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform23" -p "F___Stairs_1:pCube11";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape11" -p "transform23";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube12";
	setAttr ".t" -type "double3" 10.625 0.75 2.1747690865071441 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform22" -p "F___Stairs_1:pCube12";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape12" -p "transform22";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube13";
	setAttr ".t" -type "double3" 10.375 0.75 -2.175 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform21" -p "F___Stairs_1:pCube13";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape13" -p "transform21";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube14";
	setAttr ".t" -type "double3" 7.615 0.75 0.688 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform20" -p "F___Stairs_1:pCube14";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape14" -p "transform20";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube15";
	setAttr ".t" -type "double3" 13.388 0.75 -0.675 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform19" -p "F___Stairs_1:pCube15";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape15" -p "transform19";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube16";
	setAttr ".t" -type "double3" 15.125 0.75 6.675 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform18" -p "F___Stairs_1:pCube16";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape16" -p "transform18";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_1:pCube17";
	setAttr ".t" -type "double3" 8.888 0.75 -5.125 ;
createNode transform -n "transform17" -p "F___Stairs_1:pCube17";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape17" -p "transform17";
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
createNode transform -n "F___Stairs_1:pCube18";
	setAttr ".t" -type "double3" 4.5 0.75 -7.375 ;
createNode transform -n "transform16" -p "F___Stairs_1:pCube18";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape18" -p "transform16";
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
createNode transform -n "F___Stairs_1:pCube19";
	setAttr ".t" -type "double3" 4.5 0.75 -3.125 ;
	setAttr ".s" -type "double3" 0.33 1 1 ;
createNode transform -n "transform15" -p "F___Stairs_1:pCube19";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape19" -p "transform15";
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
	setAttr -s 8 ".vt[0:7]"  -4.5 -0.25 0.125 4.5 -0.25 0.125 -4.5 0.25 0.125
		 4.5 0.25 0.125 -4.5 0.25 -0.125 4.5 0.25 -0.125 -4.5 -0.25 -0.125 4.5 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube20";
	setAttr ".t" -type "double3" 6.875086664276818 0.75 -0.125 ;
createNode transform -n "transform14" -p "F___Stairs_1:pCube20";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape20" -p "transform14";
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
createNode transform -n "F___Stairs_1:pCube21";
	setAttr ".t" -type "double3" 9.6125 0.75 -2.875 ;
createNode transform -n "transform13" -p "F___Stairs_1:pCube21";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape21" -p "transform13";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube22";
	setAttr ".t" -type "double3" 11.375 0.75 2.875 ;
createNode transform -n "transform12" -p "F___Stairs_1:pCube22";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape22" -p "transform12";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube23";
	setAttr ".t" -type "double3" 14.125 0.75 0.1473071393281451 ;
createNode transform -n "transform11" -p "F___Stairs_1:pCube23";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape23" -p "transform11";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube24";
	setAttr ".t" -type "double3" 21.625 0.75 7.625 ;
createNode transform -n "transform10" -p "F___Stairs_1:pCube24";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape24" -p "transform10";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube25";
	setAttr ".t" -type "double3" 18.875 0.75 10.375 ;
createNode transform -n "transform9" -p "F___Stairs_1:pCube25";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape25" -p "transform9";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube26";
	setAttr ".t" -type "double3" 23.125 0.75 10.625 ;
createNode transform -n "transform8" -p "F___Stairs_1:pCube26";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape26" -p "transform8";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube27";
	setAttr ".t" -type "double3" 9.125 0.75 1.35 ;
createNode transform -n "transform7" -p "F___Stairs_1:pCube27";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape27" -p "transform7";
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
createNode transform -n "F___Stairs_1:pCube28";
	setAttr ".t" -type "double3" 11.875 0.75 -1.375 ;
createNode transform -n "transform6" -p "F___Stairs_1:pCube28";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape28" -p "transform6";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube29";
	setAttr ".t" -type "double3" 13.625 0.75 5.875 ;
createNode transform -n "transform5" -p "F___Stairs_1:pCube29";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape29" -p "transform5";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube30";
	setAttr ".t" -type "double3" 16.375 0.75 3.125 ;
createNode transform -n "transform4" -p "F___Stairs_1:pCube30";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape30" -p "transform4";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube31";
	setAttr ".t" -type "double3" 16.625 0.75 7.375 ;
createNode transform -n "transform3" -p "F___Stairs_1:pCube31";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape31" -p "transform3";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube32";
	setAttr ".t" -type "double3" 19.375 0.75 4.625 ;
createNode transform -n "transform2" -p "F___Stairs_1:pCube32";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape32" -p "transform2";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "F___Stairs_1:pCube33";
	setAttr ".t" -type "double3" 21.75 0.75 13.375 ;
createNode transform -n "transform1" -p "F___Stairs_1:pCube33";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_1:pCubeShape33" -p "transform1";
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
createNode transform -n "transform68" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform68";
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
createNode transform -n "F___Stairs_2:pCube2";
	setAttr ".t" -type "double3" 0.125 0.75 -3.75 ;
createNode transform -n "transform67" -p "F___Stairs_2:pCube2";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape2" -p "transform67";
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
createNode transform -n "F___Stairs_2:pCube3";
	setAttr ".t" -type "double3" 2.88 0.75 -1.625 ;
createNode transform -n "transform66" -p "F___Stairs_2:pCube3";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape3" -p "transform66";
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
createNode transform -n "F___Stairs_2:pCube17";
	setAttr ".t" -type "double3" 8.888 0.75 -5.125 ;
createNode transform -n "transform65" -p "F___Stairs_2:pCube17";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape17" -p "transform65";
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
createNode transform -n "F___Stairs_2:pCube18";
	setAttr ".t" -type "double3" 4.5 0.75 -7.375 ;
createNode transform -n "transform64" -p "F___Stairs_2:pCube18";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape18" -p "transform64";
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
createNode transform -n "F___Stairs_2:pCube19";
	setAttr ".t" -type "double3" 4.5 0.75 -3.125 ;
	setAttr ".s" -type "double3" 0.33 1 1 ;
createNode transform -n "transform63" -p "F___Stairs_2:pCube19";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape19" -p "transform63";
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
	setAttr -s 8 ".vt[0:7]"  -4.5 -0.25 0.125 4.5 -0.25 0.125 -4.5 0.25 0.125
		 4.5 0.25 0.125 -4.5 0.25 -0.125 4.5 0.25 -0.125 -4.5 -0.25 -0.125 4.5 -0.25 -0.125;
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
createNode transform -n "F___Stairs_2:pCube21";
	setAttr ".t" -type "double3" 9.6125 0.75 -2.875 ;
createNode transform -n "transform62" -p "F___Stairs_2:pCube21";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape21" -p "transform62";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "group1";
	setAttr ".t" -type "double3" 39.625 0 7.5 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "F___Stairs_2:pCube1" -p "group1";
	setAttr ".t" -type "double3" 23.089555620916737 0.25 3 ;
createNode transform -n "transform61" -p "F___Stairs_2:pCube1";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape1" -p "transform61";
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
createNode transform -n "F___Stairs_2:pCube4" -p "group1";
	setAttr ".t" -type "double3" 17.214555620916734 0.75 -1.65 ;
createNode transform -n "transform60" -p "F___Stairs_2:pCube4";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape4" -p "transform60";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube5" -p "group1";
	setAttr ".t" -type "double3" 25.969555620916736 0.75 1.625 ;
createNode transform -n "transform59" -p "F___Stairs_2:pCube5";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape5" -p "transform59";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube6" -p "group1";
	setAttr ".t" -type "double3" 23.214555620916737 0.75 4.38 ;
createNode transform -n "transform58" -p "F___Stairs_2:pCube6";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape6" -p "transform58";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube7" -p "group1";
	setAttr ".t" -type "double3" 31.969555620916733 0.75 6.125 ;
createNode transform -n "transform57" -p "F___Stairs_2:pCube7";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape7" -p "transform57";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube8" -p "group1";
	setAttr ".t" -type "double3" 33.469555620916736 0.75 9.125 ;
createNode transform -n "transform56" -p "F___Stairs_2:pCube8";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape8" -p "transform56";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube9" -p "group1";
	setAttr ".t" -type "double3" 29.2149177075643 0.75 8.88 ;
createNode transform -n "transform55" -p "F___Stairs_2:pCube9";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape9" -p "transform55";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube11" -p "group1";
	setAttr ".t" -type "double3" 28.969555620916733 0.75 3.815 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform54" -p "F___Stairs_2:pCube11";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape11" -p "transform54";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube12" -p "group1";
	setAttr ".t" -type "double3" 21.714555620916737 0.75 2.1747690865071441 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform53" -p "F___Stairs_2:pCube12";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape12" -p "transform53";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube13" -p "group1";
	setAttr ".t" -type "double3" 21.464555620916737 0.75 -2.175 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform52" -p "F___Stairs_2:pCube13";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape13" -p "transform52";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube14" -p "group1";
	setAttr ".t" -type "double3" 18.725 0.75 0.688 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform51" -p "F___Stairs_2:pCube14";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape14" -p "transform51";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube15" -p "group1";
	setAttr ".t" -type "double3" 24.475 0.75 -0.675 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform50" -p "F___Stairs_2:pCube15";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape15" -p "transform50";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube16" -p "group1";
	setAttr ".t" -type "double3" 26.214555620916737 0.75 6.675 ;
	setAttr ".s" -type "double3" 1 1 0.5 ;
createNode transform -n "transform49" -p "F___Stairs_2:pCube16";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape16" -p "transform49";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "F___Stairs_2:pCube20" -p "group1";
	setAttr ".t" -type "double3" 17.964642285193552 0.75 -0.125 ;
createNode transform -n "transform48" -p "F___Stairs_2:pCube20";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape20" -p "transform48";
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
createNode transform -n "F___Stairs_2:pCube22" -p "group1";
	setAttr ".t" -type "double3" 22.464555620916737 0.75 2.875 ;
createNode transform -n "transform47" -p "F___Stairs_2:pCube22";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape22" -p "transform47";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_2:pCube23" -p "group1";
	setAttr ".t" -type "double3" 25.214555620916737 0.75 0.1375 ;
createNode transform -n "transform46" -p "F___Stairs_2:pCube23";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape23" -p "transform46";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_2:pCube24" -p "group1";
	setAttr ".t" -type "double3" 32.714555620916734 0.75 7.625 ;
createNode transform -n "transform45" -p "F___Stairs_2:pCube24";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape24" -p "transform45";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_2:pCube25" -p "group1";
	setAttr ".t" -type "double3" 29.964555620916737 0.75 10.375 ;
createNode transform -n "transform44" -p "F___Stairs_2:pCube25";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape25" -p "transform44";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "F___Stairs_2:pCube27" -p "group1";
	setAttr ".t" -type "double3" 20.214555620916737 0.75 1.375 ;
createNode transform -n "transform43" -p "F___Stairs_2:pCube27";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape27" -p "transform43";
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
createNode transform -n "F___Stairs_2:pCube28" -p "group1";
	setAttr ".t" -type "double3" 22.964555620916737 0.75 -1.375 ;
createNode transform -n "transform42" -p "F___Stairs_2:pCube28";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape28" -p "transform42";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "F___Stairs_2:pCube29" -p "group1";
	setAttr ".t" -type "double3" 24.714555620916737 0.75 5.875 ;
createNode transform -n "transform41" -p "F___Stairs_2:pCube29";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape29" -p "transform41";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "F___Stairs_2:pCube30" -p "group1";
	setAttr ".t" -type "double3" 27.464555620916737 0.75 3.125 ;
createNode transform -n "transform40" -p "F___Stairs_2:pCube30";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape30" -p "transform40";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "F___Stairs_2:pCube31" -p "group1";
	setAttr ".t" -type "double3" 27.714555620916737 0.75 7.375 ;
createNode transform -n "transform39" -p "F___Stairs_2:pCube31";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape31" -p "transform39";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "F___Stairs_2:pCube32" -p "group1";
	setAttr ".t" -type "double3" 30.464555620916737 0.75 4.625 ;
createNode transform -n "transform38" -p "F___Stairs_2:pCube32";
	setAttr ".v" no;
createNode mesh -n "F___Stairs_2:pCubeShape32" -p "transform38";
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
	setAttr -s 8 ".vt[0:7]"  -1.625 -0.25 0.125 1.625 -0.25 0.125 -1.625 0.25 0.125
		 1.625 0.25 0.125 -1.625 0.25 -0.125 1.625 0.25 -0.125 -1.625 -0.25 -0.125 1.625 -0.25 -0.125;
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
createNode transform -n "pCube22" -p "group1";
	setAttr ".t" -type "double3" 20.75 0.75 -2.875 ;
createNode transform -n "transform37" -p "pCube22";
	setAttr ".v" no;
createNode mesh -n "pCubeShape22" -p "transform37";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "pCube23" -p "group1";
	setAttr ".t" -type "double3" 16.46252374214243 0.75 -3.125 ;
	setAttr ".s" -type "double3" 0.98170141799759059 1 1 ;
createNode transform -n "transform36" -p "pCube23";
	setAttr ".v" no;
createNode mesh -n "pCubeShape23" -p "transform36";
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
	setAttr -s 8 ".vt[0:7]"  -0.875 -0.25 0.125 0.875 -0.25 0.125 -0.875 0.25 0.125
		 0.875 0.25 0.125 -0.875 0.25 -0.125 0.875 0.25 -0.125 -0.875 -0.25 -0.125 0.875 -0.25 -0.125;
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
createNode transform -n "pCube4" -p "group1";
	setAttr ".t" -type "double3" 19.945029619563204 0.75 -4.3659482652182362 ;
createNode transform -n "transform35" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform35";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "pCube24" -p "group1";
	setAttr ".t" -type "double3" 17.829353732759287 0.75 -5.8758709857728846 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 1 1 1.3773035902457913 ;
createNode transform -n "transform34" -p "pCube24";
	setAttr ".v" no;
createNode mesh -n "pCubeShape24" -p "transform34";
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
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.25 1.625 0.125 -0.25 1.625 -0.125 0.25 1.625
		 0.125 0.25 1.625 -0.125 0.25 -1.625 0.125 0.25 -1.625 -0.125 -0.25 -1.625 0.125 -0.25 -1.625;
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
createNode transform -n "polySurface2";
	setAttr ".t" -type "double3" -1.5 -0.5 0 ;
createNode transform -n "polySurface3" -p "polySurface2";
createNode transform -n "transform111" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform111";
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
createNode transform -n "polySurface4" -p "polySurface2";
createNode transform -n "transform110" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform110";
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
createNode transform -n "polySurface5" -p "polySurface2";
createNode transform -n "transform109" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform109";
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
createNode transform -n "polySurface6" -p "polySurface2";
createNode transform -n "transform108" -p "polySurface6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform108";
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
createNode transform -n "polySurface7" -p "polySurface2";
createNode transform -n "transform107" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform107";
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
createNode transform -n "polySurface8" -p "polySurface2";
createNode transform -n "transform106" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform106";
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
createNode transform -n "polySurface9" -p "polySurface2";
createNode transform -n "transform105" -p "polySurface9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform105";
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
createNode transform -n "polySurface10" -p "polySurface2";
createNode transform -n "transform104" -p "polySurface10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform104";
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
createNode transform -n "polySurface11" -p "polySurface2";
createNode transform -n "transform103" -p "polySurface11";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform103";
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
createNode transform -n "polySurface12" -p "polySurface2";
createNode transform -n "transform102" -p "polySurface12";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform102";
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
createNode transform -n "polySurface13" -p "polySurface2";
createNode transform -n "transform101" -p "polySurface13";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform101";
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
createNode transform -n "polySurface14" -p "polySurface2";
createNode transform -n "transform100" -p "polySurface14";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform100";
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
createNode transform -n "polySurface15" -p "polySurface2";
createNode transform -n "transform99" -p "polySurface15";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform99";
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
createNode transform -n "polySurface16" -p "polySurface2";
createNode transform -n "transform98" -p "polySurface16";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform98";
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
createNode transform -n "polySurface17" -p "polySurface2";
createNode transform -n "transform97" -p "polySurface17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform97";
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
createNode transform -n "polySurface18" -p "polySurface2";
createNode transform -n "transform96" -p "polySurface18";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform96";
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
createNode transform -n "polySurface19" -p "polySurface2";
createNode transform -n "transform95" -p "polySurface19";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform95";
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
createNode transform -n "polySurface20" -p "polySurface2";
createNode transform -n "transform94" -p "polySurface20";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform94";
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
createNode transform -n "polySurface21" -p "polySurface2";
createNode transform -n "transform93" -p "polySurface21";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform93";
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
createNode transform -n "polySurface22" -p "polySurface2";
createNode transform -n "transform92" -p "polySurface22";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform92";
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
createNode transform -n "polySurface23" -p "polySurface2";
createNode transform -n "transform91" -p "polySurface23";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform91";
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
createNode transform -n "polySurface24" -p "polySurface2";
createNode transform -n "transform90" -p "polySurface24";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform90";
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
createNode transform -n "polySurface25" -p "polySurface2";
createNode transform -n "transform89" -p "polySurface25";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform89";
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
createNode transform -n "polySurface26" -p "polySurface2";
createNode transform -n "transform88" -p "polySurface26";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform88";
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
createNode transform -n "polySurface27" -p "polySurface2";
createNode transform -n "transform87" -p "polySurface27";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform87";
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
createNode transform -n "polySurface28" -p "polySurface2";
createNode transform -n "transform86" -p "polySurface28";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape28" -p "transform86";
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
createNode transform -n "polySurface29" -p "polySurface2";
createNode transform -n "transform85" -p "polySurface29";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform85";
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
createNode transform -n "polySurface30" -p "polySurface2";
createNode transform -n "transform84" -p "polySurface30";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape30" -p "transform84";
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
createNode transform -n "polySurface31" -p "polySurface2";
createNode transform -n "transform83" -p "polySurface31";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape31" -p "transform83";
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
createNode transform -n "polySurface32" -p "polySurface2";
createNode transform -n "transform82" -p "polySurface32";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape32" -p "transform82";
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
createNode transform -n "polySurface33" -p "polySurface2";
createNode transform -n "transform81" -p "polySurface33";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform81";
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
createNode transform -n "polySurface34" -p "polySurface2";
createNode transform -n "transform80" -p "polySurface34";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform80";
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
createNode transform -n "polySurface35" -p "polySurface2";
createNode transform -n "transform79" -p "polySurface35";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform79";
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
createNode transform -n "polySurface36" -p "polySurface2";
createNode transform -n "transform78" -p "polySurface36";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform78";
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
createNode transform -n "polySurface37" -p "polySurface2";
createNode transform -n "transform77" -p "polySurface37";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape37" -p "transform77";
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
createNode transform -n "polySurface38" -p "polySurface2";
createNode transform -n "transform76" -p "polySurface38";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape38" -p "transform76";
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
createNode transform -n "polySurface39" -p "polySurface2";
createNode transform -n "transform75" -p "polySurface39";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape39" -p "transform75";
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
createNode transform -n "polySurface40" -p "polySurface2";
createNode transform -n "transform74" -p "polySurface40";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape40" -p "transform74";
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
createNode transform -n "polySurface41" -p "polySurface2";
createNode transform -n "transform73" -p "polySurface41";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape41" -p "transform73";
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
createNode transform -n "polySurface42" -p "polySurface2";
createNode transform -n "transform72" -p "polySurface42";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape42" -p "transform72";
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
createNode transform -n "polySurface43" -p "polySurface2";
createNode transform -n "transform71" -p "polySurface43";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape43" -p "transform71";
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
createNode transform -n "polySurface44" -p "polySurface2";
createNode transform -n "transform70" -p "polySurface44";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape44" -p "transform70";
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
createNode transform -n "transform69" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform69";
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
createNode transform -n "polySurface45";
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "polySurface46" -p "polySurface45";
createNode transform -n "transform154" -p "polySurface46";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape46" -p "transform154";
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
createNode transform -n "polySurface47" -p "polySurface45";
createNode transform -n "transform153" -p "polySurface47";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape47" -p "transform153";
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
createNode transform -n "polySurface48" -p "polySurface45";
createNode transform -n "transform152" -p "polySurface48";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape48" -p "transform152";
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
createNode transform -n "polySurface49" -p "polySurface45";
createNode transform -n "transform151" -p "polySurface49";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape49" -p "transform151";
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
createNode transform -n "polySurface50" -p "polySurface45";
createNode transform -n "transform150" -p "polySurface50";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape50" -p "transform150";
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
createNode transform -n "polySurface51" -p "polySurface45";
createNode transform -n "transform149" -p "polySurface51";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape51" -p "transform149";
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
createNode transform -n "polySurface52" -p "polySurface45";
createNode transform -n "transform148" -p "polySurface52";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape52" -p "transform148";
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
createNode transform -n "polySurface53" -p "polySurface45";
createNode transform -n "transform147" -p "polySurface53";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape53" -p "transform147";
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
createNode transform -n "polySurface54" -p "polySurface45";
createNode transform -n "transform146" -p "polySurface54";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape54" -p "transform146";
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
createNode transform -n "polySurface55" -p "polySurface45";
createNode transform -n "transform145" -p "polySurface55";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape55" -p "transform145";
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
createNode transform -n "polySurface56" -p "polySurface45";
createNode transform -n "transform144" -p "polySurface56";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape56" -p "transform144";
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
createNode transform -n "polySurface57" -p "polySurface45";
createNode transform -n "transform143" -p "polySurface57";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape57" -p "transform143";
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
createNode transform -n "polySurface58" -p "polySurface45";
createNode transform -n "transform142" -p "polySurface58";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape58" -p "transform142";
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
createNode transform -n "polySurface59" -p "polySurface45";
createNode transform -n "transform141" -p "polySurface59";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape59" -p "transform141";
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
createNode transform -n "polySurface60" -p "polySurface45";
createNode transform -n "transform140" -p "polySurface60";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape60" -p "transform140";
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
createNode transform -n "polySurface61" -p "polySurface45";
createNode transform -n "transform139" -p "polySurface61";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape61" -p "transform139";
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
createNode transform -n "polySurface62" -p "polySurface45";
createNode transform -n "transform138" -p "polySurface62";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape62" -p "transform138";
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
createNode transform -n "polySurface63" -p "polySurface45";
createNode transform -n "transform137" -p "polySurface63";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape63" -p "transform137";
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
createNode transform -n "polySurface64" -p "polySurface45";
createNode transform -n "transform136" -p "polySurface64";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape64" -p "transform136";
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
createNode transform -n "polySurface65" -p "polySurface45";
createNode transform -n "transform135" -p "polySurface65";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape65" -p "transform135";
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
createNode transform -n "polySurface66" -p "polySurface45";
createNode transform -n "transform134" -p "polySurface66";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape66" -p "transform134";
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
createNode transform -n "polySurface67" -p "polySurface45";
createNode transform -n "transform133" -p "polySurface67";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape67" -p "transform133";
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
createNode transform -n "polySurface68" -p "polySurface45";
createNode transform -n "transform132" -p "polySurface68";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape68" -p "transform132";
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
createNode transform -n "polySurface69" -p "polySurface45";
createNode transform -n "transform131" -p "polySurface69";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape69" -p "transform131";
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
createNode transform -n "polySurface70" -p "polySurface45";
createNode transform -n "transform130" -p "polySurface70";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape70" -p "transform130";
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
createNode transform -n "polySurface71" -p "polySurface45";
createNode transform -n "transform129" -p "polySurface71";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape71" -p "transform129";
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
createNode transform -n "polySurface72" -p "polySurface45";
createNode transform -n "transform128" -p "polySurface72";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape72" -p "transform128";
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
createNode transform -n "polySurface73" -p "polySurface45";
createNode transform -n "transform127" -p "polySurface73";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape73" -p "transform127";
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
createNode transform -n "polySurface74" -p "polySurface45";
createNode transform -n "transform126" -p "polySurface74";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape74" -p "transform126";
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
createNode transform -n "polySurface75" -p "polySurface45";
createNode transform -n "transform125" -p "polySurface75";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape75" -p "transform125";
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
createNode transform -n "polySurface76" -p "polySurface45";
createNode transform -n "transform124" -p "polySurface76";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape76" -p "transform124";
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
createNode transform -n "polySurface77" -p "polySurface45";
createNode transform -n "transform123" -p "polySurface77";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape77" -p "transform123";
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
createNode transform -n "polySurface78" -p "polySurface45";
createNode transform -n "transform122" -p "polySurface78";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape78" -p "transform122";
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
createNode transform -n "polySurface79" -p "polySurface45";
createNode transform -n "transform121" -p "polySurface79";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape79" -p "transform121";
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
createNode transform -n "polySurface80" -p "polySurface45";
createNode transform -n "transform120" -p "polySurface80";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape80" -p "transform120";
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
createNode transform -n "polySurface81" -p "polySurface45";
createNode transform -n "transform119" -p "polySurface81";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape81" -p "transform119";
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
createNode transform -n "polySurface82" -p "polySurface45";
createNode transform -n "transform118" -p "polySurface82";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape82" -p "transform118";
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
createNode transform -n "polySurface83" -p "polySurface45";
createNode transform -n "transform117" -p "polySurface83";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape83" -p "transform117";
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
createNode transform -n "polySurface84" -p "polySurface45";
createNode transform -n "transform116" -p "polySurface84";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape84" -p "transform116";
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
createNode transform -n "polySurface85" -p "polySurface45";
createNode transform -n "transform115" -p "polySurface85";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape85" -p "transform115";
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
createNode transform -n "polySurface86" -p "polySurface45";
createNode transform -n "transform114" -p "polySurface86";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape86" -p "transform114";
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
createNode transform -n "polySurface87" -p "polySurface45";
createNode transform -n "transform113" -p "polySurface87";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape87" -p "transform113";
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
createNode transform -n "transform112" -p "polySurface45";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape45" -p "transform112";
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
createNode transform -n "polySurface88";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 7 7 7 ;
createNode mesh -n "polySurfaceShape88" -p "polySurface88";
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
createNode polyCube -n "F___Stairs_1:polyCube1";
	setAttr ".w" 24;
	setAttr ".h" 0.5;
	setAttr ".d" 21;
	setAttr ".sw" 16;
	setAttr ".sd" 14;
	setAttr ".cuv" 4;
createNode deleteComponent -n "F___Stairs_1:deleteComponent1";
	setAttr ".dc" -type "componentList" 4 "f[128:129]" "f[144:147]" "f[162:163]" "f[178:179]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent2";
	setAttr ".dc" -type "componentList" 9 "f[28]" "f[43:44]" "f[59]" "f[73:75]" "f[87:89]" "f[103]" "f[118:119]" "f[130:132]" "f[142]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent3";
	setAttr ".dc" -type "componentList" 18 "f[20:21]" "f[31:36]" "f[45:51]" "f[60:66]" "f[73:79]" "f[86:92]" "f[101:106]" "f[115:116]" "f[309:310]" "f[325:331]" "f[341:347]" "f[357:363]" "f[373:379]" "f[389:395]" "f[405:411]" "f[421:426]" "f[441:442]" "f[472:479]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent4";
	setAttr ".dc" -type "componentList" 6 "f[0:7]" "f[16:21]" "f[29:30]" "f[333:334]" "f[343:348]" "f[376]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent5";
	setAttr ".dc" -type "componentList" 7 "f[21]" "f[29]" "f[272]" "f[281]" "f[290]" "f[299]" "f[308]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent6";
	setAttr ".dc" -type "componentList" 10 "f[0:1]" "f[8:9]" "f[15:16]" "f[21:22]" "f[28]" "f[286:287]" "f[294:295]" "f[302:303]" "f[310:311]" "f[318:319]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent7";
	setAttr ".dc" -type "componentList" 8 "f[0:1]" "f[6:7]" "f[11]" "f[15]" "f[283:284]" "f[289:290]" "f[295:296]" "f[301:302]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent8";
	setAttr ".dc" -type "componentList" 3 "f[0]" "f[285]" "f[289]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[231:233]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent10";
	setAttr ".dc" -type "componentList" 2 "f[201:202]" "f[217:218]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent11";
	setAttr ".dc" -type "componentList" 12 "f[12]" "f[16]" "f[21:22]" "f[29]" "f[35:37]" "f[42:44]" "f[53]" "f[66:67]" "f[78:80]" "f[93:94]" "f[109]" "f[125]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent12";
	setAttr ".dc" -type "componentList" 8 "f[76:83]" "f[90:98]" "f[105:113]" "f[120:129]" "f[136:145]" "f[152:161]" "f[168:177]" "f[262:264]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent13";
	setAttr ".dc" -type "componentList" 3 "f[64:69]" "f[117:125]" "f[196]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent14";
	setAttr ".dc" -type "componentList" 3 "f[54:58]" "f[118:124]" "f[181]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent15";
	setAttr ".dc" -type "componentList" 5 "f[34:36]" "f[42:46]" "f[118:123]" "f[127:132]" "f[169:170]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent16";
	setAttr ".dc" -type "componentList" 3 "f[30]" "f[117:120]" "f[149]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent17";
	setAttr ".dc" -type "componentList" 4 "f[25]" "f[122:123]" "f[128:129]" "f[144:145]";
createNode deleteComponent -n "F___Stairs_1:deleteComponent18";
	setAttr ".dc" -type "componentList" 3 "f[128]" "f[132]" "f[139:140]";
createNode polyBridgeEdge -n "F___Stairs_1:polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polyBridgeEdge -n "F___Stairs_1:polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[43]" "e[115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 54;
	setAttr ".sv2" 139;
createNode polyBridgeEdge -n "F___Stairs_1:polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[44]" "e[116]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 55;
	setAttr ".sv2" 140;
createNode polyBridgeEdge -n "F___Stairs_1:polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[60]" "e[103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 75;
	setAttr ".sv2" 124;
createNode polyBridgeEdge -n "F___Stairs_1:polyBridgeEdge5";
	setAttr ".ics" -type "componentList" 2 "e[61]" "e[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 76;
	setAttr ".sv2" 125;
createNode polyBridgeEdge -n "F___Stairs_1:polyBridgeEdge6";
	setAttr ".ics" -type "componentList" 4 "e[209]" "e[218]" "e[274]" "e[281]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 74;
	setAttr ".sv2" 141;
createNode polyBridgeEdge -n "F___Stairs_1:polyBridgeEdge7";
	setAttr ".ics" -type "componentList" 34 "e[9]" "e[16:17]" "e[21:22]" "e[33]" "e[38:39]" "e[45]" "e[117]" "e[123:124]" "e[128]" "e[139:140]" "e[145:146]" "e[153]" "e[164]" "e[168]" "e[172]" "e[176]" "e[180]" "e[185]" "e[192]" "e[197]" "e[201]" "e[210]" "e[219]" "e[275]" "e[282]" "e[288]" "e[294]" "e[298]" "e[303]" "e[310]" "e[315]" "e[319]" "e[323]" "e[327]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 4;
	setAttr ".sv2" 126;
createNode polyBridgeEdge -n "F___Stairs_1:polyBridgeEdge8";
	setAttr ".ics" -type "componentList" 38 "e[12]" "e[20]" "e[31:32]" "e[36:37]" "e[50]" "e[56:57]" "e[64]" "e[107]" "e[113:114]" "e[122]" "e[131:132]" "e[137:138]" "e[149]" "e[156]" "e[175]" "e[179]" "e[184]" "e[191]" "e[196]" "e[200]" "e[206]" "e[215]" "e[222]" "e[229]" "e[236]" "e[243]" "e[257]" "e[264]" "e[271]" "e[278]" "e[287]" "e[293]" "e[297]" "e[302]" "e[309]" "e[314]" "e[318]" "e[322]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 100;
	setAttr ".sv2" 189;
createNode polyCube -n "F___Stairs_1:polyCube2";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 7.5;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_1:polyCube3";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 3.25;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_1:polyCube4";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 4.75;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_1:polyCube5";
	setAttr ".w" 9;
	setAttr ".h" 0.5;
	setAttr ".d" 0.25;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_1:polyCube6";
	setAttr ".w" 1.75;
	setAttr ".h" 0.5;
	setAttr ".d" 0.25;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_1:polyCube7";
	setAttr ".w" 3.25;
	setAttr ".h" 0.5;
	setAttr ".d" 0.25;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_1:polyCube8";
	setAttr ".w" 4.5;
	setAttr ".h" 0.5;
	setAttr ".d" 0.25;
	setAttr ".cuv" 4;
createNode script -n "F___Stairs_1:uiConfigurationScriptNode";
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
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
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
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "F___Stairs_1:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyUnite -n "polyUnite1";
	setAttr -s 33 ".ip";
	setAttr -s 33 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:431]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
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
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:623]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 16 "f[0:36]" "f[39:43]" "f[46:48]" "f[93:95]" "f[98:138]" "f[180:299]" "f[304:339]" "f[344:361]" "f[366:383]" "f[388:405]" "f[410:427]" "f[444:445]" "f[447:499]" "f[501:521]" "f[540:545]" "f[552:623]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 7 "f[94:95]" "f[99]" "f[103]" "f[107]" "f[111]" "f[128]" "f[147:150]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[140]";
createNode polyCube -n "F___Stairs_2:polyCube1";
	setAttr ".w" 24;
	setAttr ".h" 0.5;
	setAttr ".d" 21;
	setAttr ".sw" 16;
	setAttr ".sd" 14;
	setAttr ".cuv" 4;
createNode deleteComponent -n "F___Stairs_2:deleteComponent1";
	setAttr ".dc" -type "componentList" 4 "f[128:129]" "f[144:147]" "f[162:163]" "f[178:179]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent2";
	setAttr ".dc" -type "componentList" 9 "f[28]" "f[43:44]" "f[59]" "f[73:75]" "f[87:89]" "f[103]" "f[118:119]" "f[130:132]" "f[142]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent3";
	setAttr ".dc" -type "componentList" 18 "f[20:21]" "f[31:36]" "f[45:51]" "f[60:66]" "f[73:79]" "f[86:92]" "f[101:106]" "f[115:116]" "f[309:310]" "f[325:331]" "f[341:347]" "f[357:363]" "f[373:379]" "f[389:395]" "f[405:411]" "f[421:426]" "f[441:442]" "f[472:479]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent4";
	setAttr ".dc" -type "componentList" 6 "f[0:7]" "f[16:21]" "f[29:30]" "f[333:334]" "f[343:348]" "f[376]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent5";
	setAttr ".dc" -type "componentList" 7 "f[21]" "f[29]" "f[272]" "f[281]" "f[290]" "f[299]" "f[308]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent6";
	setAttr ".dc" -type "componentList" 10 "f[0:1]" "f[8:9]" "f[15:16]" "f[21:22]" "f[28]" "f[286:287]" "f[294:295]" "f[302:303]" "f[310:311]" "f[318:319]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent7";
	setAttr ".dc" -type "componentList" 8 "f[0:1]" "f[6:7]" "f[11]" "f[15]" "f[283:284]" "f[289:290]" "f[295:296]" "f[301:302]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent8";
	setAttr ".dc" -type "componentList" 3 "f[0]" "f[285]" "f[289]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[231:233]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent10";
	setAttr ".dc" -type "componentList" 2 "f[201:202]" "f[217:218]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent11";
	setAttr ".dc" -type "componentList" 12 "f[12]" "f[16]" "f[21:22]" "f[29]" "f[35:37]" "f[42:44]" "f[53]" "f[66:67]" "f[78:80]" "f[93:94]" "f[109]" "f[125]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent12";
	setAttr ".dc" -type "componentList" 8 "f[76:83]" "f[90:98]" "f[105:113]" "f[120:129]" "f[136:145]" "f[152:161]" "f[168:177]" "f[262:264]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent13";
	setAttr ".dc" -type "componentList" 3 "f[64:69]" "f[117:125]" "f[196]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent14";
	setAttr ".dc" -type "componentList" 3 "f[54:58]" "f[118:124]" "f[181]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent15";
	setAttr ".dc" -type "componentList" 5 "f[34:36]" "f[42:46]" "f[118:123]" "f[127:132]" "f[169:170]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent16";
	setAttr ".dc" -type "componentList" 3 "f[30]" "f[117:120]" "f[149]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent17";
	setAttr ".dc" -type "componentList" 4 "f[25]" "f[122:123]" "f[128:129]" "f[144:145]";
createNode deleteComponent -n "F___Stairs_2:deleteComponent18";
	setAttr ".dc" -type "componentList" 3 "f[128]" "f[132]" "f[139:140]";
createNode polyBridgeEdge -n "F___Stairs_2:polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polyBridgeEdge -n "F___Stairs_2:polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[43]" "e[115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 54;
	setAttr ".sv2" 139;
createNode polyBridgeEdge -n "F___Stairs_2:polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[44]" "e[116]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 55;
	setAttr ".sv2" 140;
createNode polyBridgeEdge -n "F___Stairs_2:polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[60]" "e[103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 75;
	setAttr ".sv2" 124;
createNode polyBridgeEdge -n "F___Stairs_2:polyBridgeEdge5";
	setAttr ".ics" -type "componentList" 2 "e[61]" "e[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 76;
	setAttr ".sv2" 125;
createNode polyBridgeEdge -n "F___Stairs_2:polyBridgeEdge6";
	setAttr ".ics" -type "componentList" 4 "e[209]" "e[218]" "e[274]" "e[281]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 74;
	setAttr ".sv2" 141;
createNode polyBridgeEdge -n "F___Stairs_2:polyBridgeEdge7";
	setAttr ".ics" -type "componentList" 34 "e[9]" "e[16:17]" "e[21:22]" "e[33]" "e[38:39]" "e[45]" "e[117]" "e[123:124]" "e[128]" "e[139:140]" "e[145:146]" "e[153]" "e[164]" "e[168]" "e[172]" "e[176]" "e[180]" "e[185]" "e[192]" "e[197]" "e[201]" "e[210]" "e[219]" "e[275]" "e[282]" "e[288]" "e[294]" "e[298]" "e[303]" "e[310]" "e[315]" "e[319]" "e[323]" "e[327]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 4;
	setAttr ".sv2" 126;
createNode polyBridgeEdge -n "F___Stairs_2:polyBridgeEdge8";
	setAttr ".ics" -type "componentList" 38 "e[12]" "e[20]" "e[31:32]" "e[36:37]" "e[50]" "e[56:57]" "e[64]" "e[107]" "e[113:114]" "e[122]" "e[131:132]" "e[137:138]" "e[149]" "e[156]" "e[175]" "e[179]" "e[184]" "e[191]" "e[196]" "e[200]" "e[206]" "e[215]" "e[222]" "e[229]" "e[236]" "e[243]" "e[257]" "e[264]" "e[271]" "e[278]" "e[287]" "e[293]" "e[297]" "e[302]" "e[309]" "e[314]" "e[318]" "e[322]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 3 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 100;
	setAttr ".sv2" 189;
createNode polyCube -n "F___Stairs_2:polyCube2";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 7.5;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_2:polyCube3";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 3.25;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_2:polyCube4";
	setAttr ".w" 0.25;
	setAttr ".h" 0.5;
	setAttr ".d" 4.75;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_2:polyCube5";
	setAttr ".w" 9;
	setAttr ".h" 0.5;
	setAttr ".d" 0.25;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_2:polyCube6";
	setAttr ".w" 1.75;
	setAttr ".h" 0.5;
	setAttr ".d" 0.25;
	setAttr ".cuv" 4;
createNode polyCube -n "F___Stairs_2:polyCube7";
	setAttr ".w" 3.25;
	setAttr ".h" 0.5;
	setAttr ".d" 0.25;
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 8 "f[0:8]" "f[131:138]" "f[180:181]" "f[218:219]" "f[238:239]" "f[258:259]" "f[278:279]" "f[298:299]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 5 "f[292:293]" "f[315]" "f[337]" "f[359]" "f[381]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 8 "f[52:69]" "f[122]" "f[271]" "f[312]" "f[333]" "f[354]" "f[375]" "f[396]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 6 "f[28:29]" "f[35:36]" "f[64:65]" "f[69:70]" "f[106:119]" "f[132:143]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 5 "f[36:38]" "f[42:44]" "f[48:50]" "f[54:56]" "f[96:103]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 5 "e[51:56]" "e[153]" "e[157]" "e[161]" "e[165]";
	setAttr ".ix" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 1.2246467991473532e-16 0 -1 0
		 16.535444379083266 0.25 4.4999999999999973 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 53;
	setAttr ".sv2" 69;
createNode polyUnite -n "polyUnite2";
	setAttr -s 35 ".ip";
	setAttr -s 35 ".im";
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:347]";
createNode groupId -n "groupId81";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId107";
	setAttr ".ihi" 0;
createNode groupId -n "groupId108";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	setAttr ".ihi" 0;
createNode groupId -n "groupId111";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	setAttr ".ihi" 0;
createNode groupId -n "groupId114";
	setAttr ".ihi" 0;
createNode groupId -n "groupId115";
	setAttr ".ihi" 0;
createNode groupId -n "groupId116";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId117";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	setAttr ".ihi" 0;
createNode groupId -n "groupId119";
	setAttr ".ihi" 0;
createNode groupId -n "groupId120";
	setAttr ".ihi" 0;
createNode groupId -n "groupId121";
	setAttr ".ihi" 0;
createNode groupId -n "groupId122";
	setAttr ".ihi" 0;
createNode groupId -n "groupId123";
	setAttr ".ihi" 0;
createNode groupId -n "groupId124";
	setAttr ".ihi" 0;
createNode groupId -n "groupId125";
	setAttr ".ihi" 0;
createNode groupId -n "groupId126";
	setAttr ".ihi" 0;
createNode groupId -n "groupId127";
	setAttr ".ihi" 0;
createNode groupId -n "groupId128";
	setAttr ".ihi" 0;
createNode groupId -n "groupId129";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	setAttr ".ihi" 0;
createNode groupId -n "groupId131";
	setAttr ".ihi" 0;
createNode groupId -n "groupId132";
	setAttr ".ihi" 0;
createNode groupId -n "groupId133";
	setAttr ".ihi" 0;
createNode groupId -n "groupId134";
	setAttr ".ihi" 0;
createNode groupId -n "groupId135";
	setAttr ".ihi" 0;
createNode groupId -n "groupId136";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:686]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 42;
	setAttr -s 42 ".out";
createNode groupId -n "groupId137";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:108]";
createNode groupId -n "groupId138";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId139";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId140";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId141";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId142";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId143";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId144";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId145";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId146";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId147";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId148";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId149";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId150";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId151";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:347]";
createNode groupId -n "groupId152";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId153";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId154";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId155";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId156";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId157";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId158";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId159";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId160";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId161";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId162";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId163";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId164";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId165";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId166";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId167";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId168";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId169";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId170";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId171";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId172";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId173";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId174";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId175";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId176";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId177";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId178";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyUnite -n "polyUnite3";
	setAttr -s 42 ".ip";
	setAttr -s 42 ".im";
createNode groupId -n "groupId179";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:686]";
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 42;
	setAttr -s 42 ".out";
createNode groupId -n "groupId180";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 218 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]" "f[176]" "f[177]" "f[178]" "f[179]" "f[180]" "f[181]" "f[182]" "f[183]" "f[184]" "f[185]" "f[186]" "f[187]" "f[188]" "f[189]" "f[190]" "f[191]" "f[192]" "f[193]" "f[194]" "f[195]" "f[196]" "f[197]" "f[198]" "f[199]" "f[200]" "f[201]" "f[202]" "f[203]" "f[204]" "f[205]" "f[206]" "f[207]" "f[208]" "f[209]" "f[210]" "f[211]" "f[212]" "f[213]" "f[214]" "f[215]" "f[216]" "f[217]";
createNode groupId -n "groupId181";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId182";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId183";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0]" "f[1]";
createNode groupId -n "groupId184";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId185";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId186";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId187";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0]" "f[1]";
createNode groupId -n "groupId188";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId189";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId190";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId191";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId192";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId193";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId194";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 696 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]" "f[176]" "f[177]" "f[178]" "f[179]" "f[180]" "f[181]" "f[182]" "f[183]" "f[184]" "f[185]" "f[186]" "f[187]" "f[188]" "f[189]" "f[190]" "f[191]" "f[192]" "f[193]" "f[194]" "f[195]" "f[196]" "f[197]" "f[198]" "f[199]" "f[200]" "f[201]" "f[202]" "f[203]" "f[204]" "f[205]" "f[206]" "f[207]" "f[208]" "f[209]" "f[210]" "f[211]" "f[212]" "f[213]" "f[214]" "f[215]" "f[216]" "f[217]" "f[218]" "f[219]" "f[220]" "f[221]" "f[222]" "f[223]" "f[224]" "f[225]" "f[226]" "f[227]" "f[228]" "f[229]" "f[230]" "f[231]" "f[232]" "f[233]" "f[234]" "f[235]" "f[236]" "f[237]" "f[238]" "f[239]" "f[240]" "f[241]" "f[242]" "f[243]" "f[244]" "f[245]" "f[246]" "f[247]" "f[248]" "f[249]" "f[250]" "f[251]" "f[252]" "f[253]" "f[254]" "f[255]" "f[256]" "f[257]" "f[258]" "f[259]" "f[260]" "f[261]" "f[262]" "f[263]" "f[264]" "f[265]" "f[266]" "f[267]" "f[268]" "f[269]" "f[270]" "f[271]" "f[272]" "f[273]" "f[274]" "f[275]" "f[276]" "f[277]" "f[278]" "f[279]" "f[280]" "f[281]" "f[282]" "f[283]" "f[284]" "f[285]" "f[286]" "f[287]" "f[288]" "f[289]" "f[290]" "f[291]" "f[292]" "f[293]" "f[294]" "f[295]" "f[296]" "f[297]" "f[298]" "f[299]" "f[300]" "f[301]" "f[302]" "f[303]" "f[304]" "f[305]" "f[306]" "f[307]" "f[308]" "f[309]" "f[310]" "f[311]" "f[312]" "f[313]" "f[314]" "f[315]" "f[316]" "f[317]" "f[318]" "f[319]" "f[320]" "f[321]" "f[322]" "f[323]" "f[324]" "f[325]" "f[326]" "f[327]" "f[328]" "f[329]" "f[330]" "f[331]" "f[332]" "f[333]" "f[334]" "f[335]" "f[336]" "f[337]" "f[338]" "f[339]" "f[340]" "f[341]" "f[342]" "f[343]" "f[344]" "f[345]" "f[346]" "f[347]" "f[348]" "f[349]" "f[350]" "f[351]" "f[352]" "f[353]" "f[354]" "f[355]" "f[356]" "f[357]" "f[358]" "f[359]" "f[360]" "f[361]" "f[362]" "f[363]" "f[364]" "f[365]" "f[366]" "f[367]" "f[368]" "f[369]" "f[370]" "f[371]" "f[372]" "f[373]" "f[374]" "f[375]" "f[376]" "f[377]" "f[378]" "f[379]" "f[380]" "f[381]" "f[382]" "f[383]" "f[384]" "f[385]" "f[386]" "f[387]" "f[388]" "f[389]" "f[390]" "f[391]" "f[392]" "f[393]" "f[394]" "f[395]" "f[396]" "f[397]" "f[398]" "f[399]" "f[400]" "f[401]" "f[402]" "f[403]" "f[404]" "f[405]" "f[406]" "f[407]" "f[408]" "f[409]" "f[410]" "f[411]" "f[412]" "f[413]" "f[414]" "f[415]" "f[416]" "f[417]" "f[418]" "f[419]" "f[420]" "f[421]" "f[422]" "f[423]" "f[424]" "f[425]" "f[426]" "f[427]" "f[428]" "f[429]" "f[430]" "f[431]" "f[432]" "f[433]" "f[434]" "f[435]" "f[436]" "f[437]" "f[438]" "f[439]" "f[440]" "f[441]" "f[442]" "f[443]" "f[444]" "f[445]" "f[446]" "f[447]" "f[448]" "f[449]" "f[450]" "f[451]" "f[452]" "f[453]" "f[454]" "f[455]" "f[456]" "f[457]" "f[458]" "f[459]" "f[460]" "f[461]" "f[462]" "f[463]" "f[464]" "f[465]" "f[466]" "f[467]" "f[468]" "f[469]" "f[470]" "f[471]" "f[472]" "f[473]" "f[474]" "f[475]" "f[476]" "f[477]" "f[478]" "f[479]" "f[480]" "f[481]" "f[482]" "f[483]" "f[484]" "f[485]" "f[486]" "f[487]" "f[488]" "f[489]" "f[490]" "f[491]" "f[492]" "f[493]" "f[494]" "f[495]" "f[496]" "f[497]" "f[498]" "f[499]" "f[500]" "f[501]" "f[502]" "f[503]" "f[504]" "f[505]" "f[506]" "f[507]" "f[508]" "f[509]" "f[510]" "f[511]" "f[512]" "f[513]" "f[514]" "f[515]" "f[516]" "f[517]" "f[518]" "f[519]" "f[520]" "f[521]" "f[522]" "f[523]" "f[524]" "f[525]" "f[526]" "f[527]" "f[528]" "f[529]" "f[530]" "f[531]" "f[532]" "f[533]" "f[534]" "f[535]" "f[536]" "f[537]" "f[538]" "f[539]" "f[540]" "f[541]" "f[542]" "f[543]" "f[544]" "f[545]" "f[546]" "f[547]" "f[548]" "f[549]" "f[550]" "f[551]" "f[552]" "f[553]" "f[554]" "f[555]" "f[556]" "f[557]" "f[558]" "f[559]" "f[560]" "f[561]" "f[562]" "f[563]" "f[564]" "f[565]" "f[566]" "f[567]" "f[568]" "f[569]" "f[570]" "f[571]" "f[572]" "f[573]" "f[574]" "f[575]" "f[576]" "f[577]" "f[578]" "f[579]" "f[580]" "f[581]" "f[582]" "f[583]" "f[584]" "f[585]" "f[586]" "f[587]" "f[588]" "f[589]" "f[590]" "f[591]" "f[592]" "f[593]" "f[594]" "f[595]" "f[596]" "f[597]" "f[598]" "f[599]" "f[600]" "f[601]" "f[602]" "f[603]" "f[604]" "f[605]" "f[606]" "f[607]" "f[608]" "f[609]" "f[610]" "f[611]" "f[612]" "f[613]" "f[614]" "f[615]" "f[616]" "f[617]" "f[618]" "f[619]" "f[620]" "f[621]" "f[622]" "f[623]" "f[624]" "f[625]" "f[626]" "f[627]" "f[628]" "f[629]" "f[630]" "f[631]" "f[632]" "f[633]" "f[634]" "f[635]" "f[636]" "f[637]" "f[638]" "f[639]" "f[640]" "f[641]" "f[642]" "f[643]" "f[644]" "f[645]" "f[646]" "f[647]" "f[648]" "f[649]" "f[650]" "f[651]" "f[652]" "f[653]" "f[654]" "f[655]" "f[656]" "f[657]" "f[658]" "f[659]" "f[660]" "f[661]" "f[662]" "f[663]" "f[664]" "f[665]" "f[666]" "f[667]" "f[668]" "f[669]" "f[670]" "f[671]" "f[672]" "f[673]" "f[674]" "f[675]" "f[676]" "f[677]" "f[678]" "f[679]" "f[680]" "f[681]" "f[682]" "f[683]" "f[684]" "f[685]" "f[686]" "f[687]" "f[688]" "f[689]" "f[690]" "f[691]" "f[692]" "f[693]" "f[694]" "f[695]";
createNode groupId -n "groupId195";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId196";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId197";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId198";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId199";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId200";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId201";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId202";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId203";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId204";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts85";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId205";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId206";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts87";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId207";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId208";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId209";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId210";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts91";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId211";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts92";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId212";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId213";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId214";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId215";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts96";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId216";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts97";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId217";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId218";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId219";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts100";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId220";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts101";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId221";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts102";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode polyUnite -n "polyUnite4";
	setAttr -s 42 ".ip";
	setAttr -s 42 ".im";
createNode groupId -n "groupId222";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts103";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1373]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 222 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 222 ".gn";
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
connectAttr "groupParts1.og" "F___Stairs_1:pCubeShape1.i";
connectAttr "groupId1.id" "F___Stairs_1:pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape1.iog.og[0].gco";
connectAttr "groupId2.id" "F___Stairs_1:pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupParts2.og" "F___Stairs_1:pCubeShape2.i";
connectAttr "groupId3.id" "F___Stairs_1:pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape2.iog.og[0].gco";
connectAttr "groupId4.id" "F___Stairs_1:pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "F___Stairs_1:pCubeShape3.i";
connectAttr "groupId5.id" "F___Stairs_1:pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape3.iog.og[0].gco";
connectAttr "groupId6.id" "F___Stairs_1:pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId7.id" "F___Stairs_1:pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape4.iog.og[0].gco";
connectAttr "groupId8.id" "F___Stairs_1:pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId9.id" "F___Stairs_1:pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape5.iog.og[0].gco";
connectAttr "groupId10.id" "F___Stairs_1:pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId11.id" "F___Stairs_1:pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape6.iog.og[0].gco";
connectAttr "groupId12.id" "F___Stairs_1:pCubeShape6.ciog.cog[0].cgid";
connectAttr "groupId13.id" "F___Stairs_1:pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape7.iog.og[0].gco";
connectAttr "groupId14.id" "F___Stairs_1:pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupId15.id" "F___Stairs_1:pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape8.iog.og[0].gco";
connectAttr "groupId16.id" "F___Stairs_1:pCubeShape8.ciog.cog[0].cgid";
connectAttr "groupId17.id" "F___Stairs_1:pCubeShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape9.iog.og[0].gco";
connectAttr "groupId18.id" "F___Stairs_1:pCubeShape9.ciog.cog[0].cgid";
connectAttr "groupId19.id" "F___Stairs_1:pCubeShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape10.iog.og[0].gco"
		;
connectAttr "groupId20.id" "F___Stairs_1:pCubeShape10.ciog.cog[0].cgid";
connectAttr "groupId21.id" "F___Stairs_1:pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape11.iog.og[0].gco"
		;
connectAttr "groupId22.id" "F___Stairs_1:pCubeShape11.ciog.cog[0].cgid";
connectAttr "groupId23.id" "F___Stairs_1:pCubeShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape12.iog.og[0].gco"
		;
connectAttr "groupId24.id" "F___Stairs_1:pCubeShape12.ciog.cog[0].cgid";
connectAttr "groupId25.id" "F___Stairs_1:pCubeShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape13.iog.og[0].gco"
		;
connectAttr "groupId26.id" "F___Stairs_1:pCubeShape13.ciog.cog[0].cgid";
connectAttr "groupId27.id" "F___Stairs_1:pCubeShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape14.iog.og[0].gco"
		;
connectAttr "groupId28.id" "F___Stairs_1:pCubeShape14.ciog.cog[0].cgid";
connectAttr "groupId29.id" "F___Stairs_1:pCubeShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape15.iog.og[0].gco"
		;
connectAttr "groupId30.id" "F___Stairs_1:pCubeShape15.ciog.cog[0].cgid";
connectAttr "groupId31.id" "F___Stairs_1:pCubeShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape16.iog.og[0].gco"
		;
connectAttr "groupId32.id" "F___Stairs_1:pCubeShape16.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "F___Stairs_1:pCubeShape17.i";
connectAttr "groupId33.id" "F___Stairs_1:pCubeShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape17.iog.og[0].gco"
		;
connectAttr "groupId34.id" "F___Stairs_1:pCubeShape17.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "F___Stairs_1:pCubeShape18.i";
connectAttr "groupId35.id" "F___Stairs_1:pCubeShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape18.iog.og[0].gco"
		;
connectAttr "groupId36.id" "F___Stairs_1:pCubeShape18.ciog.cog[0].cgid";
connectAttr "groupId37.id" "F___Stairs_1:pCubeShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape19.iog.og[0].gco"
		;
connectAttr "groupId38.id" "F___Stairs_1:pCubeShape19.ciog.cog[0].cgid";
connectAttr "groupParts6.og" "F___Stairs_1:pCubeShape20.i";
connectAttr "groupId39.id" "F___Stairs_1:pCubeShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape20.iog.og[0].gco"
		;
connectAttr "groupId40.id" "F___Stairs_1:pCubeShape20.ciog.cog[0].cgid";
connectAttr "groupId41.id" "F___Stairs_1:pCubeShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape21.iog.og[0].gco"
		;
connectAttr "groupId42.id" "F___Stairs_1:pCubeShape21.ciog.cog[0].cgid";
connectAttr "groupId43.id" "F___Stairs_1:pCubeShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape22.iog.og[0].gco"
		;
connectAttr "groupId44.id" "F___Stairs_1:pCubeShape22.ciog.cog[0].cgid";
connectAttr "groupId45.id" "F___Stairs_1:pCubeShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape23.iog.og[0].gco"
		;
connectAttr "groupId46.id" "F___Stairs_1:pCubeShape23.ciog.cog[0].cgid";
connectAttr "groupId47.id" "F___Stairs_1:pCubeShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape24.iog.og[0].gco"
		;
connectAttr "groupId48.id" "F___Stairs_1:pCubeShape24.ciog.cog[0].cgid";
connectAttr "groupId49.id" "F___Stairs_1:pCubeShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId50.id" "F___Stairs_1:pCubeShape25.ciog.cog[0].cgid";
connectAttr "groupId51.id" "F___Stairs_1:pCubeShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape26.iog.og[0].gco"
		;
connectAttr "groupId52.id" "F___Stairs_1:pCubeShape26.ciog.cog[0].cgid";
connectAttr "groupParts7.og" "F___Stairs_1:pCubeShape27.i";
connectAttr "groupId53.id" "F___Stairs_1:pCubeShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape27.iog.og[0].gco"
		;
connectAttr "groupId54.id" "F___Stairs_1:pCubeShape27.ciog.cog[0].cgid";
connectAttr "groupId55.id" "F___Stairs_1:pCubeShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape28.iog.og[0].gco"
		;
connectAttr "groupId56.id" "F___Stairs_1:pCubeShape28.ciog.cog[0].cgid";
connectAttr "groupId57.id" "F___Stairs_1:pCubeShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape29.iog.og[0].gco"
		;
connectAttr "groupId58.id" "F___Stairs_1:pCubeShape29.ciog.cog[0].cgid";
connectAttr "groupId59.id" "F___Stairs_1:pCubeShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape30.iog.og[0].gco"
		;
connectAttr "groupId60.id" "F___Stairs_1:pCubeShape30.ciog.cog[0].cgid";
connectAttr "groupId61.id" "F___Stairs_1:pCubeShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape31.iog.og[0].gco"
		;
connectAttr "groupId62.id" "F___Stairs_1:pCubeShape31.ciog.cog[0].cgid";
connectAttr "groupId63.id" "F___Stairs_1:pCubeShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape32.iog.og[0].gco"
		;
connectAttr "groupId64.id" "F___Stairs_1:pCubeShape32.ciog.cog[0].cgid";
connectAttr "groupParts8.og" "F___Stairs_1:pCubeShape33.i";
connectAttr "groupId65.id" "F___Stairs_1:pCubeShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_1:pCubeShape33.iog.og[0].gco"
		;
connectAttr "groupId66.id" "F___Stairs_1:pCubeShape33.ciog.cog[0].cgid";
connectAttr "deleteComponent3.og" "polySurfaceShape1.i";
connectAttr "groupId67.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts10.og" "F___Stairs_2:pCubeShape2.i";
connectAttr "groupId68.id" "F___Stairs_2:pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape2.iog.og[0].gco";
connectAttr "groupId69.id" "F___Stairs_2:pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupParts11.og" "F___Stairs_2:pCubeShape3.i";
connectAttr "groupId70.id" "F___Stairs_2:pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape3.iog.og[0].gco";
connectAttr "groupId71.id" "F___Stairs_2:pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupParts12.og" "F___Stairs_2:pCubeShape17.i";
connectAttr "groupId72.id" "F___Stairs_2:pCubeShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape17.iog.og[0].gco"
		;
connectAttr "groupId73.id" "F___Stairs_2:pCubeShape17.ciog.cog[0].cgid";
connectAttr "groupParts13.og" "F___Stairs_2:pCubeShape18.i";
connectAttr "groupId74.id" "F___Stairs_2:pCubeShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape18.iog.og[0].gco"
		;
connectAttr "groupId75.id" "F___Stairs_2:pCubeShape18.ciog.cog[0].cgid";
connectAttr "groupId76.id" "F___Stairs_2:pCubeShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape19.iog.og[0].gco"
		;
connectAttr "groupId77.id" "F___Stairs_2:pCubeShape19.ciog.cog[0].cgid";
connectAttr "groupId78.id" "F___Stairs_2:pCubeShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape21.iog.og[0].gco"
		;
connectAttr "groupId79.id" "F___Stairs_2:pCubeShape21.ciog.cog[0].cgid";
connectAttr "groupParts14.og" "F___Stairs_2:pCubeShape1.i";
connectAttr "groupId80.id" "F___Stairs_2:pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape1.iog.og[0].gco";
connectAttr "groupId81.id" "F___Stairs_2:pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId82.id" "F___Stairs_2:pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape4.iog.og[0].gco";
connectAttr "groupId83.id" "F___Stairs_2:pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId84.id" "F___Stairs_2:pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape5.iog.og[0].gco";
connectAttr "groupId85.id" "F___Stairs_2:pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId86.id" "F___Stairs_2:pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape6.iog.og[0].gco";
connectAttr "groupId87.id" "F___Stairs_2:pCubeShape6.ciog.cog[0].cgid";
connectAttr "groupId88.id" "F___Stairs_2:pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape7.iog.og[0].gco";
connectAttr "groupId89.id" "F___Stairs_2:pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupId90.id" "F___Stairs_2:pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape8.iog.og[0].gco";
connectAttr "groupId91.id" "F___Stairs_2:pCubeShape8.ciog.cog[0].cgid";
connectAttr "groupId92.id" "F___Stairs_2:pCubeShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape9.iog.og[0].gco";
connectAttr "groupId93.id" "F___Stairs_2:pCubeShape9.ciog.cog[0].cgid";
connectAttr "groupId94.id" "F___Stairs_2:pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape11.iog.og[0].gco"
		;
connectAttr "groupId95.id" "F___Stairs_2:pCubeShape11.ciog.cog[0].cgid";
connectAttr "groupId96.id" "F___Stairs_2:pCubeShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape12.iog.og[0].gco"
		;
connectAttr "groupId97.id" "F___Stairs_2:pCubeShape12.ciog.cog[0].cgid";
connectAttr "groupId98.id" "F___Stairs_2:pCubeShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape13.iog.og[0].gco"
		;
connectAttr "groupId99.id" "F___Stairs_2:pCubeShape13.ciog.cog[0].cgid";
connectAttr "groupId100.id" "F___Stairs_2:pCubeShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape14.iog.og[0].gco"
		;
connectAttr "groupId101.id" "F___Stairs_2:pCubeShape14.ciog.cog[0].cgid";
connectAttr "groupId102.id" "F___Stairs_2:pCubeShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape15.iog.og[0].gco"
		;
connectAttr "groupId103.id" "F___Stairs_2:pCubeShape15.ciog.cog[0].cgid";
connectAttr "groupId104.id" "F___Stairs_2:pCubeShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape16.iog.og[0].gco"
		;
connectAttr "groupId105.id" "F___Stairs_2:pCubeShape16.ciog.cog[0].cgid";
connectAttr "groupParts15.og" "F___Stairs_2:pCubeShape20.i";
connectAttr "groupId106.id" "F___Stairs_2:pCubeShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape20.iog.og[0].gco"
		;
connectAttr "groupId107.id" "F___Stairs_2:pCubeShape20.ciog.cog[0].cgid";
connectAttr "groupId108.id" "F___Stairs_2:pCubeShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape22.iog.og[0].gco"
		;
connectAttr "groupId109.id" "F___Stairs_2:pCubeShape22.ciog.cog[0].cgid";
connectAttr "groupId110.id" "F___Stairs_2:pCubeShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape23.iog.og[0].gco"
		;
connectAttr "groupId111.id" "F___Stairs_2:pCubeShape23.ciog.cog[0].cgid";
connectAttr "groupId112.id" "F___Stairs_2:pCubeShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape24.iog.og[0].gco"
		;
connectAttr "groupId113.id" "F___Stairs_2:pCubeShape24.ciog.cog[0].cgid";
connectAttr "groupId114.id" "F___Stairs_2:pCubeShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId115.id" "F___Stairs_2:pCubeShape25.ciog.cog[0].cgid";
connectAttr "groupParts16.og" "F___Stairs_2:pCubeShape27.i";
connectAttr "groupId116.id" "F___Stairs_2:pCubeShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape27.iog.og[0].gco"
		;
connectAttr "groupId117.id" "F___Stairs_2:pCubeShape27.ciog.cog[0].cgid";
connectAttr "groupId118.id" "F___Stairs_2:pCubeShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape28.iog.og[0].gco"
		;
connectAttr "groupId119.id" "F___Stairs_2:pCubeShape28.ciog.cog[0].cgid";
connectAttr "groupId120.id" "F___Stairs_2:pCubeShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape29.iog.og[0].gco"
		;
connectAttr "groupId121.id" "F___Stairs_2:pCubeShape29.ciog.cog[0].cgid";
connectAttr "groupId122.id" "F___Stairs_2:pCubeShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape30.iog.og[0].gco"
		;
connectAttr "groupId123.id" "F___Stairs_2:pCubeShape30.ciog.cog[0].cgid";
connectAttr "groupId124.id" "F___Stairs_2:pCubeShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape31.iog.og[0].gco"
		;
connectAttr "groupId125.id" "F___Stairs_2:pCubeShape31.ciog.cog[0].cgid";
connectAttr "groupId126.id" "F___Stairs_2:pCubeShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "F___Stairs_2:pCubeShape32.iog.og[0].gco"
		;
connectAttr "groupId127.id" "F___Stairs_2:pCubeShape32.ciog.cog[0].cgid";
connectAttr "groupId128.id" "pCubeShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape22.iog.og[0].gco";
connectAttr "groupId129.id" "pCubeShape22.ciog.cog[0].cgid";
connectAttr "groupId130.id" "pCubeShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape23.iog.og[0].gco";
connectAttr "groupId131.id" "pCubeShape23.ciog.cog[0].cgid";
connectAttr "groupId132.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupId133.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId134.id" "pCubeShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape24.iog.og[0].gco";
connectAttr "groupId135.id" "pCubeShape24.ciog.cog[0].cgid";
connectAttr "groupParts18.og" "polySurfaceShape3.i";
connectAttr "groupId137.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape4.i";
connectAttr "groupId138.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape5.i";
connectAttr "groupId139.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape6.i";
connectAttr "groupId140.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape7.i";
connectAttr "groupId141.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape8.i";
connectAttr "groupId142.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape9.i";
connectAttr "groupId143.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape10.i";
connectAttr "groupId144.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape11.i";
connectAttr "groupId145.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape12.i";
connectAttr "groupId146.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape13.i";
connectAttr "groupId147.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape14.i";
connectAttr "groupId148.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape15.i";
connectAttr "groupId149.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape16.i";
connectAttr "groupId150.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts32.og" "polySurfaceShape17.i";
connectAttr "groupId151.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape18.i";
connectAttr "groupId152.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape19.i";
connectAttr "groupId153.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape20.i";
connectAttr "groupId154.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape21.i";
connectAttr "groupId155.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape22.i";
connectAttr "groupId156.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts38.og" "polySurfaceShape23.i";
connectAttr "groupId157.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupParts39.og" "polySurfaceShape24.i";
connectAttr "groupId158.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts40.og" "polySurfaceShape25.i";
connectAttr "groupId159.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupParts41.og" "polySurfaceShape26.i";
connectAttr "groupId160.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupParts42.og" "polySurfaceShape27.i";
connectAttr "groupId161.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape28.i";
connectAttr "groupId162.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupParts44.og" "polySurfaceShape29.i";
connectAttr "groupId163.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupParts45.og" "polySurfaceShape30.i";
connectAttr "groupId164.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupParts46.og" "polySurfaceShape31.i";
connectAttr "groupId165.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupParts47.og" "polySurfaceShape32.i";
connectAttr "groupId166.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupParts48.og" "polySurfaceShape33.i";
connectAttr "groupId167.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupParts49.og" "polySurfaceShape34.i";
connectAttr "groupId168.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupParts50.og" "polySurfaceShape35.i";
connectAttr "groupId169.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupParts51.og" "polySurfaceShape36.i";
connectAttr "groupId170.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupParts52.og" "polySurfaceShape37.i";
connectAttr "groupId171.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupParts53.og" "polySurfaceShape38.i";
connectAttr "groupId172.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupParts54.og" "polySurfaceShape39.i";
connectAttr "groupId173.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupParts55.og" "polySurfaceShape40.i";
connectAttr "groupId174.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupParts56.og" "polySurfaceShape41.i";
connectAttr "groupId175.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupParts57.og" "polySurfaceShape42.i";
connectAttr "groupId176.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupParts58.og" "polySurfaceShape43.i";
connectAttr "groupId177.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupParts59.og" "polySurfaceShape44.i";
connectAttr "groupId178.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape2.i";
connectAttr "groupId136.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts61.og" "polySurfaceShape46.i";
connectAttr "groupId180.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupParts62.og" "polySurfaceShape47.i";
connectAttr "groupId181.id" "polySurfaceShape47.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape47.iog.og[0].gco";
connectAttr "groupParts63.og" "polySurfaceShape48.i";
connectAttr "groupId182.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupParts64.og" "polySurfaceShape49.i";
connectAttr "groupId183.id" "polySurfaceShape49.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape49.iog.og[0].gco";
connectAttr "groupParts65.og" "polySurfaceShape50.i";
connectAttr "groupId184.id" "polySurfaceShape50.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape50.iog.og[0].gco";
connectAttr "groupParts66.og" "polySurfaceShape51.i";
connectAttr "groupId185.id" "polySurfaceShape51.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape51.iog.og[0].gco";
connectAttr "groupParts67.og" "polySurfaceShape52.i";
connectAttr "groupId186.id" "polySurfaceShape52.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape52.iog.og[0].gco";
connectAttr "groupParts68.og" "polySurfaceShape53.i";
connectAttr "groupId187.id" "polySurfaceShape53.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape53.iog.og[0].gco";
connectAttr "groupParts69.og" "polySurfaceShape54.i";
connectAttr "groupId188.id" "polySurfaceShape54.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape54.iog.og[0].gco";
connectAttr "groupParts70.og" "polySurfaceShape55.i";
connectAttr "groupId189.id" "polySurfaceShape55.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape55.iog.og[0].gco";
connectAttr "groupParts71.og" "polySurfaceShape56.i";
connectAttr "groupId190.id" "polySurfaceShape56.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape56.iog.og[0].gco";
connectAttr "groupParts72.og" "polySurfaceShape57.i";
connectAttr "groupId191.id" "polySurfaceShape57.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape57.iog.og[0].gco";
connectAttr "groupParts73.og" "polySurfaceShape58.i";
connectAttr "groupId192.id" "polySurfaceShape58.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape58.iog.og[0].gco";
connectAttr "groupParts74.og" "polySurfaceShape59.i";
connectAttr "groupId193.id" "polySurfaceShape59.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape59.iog.og[0].gco";
connectAttr "groupParts75.og" "polySurfaceShape60.i";
connectAttr "groupId194.id" "polySurfaceShape60.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape60.iog.og[0].gco";
connectAttr "groupParts76.og" "polySurfaceShape61.i";
connectAttr "groupId195.id" "polySurfaceShape61.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape61.iog.og[0].gco";
connectAttr "groupParts77.og" "polySurfaceShape62.i";
connectAttr "groupId196.id" "polySurfaceShape62.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape62.iog.og[0].gco";
connectAttr "groupParts78.og" "polySurfaceShape63.i";
connectAttr "groupId197.id" "polySurfaceShape63.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape63.iog.og[0].gco";
connectAttr "groupParts79.og" "polySurfaceShape64.i";
connectAttr "groupId198.id" "polySurfaceShape64.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape64.iog.og[0].gco";
connectAttr "groupParts80.og" "polySurfaceShape65.i";
connectAttr "groupId199.id" "polySurfaceShape65.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape65.iog.og[0].gco";
connectAttr "groupParts81.og" "polySurfaceShape66.i";
connectAttr "groupId200.id" "polySurfaceShape66.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape66.iog.og[0].gco";
connectAttr "groupParts82.og" "polySurfaceShape67.i";
connectAttr "groupId201.id" "polySurfaceShape67.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape67.iog.og[0].gco";
connectAttr "groupParts83.og" "polySurfaceShape68.i";
connectAttr "groupId202.id" "polySurfaceShape68.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape68.iog.og[0].gco";
connectAttr "groupParts84.og" "polySurfaceShape69.i";
connectAttr "groupId203.id" "polySurfaceShape69.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape69.iog.og[0].gco";
connectAttr "groupParts85.og" "polySurfaceShape70.i";
connectAttr "groupId204.id" "polySurfaceShape70.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape70.iog.og[0].gco";
connectAttr "groupParts86.og" "polySurfaceShape71.i";
connectAttr "groupId205.id" "polySurfaceShape71.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape71.iog.og[0].gco";
connectAttr "groupParts87.og" "polySurfaceShape72.i";
connectAttr "groupId206.id" "polySurfaceShape72.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape72.iog.og[0].gco";
connectAttr "groupParts88.og" "polySurfaceShape73.i";
connectAttr "groupId207.id" "polySurfaceShape73.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape73.iog.og[0].gco";
connectAttr "groupParts89.og" "polySurfaceShape74.i";
connectAttr "groupId208.id" "polySurfaceShape74.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape74.iog.og[0].gco";
connectAttr "groupParts90.og" "polySurfaceShape75.i";
connectAttr "groupId209.id" "polySurfaceShape75.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape75.iog.og[0].gco";
connectAttr "groupParts91.og" "polySurfaceShape76.i";
connectAttr "groupId210.id" "polySurfaceShape76.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape76.iog.og[0].gco";
connectAttr "groupParts92.og" "polySurfaceShape77.i";
connectAttr "groupId211.id" "polySurfaceShape77.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape77.iog.og[0].gco";
connectAttr "groupParts93.og" "polySurfaceShape78.i";
connectAttr "groupId212.id" "polySurfaceShape78.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape78.iog.og[0].gco";
connectAttr "groupParts94.og" "polySurfaceShape79.i";
connectAttr "groupId213.id" "polySurfaceShape79.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape79.iog.og[0].gco";
connectAttr "groupParts95.og" "polySurfaceShape80.i";
connectAttr "groupId214.id" "polySurfaceShape80.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape80.iog.og[0].gco";
connectAttr "groupParts96.og" "polySurfaceShape81.i";
connectAttr "groupId215.id" "polySurfaceShape81.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape81.iog.og[0].gco";
connectAttr "groupParts97.og" "polySurfaceShape82.i";
connectAttr "groupId216.id" "polySurfaceShape82.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape82.iog.og[0].gco";
connectAttr "groupParts98.og" "polySurfaceShape83.i";
connectAttr "groupId217.id" "polySurfaceShape83.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape83.iog.og[0].gco";
connectAttr "groupParts99.og" "polySurfaceShape84.i";
connectAttr "groupId218.id" "polySurfaceShape84.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape84.iog.og[0].gco";
connectAttr "groupParts100.og" "polySurfaceShape85.i";
connectAttr "groupId219.id" "polySurfaceShape85.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape85.iog.og[0].gco";
connectAttr "groupParts101.og" "polySurfaceShape86.i";
connectAttr "groupId220.id" "polySurfaceShape86.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape86.iog.og[0].gco";
connectAttr "groupParts102.og" "polySurfaceShape87.i";
connectAttr "groupId221.id" "polySurfaceShape87.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape87.iog.og[0].gco";
connectAttr "polyTriangulate1.out" "polySurfaceShape45.i";
connectAttr "groupId179.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupParts103.og" "polySurfaceShape88.i";
connectAttr "groupId222.id" "polySurfaceShape88.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape88.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "F___Stairs_1:polyCube1.out" "F___Stairs_1:deleteComponent1.ig";
connectAttr "F___Stairs_1:deleteComponent1.og" "F___Stairs_1:deleteComponent2.ig"
		;
connectAttr "F___Stairs_1:deleteComponent2.og" "F___Stairs_1:deleteComponent3.ig"
		;
connectAttr "F___Stairs_1:deleteComponent3.og" "F___Stairs_1:deleteComponent4.ig"
		;
connectAttr "F___Stairs_1:deleteComponent4.og" "F___Stairs_1:deleteComponent5.ig"
		;
connectAttr "F___Stairs_1:deleteComponent5.og" "F___Stairs_1:deleteComponent6.ig"
		;
connectAttr "F___Stairs_1:deleteComponent6.og" "F___Stairs_1:deleteComponent7.ig"
		;
connectAttr "F___Stairs_1:deleteComponent7.og" "F___Stairs_1:deleteComponent8.ig"
		;
connectAttr "F___Stairs_1:deleteComponent8.og" "F___Stairs_1:deleteComponent9.ig"
		;
connectAttr "F___Stairs_1:deleteComponent9.og" "F___Stairs_1:deleteComponent10.ig"
		;
connectAttr "F___Stairs_1:deleteComponent10.og" "F___Stairs_1:deleteComponent11.ig"
		;
connectAttr "F___Stairs_1:deleteComponent11.og" "F___Stairs_1:deleteComponent12.ig"
		;
connectAttr "F___Stairs_1:deleteComponent12.og" "F___Stairs_1:deleteComponent13.ig"
		;
connectAttr "F___Stairs_1:deleteComponent13.og" "F___Stairs_1:deleteComponent14.ig"
		;
connectAttr "F___Stairs_1:deleteComponent14.og" "F___Stairs_1:deleteComponent15.ig"
		;
connectAttr "F___Stairs_1:deleteComponent15.og" "F___Stairs_1:deleteComponent16.ig"
		;
connectAttr "F___Stairs_1:deleteComponent16.og" "F___Stairs_1:deleteComponent17.ig"
		;
connectAttr "F___Stairs_1:deleteComponent17.og" "F___Stairs_1:deleteComponent18.ig"
		;
connectAttr "F___Stairs_1:deleteComponent18.og" "F___Stairs_1:polyBridgeEdge2.ip"
		;
connectAttr "F___Stairs_1:pCubeShape1.wm" "F___Stairs_1:polyBridgeEdge2.mp";
connectAttr "F___Stairs_1:polyBridgeEdge2.out" "F___Stairs_1:polyBridgeEdge3.ip"
		;
connectAttr "F___Stairs_1:pCubeShape1.wm" "F___Stairs_1:polyBridgeEdge3.mp";
connectAttr "F___Stairs_1:polyBridgeEdge3.out" "F___Stairs_1:polyBridgeEdge4.ip"
		;
connectAttr "F___Stairs_1:pCubeShape1.wm" "F___Stairs_1:polyBridgeEdge4.mp";
connectAttr "F___Stairs_1:polyBridgeEdge4.out" "F___Stairs_1:polyBridgeEdge5.ip"
		;
connectAttr "F___Stairs_1:pCubeShape1.wm" "F___Stairs_1:polyBridgeEdge5.mp";
connectAttr "F___Stairs_1:polyBridgeEdge5.out" "F___Stairs_1:polyBridgeEdge6.ip"
		;
connectAttr "F___Stairs_1:pCubeShape1.wm" "F___Stairs_1:polyBridgeEdge6.mp";
connectAttr "F___Stairs_1:polyBridgeEdge6.out" "F___Stairs_1:polyBridgeEdge7.ip"
		;
connectAttr "F___Stairs_1:pCubeShape1.wm" "F___Stairs_1:polyBridgeEdge7.mp";
connectAttr "F___Stairs_1:polyBridgeEdge7.out" "F___Stairs_1:polyBridgeEdge8.ip"
		;
connectAttr "F___Stairs_1:pCubeShape1.wm" "F___Stairs_1:polyBridgeEdge8.mp";
connectAttr "F___Stairs_1:pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "F___Stairs_1:pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "F___Stairs_1:pCubeShape3.o" "polyUnite1.ip[2]";
connectAttr "F___Stairs_1:pCubeShape4.o" "polyUnite1.ip[3]";
connectAttr "F___Stairs_1:pCubeShape5.o" "polyUnite1.ip[4]";
connectAttr "F___Stairs_1:pCubeShape6.o" "polyUnite1.ip[5]";
connectAttr "F___Stairs_1:pCubeShape7.o" "polyUnite1.ip[6]";
connectAttr "F___Stairs_1:pCubeShape8.o" "polyUnite1.ip[7]";
connectAttr "F___Stairs_1:pCubeShape9.o" "polyUnite1.ip[8]";
connectAttr "F___Stairs_1:pCubeShape10.o" "polyUnite1.ip[9]";
connectAttr "F___Stairs_1:pCubeShape11.o" "polyUnite1.ip[10]";
connectAttr "F___Stairs_1:pCubeShape12.o" "polyUnite1.ip[11]";
connectAttr "F___Stairs_1:pCubeShape13.o" "polyUnite1.ip[12]";
connectAttr "F___Stairs_1:pCubeShape14.o" "polyUnite1.ip[13]";
connectAttr "F___Stairs_1:pCubeShape15.o" "polyUnite1.ip[14]";
connectAttr "F___Stairs_1:pCubeShape16.o" "polyUnite1.ip[15]";
connectAttr "F___Stairs_1:pCubeShape17.o" "polyUnite1.ip[16]";
connectAttr "F___Stairs_1:pCubeShape18.o" "polyUnite1.ip[17]";
connectAttr "F___Stairs_1:pCubeShape19.o" "polyUnite1.ip[18]";
connectAttr "F___Stairs_1:pCubeShape20.o" "polyUnite1.ip[19]";
connectAttr "F___Stairs_1:pCubeShape21.o" "polyUnite1.ip[20]";
connectAttr "F___Stairs_1:pCubeShape22.o" "polyUnite1.ip[21]";
connectAttr "F___Stairs_1:pCubeShape23.o" "polyUnite1.ip[22]";
connectAttr "F___Stairs_1:pCubeShape24.o" "polyUnite1.ip[23]";
connectAttr "F___Stairs_1:pCubeShape25.o" "polyUnite1.ip[24]";
connectAttr "F___Stairs_1:pCubeShape26.o" "polyUnite1.ip[25]";
connectAttr "F___Stairs_1:pCubeShape27.o" "polyUnite1.ip[26]";
connectAttr "F___Stairs_1:pCubeShape28.o" "polyUnite1.ip[27]";
connectAttr "F___Stairs_1:pCubeShape29.o" "polyUnite1.ip[28]";
connectAttr "F___Stairs_1:pCubeShape30.o" "polyUnite1.ip[29]";
connectAttr "F___Stairs_1:pCubeShape31.o" "polyUnite1.ip[30]";
connectAttr "F___Stairs_1:pCubeShape32.o" "polyUnite1.ip[31]";
connectAttr "F___Stairs_1:pCubeShape33.o" "polyUnite1.ip[32]";
connectAttr "F___Stairs_1:pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "F___Stairs_1:pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "F___Stairs_1:pCubeShape3.wm" "polyUnite1.im[2]";
connectAttr "F___Stairs_1:pCubeShape4.wm" "polyUnite1.im[3]";
connectAttr "F___Stairs_1:pCubeShape5.wm" "polyUnite1.im[4]";
connectAttr "F___Stairs_1:pCubeShape6.wm" "polyUnite1.im[5]";
connectAttr "F___Stairs_1:pCubeShape7.wm" "polyUnite1.im[6]";
connectAttr "F___Stairs_1:pCubeShape8.wm" "polyUnite1.im[7]";
connectAttr "F___Stairs_1:pCubeShape9.wm" "polyUnite1.im[8]";
connectAttr "F___Stairs_1:pCubeShape10.wm" "polyUnite1.im[9]";
connectAttr "F___Stairs_1:pCubeShape11.wm" "polyUnite1.im[10]";
connectAttr "F___Stairs_1:pCubeShape12.wm" "polyUnite1.im[11]";
connectAttr "F___Stairs_1:pCubeShape13.wm" "polyUnite1.im[12]";
connectAttr "F___Stairs_1:pCubeShape14.wm" "polyUnite1.im[13]";
connectAttr "F___Stairs_1:pCubeShape15.wm" "polyUnite1.im[14]";
connectAttr "F___Stairs_1:pCubeShape16.wm" "polyUnite1.im[15]";
connectAttr "F___Stairs_1:pCubeShape17.wm" "polyUnite1.im[16]";
connectAttr "F___Stairs_1:pCubeShape18.wm" "polyUnite1.im[17]";
connectAttr "F___Stairs_1:pCubeShape19.wm" "polyUnite1.im[18]";
connectAttr "F___Stairs_1:pCubeShape20.wm" "polyUnite1.im[19]";
connectAttr "F___Stairs_1:pCubeShape21.wm" "polyUnite1.im[20]";
connectAttr "F___Stairs_1:pCubeShape22.wm" "polyUnite1.im[21]";
connectAttr "F___Stairs_1:pCubeShape23.wm" "polyUnite1.im[22]";
connectAttr "F___Stairs_1:pCubeShape24.wm" "polyUnite1.im[23]";
connectAttr "F___Stairs_1:pCubeShape25.wm" "polyUnite1.im[24]";
connectAttr "F___Stairs_1:pCubeShape26.wm" "polyUnite1.im[25]";
connectAttr "F___Stairs_1:pCubeShape27.wm" "polyUnite1.im[26]";
connectAttr "F___Stairs_1:pCubeShape28.wm" "polyUnite1.im[27]";
connectAttr "F___Stairs_1:pCubeShape29.wm" "polyUnite1.im[28]";
connectAttr "F___Stairs_1:pCubeShape30.wm" "polyUnite1.im[29]";
connectAttr "F___Stairs_1:pCubeShape31.wm" "polyUnite1.im[30]";
connectAttr "F___Stairs_1:pCubeShape32.wm" "polyUnite1.im[31]";
connectAttr "F___Stairs_1:pCubeShape33.wm" "polyUnite1.im[32]";
connectAttr "F___Stairs_1:polyBridgeEdge8.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "F___Stairs_1:polyCube2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "F___Stairs_1:polyCube3.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "F___Stairs_1:polyCube4.out" "groupParts4.ig";
connectAttr "groupId33.id" "groupParts4.gi";
connectAttr "F___Stairs_1:polyCube5.out" "groupParts5.ig";
connectAttr "groupId35.id" "groupParts5.gi";
connectAttr "F___Stairs_1:polyCube6.out" "groupParts6.ig";
connectAttr "groupId39.id" "groupParts6.gi";
connectAttr "F___Stairs_1:polyCube7.out" "groupParts7.ig";
connectAttr "groupId53.id" "groupParts7.gi";
connectAttr "F___Stairs_1:polyCube8.out" "groupParts8.ig";
connectAttr "groupId65.id" "groupParts8.gi";
connectAttr "polyUnite1.out" "groupParts9.ig";
connectAttr "groupId67.id" "groupParts9.gi";
connectAttr "groupParts9.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "F___Stairs_2:polyCube1.out" "F___Stairs_2:deleteComponent1.ig";
connectAttr "F___Stairs_2:deleteComponent1.og" "F___Stairs_2:deleteComponent2.ig"
		;
connectAttr "F___Stairs_2:deleteComponent2.og" "F___Stairs_2:deleteComponent3.ig"
		;
connectAttr "F___Stairs_2:deleteComponent3.og" "F___Stairs_2:deleteComponent4.ig"
		;
connectAttr "F___Stairs_2:deleteComponent4.og" "F___Stairs_2:deleteComponent5.ig"
		;
connectAttr "F___Stairs_2:deleteComponent5.og" "F___Stairs_2:deleteComponent6.ig"
		;
connectAttr "F___Stairs_2:deleteComponent6.og" "F___Stairs_2:deleteComponent7.ig"
		;
connectAttr "F___Stairs_2:deleteComponent7.og" "F___Stairs_2:deleteComponent8.ig"
		;
connectAttr "F___Stairs_2:deleteComponent8.og" "F___Stairs_2:deleteComponent9.ig"
		;
connectAttr "F___Stairs_2:deleteComponent9.og" "F___Stairs_2:deleteComponent10.ig"
		;
connectAttr "F___Stairs_2:deleteComponent10.og" "F___Stairs_2:deleteComponent11.ig"
		;
connectAttr "F___Stairs_2:deleteComponent11.og" "F___Stairs_2:deleteComponent12.ig"
		;
connectAttr "F___Stairs_2:deleteComponent12.og" "F___Stairs_2:deleteComponent13.ig"
		;
connectAttr "F___Stairs_2:deleteComponent13.og" "F___Stairs_2:deleteComponent14.ig"
		;
connectAttr "F___Stairs_2:deleteComponent14.og" "F___Stairs_2:deleteComponent15.ig"
		;
connectAttr "F___Stairs_2:deleteComponent15.og" "F___Stairs_2:deleteComponent16.ig"
		;
connectAttr "F___Stairs_2:deleteComponent16.og" "F___Stairs_2:deleteComponent17.ig"
		;
connectAttr "F___Stairs_2:deleteComponent17.og" "F___Stairs_2:deleteComponent18.ig"
		;
connectAttr "F___Stairs_2:deleteComponent18.og" "F___Stairs_2:polyBridgeEdge2.ip"
		;
connectAttr "F___Stairs_2:pCubeShape1.wm" "F___Stairs_2:polyBridgeEdge2.mp";
connectAttr "F___Stairs_2:polyBridgeEdge2.out" "F___Stairs_2:polyBridgeEdge3.ip"
		;
connectAttr "F___Stairs_2:pCubeShape1.wm" "F___Stairs_2:polyBridgeEdge3.mp";
connectAttr "F___Stairs_2:polyBridgeEdge3.out" "F___Stairs_2:polyBridgeEdge4.ip"
		;
connectAttr "F___Stairs_2:pCubeShape1.wm" "F___Stairs_2:polyBridgeEdge4.mp";
connectAttr "F___Stairs_2:polyBridgeEdge4.out" "F___Stairs_2:polyBridgeEdge5.ip"
		;
connectAttr "F___Stairs_2:pCubeShape1.wm" "F___Stairs_2:polyBridgeEdge5.mp";
connectAttr "F___Stairs_2:polyBridgeEdge5.out" "F___Stairs_2:polyBridgeEdge6.ip"
		;
connectAttr "F___Stairs_2:pCubeShape1.wm" "F___Stairs_2:polyBridgeEdge6.mp";
connectAttr "F___Stairs_2:polyBridgeEdge6.out" "F___Stairs_2:polyBridgeEdge7.ip"
		;
connectAttr "F___Stairs_2:pCubeShape1.wm" "F___Stairs_2:polyBridgeEdge7.mp";
connectAttr "F___Stairs_2:polyBridgeEdge7.out" "F___Stairs_2:polyBridgeEdge8.ip"
		;
connectAttr "F___Stairs_2:pCubeShape1.wm" "F___Stairs_2:polyBridgeEdge8.mp";
connectAttr "F___Stairs_2:polyBridgeEdge8.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyBridgeEdge1.ip";
connectAttr "F___Stairs_2:pCubeShape1.wm" "polyBridgeEdge1.mp";
connectAttr "polySurfaceShape1.o" "polyUnite2.ip[0]";
connectAttr "F___Stairs_2:pCubeShape2.o" "polyUnite2.ip[1]";
connectAttr "F___Stairs_2:pCubeShape3.o" "polyUnite2.ip[2]";
connectAttr "F___Stairs_2:pCubeShape17.o" "polyUnite2.ip[3]";
connectAttr "F___Stairs_2:pCubeShape18.o" "polyUnite2.ip[4]";
connectAttr "F___Stairs_2:pCubeShape19.o" "polyUnite2.ip[5]";
connectAttr "F___Stairs_2:pCubeShape21.o" "polyUnite2.ip[6]";
connectAttr "F___Stairs_2:pCubeShape1.o" "polyUnite2.ip[7]";
connectAttr "F___Stairs_2:pCubeShape4.o" "polyUnite2.ip[8]";
connectAttr "F___Stairs_2:pCubeShape5.o" "polyUnite2.ip[9]";
connectAttr "F___Stairs_2:pCubeShape6.o" "polyUnite2.ip[10]";
connectAttr "F___Stairs_2:pCubeShape7.o" "polyUnite2.ip[11]";
connectAttr "F___Stairs_2:pCubeShape8.o" "polyUnite2.ip[12]";
connectAttr "F___Stairs_2:pCubeShape9.o" "polyUnite2.ip[13]";
connectAttr "F___Stairs_2:pCubeShape11.o" "polyUnite2.ip[14]";
connectAttr "F___Stairs_2:pCubeShape12.o" "polyUnite2.ip[15]";
connectAttr "F___Stairs_2:pCubeShape13.o" "polyUnite2.ip[16]";
connectAttr "F___Stairs_2:pCubeShape14.o" "polyUnite2.ip[17]";
connectAttr "F___Stairs_2:pCubeShape15.o" "polyUnite2.ip[18]";
connectAttr "F___Stairs_2:pCubeShape16.o" "polyUnite2.ip[19]";
connectAttr "F___Stairs_2:pCubeShape20.o" "polyUnite2.ip[20]";
connectAttr "F___Stairs_2:pCubeShape22.o" "polyUnite2.ip[21]";
connectAttr "F___Stairs_2:pCubeShape23.o" "polyUnite2.ip[22]";
connectAttr "F___Stairs_2:pCubeShape24.o" "polyUnite2.ip[23]";
connectAttr "F___Stairs_2:pCubeShape25.o" "polyUnite2.ip[24]";
connectAttr "F___Stairs_2:pCubeShape27.o" "polyUnite2.ip[25]";
connectAttr "F___Stairs_2:pCubeShape28.o" "polyUnite2.ip[26]";
connectAttr "F___Stairs_2:pCubeShape29.o" "polyUnite2.ip[27]";
connectAttr "F___Stairs_2:pCubeShape30.o" "polyUnite2.ip[28]";
connectAttr "F___Stairs_2:pCubeShape31.o" "polyUnite2.ip[29]";
connectAttr "F___Stairs_2:pCubeShape32.o" "polyUnite2.ip[30]";
connectAttr "pCubeShape22.o" "polyUnite2.ip[31]";
connectAttr "pCubeShape23.o" "polyUnite2.ip[32]";
connectAttr "pCubeShape4.o" "polyUnite2.ip[33]";
connectAttr "pCubeShape24.o" "polyUnite2.ip[34]";
connectAttr "polySurfaceShape1.wm" "polyUnite2.im[0]";
connectAttr "F___Stairs_2:pCubeShape2.wm" "polyUnite2.im[1]";
connectAttr "F___Stairs_2:pCubeShape3.wm" "polyUnite2.im[2]";
connectAttr "F___Stairs_2:pCubeShape17.wm" "polyUnite2.im[3]";
connectAttr "F___Stairs_2:pCubeShape18.wm" "polyUnite2.im[4]";
connectAttr "F___Stairs_2:pCubeShape19.wm" "polyUnite2.im[5]";
connectAttr "F___Stairs_2:pCubeShape21.wm" "polyUnite2.im[6]";
connectAttr "F___Stairs_2:pCubeShape1.wm" "polyUnite2.im[7]";
connectAttr "F___Stairs_2:pCubeShape4.wm" "polyUnite2.im[8]";
connectAttr "F___Stairs_2:pCubeShape5.wm" "polyUnite2.im[9]";
connectAttr "F___Stairs_2:pCubeShape6.wm" "polyUnite2.im[10]";
connectAttr "F___Stairs_2:pCubeShape7.wm" "polyUnite2.im[11]";
connectAttr "F___Stairs_2:pCubeShape8.wm" "polyUnite2.im[12]";
connectAttr "F___Stairs_2:pCubeShape9.wm" "polyUnite2.im[13]";
connectAttr "F___Stairs_2:pCubeShape11.wm" "polyUnite2.im[14]";
connectAttr "F___Stairs_2:pCubeShape12.wm" "polyUnite2.im[15]";
connectAttr "F___Stairs_2:pCubeShape13.wm" "polyUnite2.im[16]";
connectAttr "F___Stairs_2:pCubeShape14.wm" "polyUnite2.im[17]";
connectAttr "F___Stairs_2:pCubeShape15.wm" "polyUnite2.im[18]";
connectAttr "F___Stairs_2:pCubeShape16.wm" "polyUnite2.im[19]";
connectAttr "F___Stairs_2:pCubeShape20.wm" "polyUnite2.im[20]";
connectAttr "F___Stairs_2:pCubeShape22.wm" "polyUnite2.im[21]";
connectAttr "F___Stairs_2:pCubeShape23.wm" "polyUnite2.im[22]";
connectAttr "F___Stairs_2:pCubeShape24.wm" "polyUnite2.im[23]";
connectAttr "F___Stairs_2:pCubeShape25.wm" "polyUnite2.im[24]";
connectAttr "F___Stairs_2:pCubeShape27.wm" "polyUnite2.im[25]";
connectAttr "F___Stairs_2:pCubeShape28.wm" "polyUnite2.im[26]";
connectAttr "F___Stairs_2:pCubeShape29.wm" "polyUnite2.im[27]";
connectAttr "F___Stairs_2:pCubeShape30.wm" "polyUnite2.im[28]";
connectAttr "F___Stairs_2:pCubeShape31.wm" "polyUnite2.im[29]";
connectAttr "F___Stairs_2:pCubeShape32.wm" "polyUnite2.im[30]";
connectAttr "pCubeShape22.wm" "polyUnite2.im[31]";
connectAttr "pCubeShape23.wm" "polyUnite2.im[32]";
connectAttr "pCubeShape4.wm" "polyUnite2.im[33]";
connectAttr "pCubeShape24.wm" "polyUnite2.im[34]";
connectAttr "F___Stairs_2:polyCube2.out" "groupParts10.ig";
connectAttr "groupId68.id" "groupParts10.gi";
connectAttr "F___Stairs_2:polyCube3.out" "groupParts11.ig";
connectAttr "groupId70.id" "groupParts11.gi";
connectAttr "F___Stairs_2:polyCube4.out" "groupParts12.ig";
connectAttr "groupId72.id" "groupParts12.gi";
connectAttr "F___Stairs_2:polyCube5.out" "groupParts13.ig";
connectAttr "groupId74.id" "groupParts13.gi";
connectAttr "polyBridgeEdge1.out" "groupParts14.ig";
connectAttr "groupId80.id" "groupParts14.gi";
connectAttr "F___Stairs_2:polyCube6.out" "groupParts15.ig";
connectAttr "groupId106.id" "groupParts15.gi";
connectAttr "F___Stairs_2:polyCube7.out" "groupParts16.ig";
connectAttr "groupId116.id" "groupParts16.gi";
connectAttr "polyUnite2.out" "groupParts17.ig";
connectAttr "groupId136.id" "groupParts17.gi";
connectAttr "polySurfaceShape2.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts18.ig";
connectAttr "groupId137.id" "groupParts18.gi";
connectAttr "polySeparate1.out[1]" "groupParts19.ig";
connectAttr "groupId138.id" "groupParts19.gi";
connectAttr "polySeparate1.out[2]" "groupParts20.ig";
connectAttr "groupId139.id" "groupParts20.gi";
connectAttr "polySeparate1.out[3]" "groupParts21.ig";
connectAttr "groupId140.id" "groupParts21.gi";
connectAttr "polySeparate1.out[4]" "groupParts22.ig";
connectAttr "groupId141.id" "groupParts22.gi";
connectAttr "polySeparate1.out[5]" "groupParts23.ig";
connectAttr "groupId142.id" "groupParts23.gi";
connectAttr "polySeparate1.out[6]" "groupParts24.ig";
connectAttr "groupId143.id" "groupParts24.gi";
connectAttr "polySeparate1.out[7]" "groupParts25.ig";
connectAttr "groupId144.id" "groupParts25.gi";
connectAttr "polySeparate1.out[8]" "groupParts26.ig";
connectAttr "groupId145.id" "groupParts26.gi";
connectAttr "polySeparate1.out[9]" "groupParts27.ig";
connectAttr "groupId146.id" "groupParts27.gi";
connectAttr "polySeparate1.out[10]" "groupParts28.ig";
connectAttr "groupId147.id" "groupParts28.gi";
connectAttr "polySeparate1.out[11]" "groupParts29.ig";
connectAttr "groupId148.id" "groupParts29.gi";
connectAttr "polySeparate1.out[12]" "groupParts30.ig";
connectAttr "groupId149.id" "groupParts30.gi";
connectAttr "polySeparate1.out[13]" "groupParts31.ig";
connectAttr "groupId150.id" "groupParts31.gi";
connectAttr "polySeparate1.out[14]" "groupParts32.ig";
connectAttr "groupId151.id" "groupParts32.gi";
connectAttr "polySeparate1.out[15]" "groupParts33.ig";
connectAttr "groupId152.id" "groupParts33.gi";
connectAttr "polySeparate1.out[16]" "groupParts34.ig";
connectAttr "groupId153.id" "groupParts34.gi";
connectAttr "polySeparate1.out[17]" "groupParts35.ig";
connectAttr "groupId154.id" "groupParts35.gi";
connectAttr "polySeparate1.out[18]" "groupParts36.ig";
connectAttr "groupId155.id" "groupParts36.gi";
connectAttr "polySeparate1.out[19]" "groupParts37.ig";
connectAttr "groupId156.id" "groupParts37.gi";
connectAttr "polySeparate1.out[20]" "groupParts38.ig";
connectAttr "groupId157.id" "groupParts38.gi";
connectAttr "polySeparate1.out[21]" "groupParts39.ig";
connectAttr "groupId158.id" "groupParts39.gi";
connectAttr "polySeparate1.out[22]" "groupParts40.ig";
connectAttr "groupId159.id" "groupParts40.gi";
connectAttr "polySeparate1.out[23]" "groupParts41.ig";
connectAttr "groupId160.id" "groupParts41.gi";
connectAttr "polySeparate1.out[24]" "groupParts42.ig";
connectAttr "groupId161.id" "groupParts42.gi";
connectAttr "polySeparate1.out[25]" "groupParts43.ig";
connectAttr "groupId162.id" "groupParts43.gi";
connectAttr "polySeparate1.out[26]" "groupParts44.ig";
connectAttr "groupId163.id" "groupParts44.gi";
connectAttr "polySeparate1.out[27]" "groupParts45.ig";
connectAttr "groupId164.id" "groupParts45.gi";
connectAttr "polySeparate1.out[28]" "groupParts46.ig";
connectAttr "groupId165.id" "groupParts46.gi";
connectAttr "polySeparate1.out[29]" "groupParts47.ig";
connectAttr "groupId166.id" "groupParts47.gi";
connectAttr "polySeparate1.out[30]" "groupParts48.ig";
connectAttr "groupId167.id" "groupParts48.gi";
connectAttr "polySeparate1.out[31]" "groupParts49.ig";
connectAttr "groupId168.id" "groupParts49.gi";
connectAttr "polySeparate1.out[32]" "groupParts50.ig";
connectAttr "groupId169.id" "groupParts50.gi";
connectAttr "polySeparate1.out[33]" "groupParts51.ig";
connectAttr "groupId170.id" "groupParts51.gi";
connectAttr "polySeparate1.out[34]" "groupParts52.ig";
connectAttr "groupId171.id" "groupParts52.gi";
connectAttr "polySeparate1.out[35]" "groupParts53.ig";
connectAttr "groupId172.id" "groupParts53.gi";
connectAttr "polySeparate1.out[36]" "groupParts54.ig";
connectAttr "groupId173.id" "groupParts54.gi";
connectAttr "polySeparate1.out[37]" "groupParts55.ig";
connectAttr "groupId174.id" "groupParts55.gi";
connectAttr "polySeparate1.out[38]" "groupParts56.ig";
connectAttr "groupId175.id" "groupParts56.gi";
connectAttr "polySeparate1.out[39]" "groupParts57.ig";
connectAttr "groupId176.id" "groupParts57.gi";
connectAttr "polySeparate1.out[40]" "groupParts58.ig";
connectAttr "groupId177.id" "groupParts58.gi";
connectAttr "polySeparate1.out[41]" "groupParts59.ig";
connectAttr "groupId178.id" "groupParts59.gi";
connectAttr "polySurfaceShape3.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape4.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape5.o" "polyUnite3.ip[2]";
connectAttr "polySurfaceShape6.o" "polyUnite3.ip[3]";
connectAttr "polySurfaceShape7.o" "polyUnite3.ip[4]";
connectAttr "polySurfaceShape8.o" "polyUnite3.ip[5]";
connectAttr "polySurfaceShape9.o" "polyUnite3.ip[6]";
connectAttr "polySurfaceShape10.o" "polyUnite3.ip[7]";
connectAttr "polySurfaceShape11.o" "polyUnite3.ip[8]";
connectAttr "polySurfaceShape12.o" "polyUnite3.ip[9]";
connectAttr "polySurfaceShape13.o" "polyUnite3.ip[10]";
connectAttr "polySurfaceShape14.o" "polyUnite3.ip[11]";
connectAttr "polySurfaceShape15.o" "polyUnite3.ip[12]";
connectAttr "polySurfaceShape16.o" "polyUnite3.ip[13]";
connectAttr "polySurfaceShape17.o" "polyUnite3.ip[14]";
connectAttr "polySurfaceShape18.o" "polyUnite3.ip[15]";
connectAttr "polySurfaceShape19.o" "polyUnite3.ip[16]";
connectAttr "polySurfaceShape20.o" "polyUnite3.ip[17]";
connectAttr "polySurfaceShape21.o" "polyUnite3.ip[18]";
connectAttr "polySurfaceShape22.o" "polyUnite3.ip[19]";
connectAttr "polySurfaceShape23.o" "polyUnite3.ip[20]";
connectAttr "polySurfaceShape24.o" "polyUnite3.ip[21]";
connectAttr "polySurfaceShape25.o" "polyUnite3.ip[22]";
connectAttr "polySurfaceShape26.o" "polyUnite3.ip[23]";
connectAttr "polySurfaceShape27.o" "polyUnite3.ip[24]";
connectAttr "polySurfaceShape28.o" "polyUnite3.ip[25]";
connectAttr "polySurfaceShape29.o" "polyUnite3.ip[26]";
connectAttr "polySurfaceShape30.o" "polyUnite3.ip[27]";
connectAttr "polySurfaceShape31.o" "polyUnite3.ip[28]";
connectAttr "polySurfaceShape32.o" "polyUnite3.ip[29]";
connectAttr "polySurfaceShape33.o" "polyUnite3.ip[30]";
connectAttr "polySurfaceShape34.o" "polyUnite3.ip[31]";
connectAttr "polySurfaceShape35.o" "polyUnite3.ip[32]";
connectAttr "polySurfaceShape36.o" "polyUnite3.ip[33]";
connectAttr "polySurfaceShape37.o" "polyUnite3.ip[34]";
connectAttr "polySurfaceShape38.o" "polyUnite3.ip[35]";
connectAttr "polySurfaceShape39.o" "polyUnite3.ip[36]";
connectAttr "polySurfaceShape40.o" "polyUnite3.ip[37]";
connectAttr "polySurfaceShape41.o" "polyUnite3.ip[38]";
connectAttr "polySurfaceShape42.o" "polyUnite3.ip[39]";
connectAttr "polySurfaceShape43.o" "polyUnite3.ip[40]";
connectAttr "polySurfaceShape44.o" "polyUnite3.ip[41]";
connectAttr "polySurfaceShape3.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape4.wm" "polyUnite3.im[1]";
connectAttr "polySurfaceShape5.wm" "polyUnite3.im[2]";
connectAttr "polySurfaceShape6.wm" "polyUnite3.im[3]";
connectAttr "polySurfaceShape7.wm" "polyUnite3.im[4]";
connectAttr "polySurfaceShape8.wm" "polyUnite3.im[5]";
connectAttr "polySurfaceShape9.wm" "polyUnite3.im[6]";
connectAttr "polySurfaceShape10.wm" "polyUnite3.im[7]";
connectAttr "polySurfaceShape11.wm" "polyUnite3.im[8]";
connectAttr "polySurfaceShape12.wm" "polyUnite3.im[9]";
connectAttr "polySurfaceShape13.wm" "polyUnite3.im[10]";
connectAttr "polySurfaceShape14.wm" "polyUnite3.im[11]";
connectAttr "polySurfaceShape15.wm" "polyUnite3.im[12]";
connectAttr "polySurfaceShape16.wm" "polyUnite3.im[13]";
connectAttr "polySurfaceShape17.wm" "polyUnite3.im[14]";
connectAttr "polySurfaceShape18.wm" "polyUnite3.im[15]";
connectAttr "polySurfaceShape19.wm" "polyUnite3.im[16]";
connectAttr "polySurfaceShape20.wm" "polyUnite3.im[17]";
connectAttr "polySurfaceShape21.wm" "polyUnite3.im[18]";
connectAttr "polySurfaceShape22.wm" "polyUnite3.im[19]";
connectAttr "polySurfaceShape23.wm" "polyUnite3.im[20]";
connectAttr "polySurfaceShape24.wm" "polyUnite3.im[21]";
connectAttr "polySurfaceShape25.wm" "polyUnite3.im[22]";
connectAttr "polySurfaceShape26.wm" "polyUnite3.im[23]";
connectAttr "polySurfaceShape27.wm" "polyUnite3.im[24]";
connectAttr "polySurfaceShape28.wm" "polyUnite3.im[25]";
connectAttr "polySurfaceShape29.wm" "polyUnite3.im[26]";
connectAttr "polySurfaceShape30.wm" "polyUnite3.im[27]";
connectAttr "polySurfaceShape31.wm" "polyUnite3.im[28]";
connectAttr "polySurfaceShape32.wm" "polyUnite3.im[29]";
connectAttr "polySurfaceShape33.wm" "polyUnite3.im[30]";
connectAttr "polySurfaceShape34.wm" "polyUnite3.im[31]";
connectAttr "polySurfaceShape35.wm" "polyUnite3.im[32]";
connectAttr "polySurfaceShape36.wm" "polyUnite3.im[33]";
connectAttr "polySurfaceShape37.wm" "polyUnite3.im[34]";
connectAttr "polySurfaceShape38.wm" "polyUnite3.im[35]";
connectAttr "polySurfaceShape39.wm" "polyUnite3.im[36]";
connectAttr "polySurfaceShape40.wm" "polyUnite3.im[37]";
connectAttr "polySurfaceShape41.wm" "polyUnite3.im[38]";
connectAttr "polySurfaceShape42.wm" "polyUnite3.im[39]";
connectAttr "polySurfaceShape43.wm" "polyUnite3.im[40]";
connectAttr "polySurfaceShape44.wm" "polyUnite3.im[41]";
connectAttr "polyUnite3.out" "groupParts60.ig";
connectAttr "groupId179.id" "groupParts60.gi";
connectAttr "groupParts60.og" "polyTriangulate1.ip";
connectAttr "polySurfaceShape45.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts61.ig";
connectAttr "groupId180.id" "groupParts61.gi";
connectAttr "polySeparate2.out[1]" "groupParts62.ig";
connectAttr "groupId181.id" "groupParts62.gi";
connectAttr "polySeparate2.out[2]" "groupParts63.ig";
connectAttr "groupId182.id" "groupParts63.gi";
connectAttr "polySeparate2.out[3]" "groupParts64.ig";
connectAttr "groupId183.id" "groupParts64.gi";
connectAttr "polySeparate2.out[4]" "groupParts65.ig";
connectAttr "groupId184.id" "groupParts65.gi";
connectAttr "polySeparate2.out[5]" "groupParts66.ig";
connectAttr "groupId185.id" "groupParts66.gi";
connectAttr "polySeparate2.out[6]" "groupParts67.ig";
connectAttr "groupId186.id" "groupParts67.gi";
connectAttr "polySeparate2.out[7]" "groupParts68.ig";
connectAttr "groupId187.id" "groupParts68.gi";
connectAttr "polySeparate2.out[8]" "groupParts69.ig";
connectAttr "groupId188.id" "groupParts69.gi";
connectAttr "polySeparate2.out[9]" "groupParts70.ig";
connectAttr "groupId189.id" "groupParts70.gi";
connectAttr "polySeparate2.out[10]" "groupParts71.ig";
connectAttr "groupId190.id" "groupParts71.gi";
connectAttr "polySeparate2.out[11]" "groupParts72.ig";
connectAttr "groupId191.id" "groupParts72.gi";
connectAttr "polySeparate2.out[12]" "groupParts73.ig";
connectAttr "groupId192.id" "groupParts73.gi";
connectAttr "polySeparate2.out[13]" "groupParts74.ig";
connectAttr "groupId193.id" "groupParts74.gi";
connectAttr "polySeparate2.out[14]" "groupParts75.ig";
connectAttr "groupId194.id" "groupParts75.gi";
connectAttr "polySeparate2.out[15]" "groupParts76.ig";
connectAttr "groupId195.id" "groupParts76.gi";
connectAttr "polySeparate2.out[16]" "groupParts77.ig";
connectAttr "groupId196.id" "groupParts77.gi";
connectAttr "polySeparate2.out[17]" "groupParts78.ig";
connectAttr "groupId197.id" "groupParts78.gi";
connectAttr "polySeparate2.out[18]" "groupParts79.ig";
connectAttr "groupId198.id" "groupParts79.gi";
connectAttr "polySeparate2.out[19]" "groupParts80.ig";
connectAttr "groupId199.id" "groupParts80.gi";
connectAttr "polySeparate2.out[20]" "groupParts81.ig";
connectAttr "groupId200.id" "groupParts81.gi";
connectAttr "polySeparate2.out[21]" "groupParts82.ig";
connectAttr "groupId201.id" "groupParts82.gi";
connectAttr "polySeparate2.out[22]" "groupParts83.ig";
connectAttr "groupId202.id" "groupParts83.gi";
connectAttr "polySeparate2.out[23]" "groupParts84.ig";
connectAttr "groupId203.id" "groupParts84.gi";
connectAttr "polySeparate2.out[24]" "groupParts85.ig";
connectAttr "groupId204.id" "groupParts85.gi";
connectAttr "polySeparate2.out[25]" "groupParts86.ig";
connectAttr "groupId205.id" "groupParts86.gi";
connectAttr "polySeparate2.out[26]" "groupParts87.ig";
connectAttr "groupId206.id" "groupParts87.gi";
connectAttr "polySeparate2.out[27]" "groupParts88.ig";
connectAttr "groupId207.id" "groupParts88.gi";
connectAttr "polySeparate2.out[28]" "groupParts89.ig";
connectAttr "groupId208.id" "groupParts89.gi";
connectAttr "polySeparate2.out[29]" "groupParts90.ig";
connectAttr "groupId209.id" "groupParts90.gi";
connectAttr "polySeparate2.out[30]" "groupParts91.ig";
connectAttr "groupId210.id" "groupParts91.gi";
connectAttr "polySeparate2.out[31]" "groupParts92.ig";
connectAttr "groupId211.id" "groupParts92.gi";
connectAttr "polySeparate2.out[32]" "groupParts93.ig";
connectAttr "groupId212.id" "groupParts93.gi";
connectAttr "polySeparate2.out[33]" "groupParts94.ig";
connectAttr "groupId213.id" "groupParts94.gi";
connectAttr "polySeparate2.out[34]" "groupParts95.ig";
connectAttr "groupId214.id" "groupParts95.gi";
connectAttr "polySeparate2.out[35]" "groupParts96.ig";
connectAttr "groupId215.id" "groupParts96.gi";
connectAttr "polySeparate2.out[36]" "groupParts97.ig";
connectAttr "groupId216.id" "groupParts97.gi";
connectAttr "polySeparate2.out[37]" "groupParts98.ig";
connectAttr "groupId217.id" "groupParts98.gi";
connectAttr "polySeparate2.out[38]" "groupParts99.ig";
connectAttr "groupId218.id" "groupParts99.gi";
connectAttr "polySeparate2.out[39]" "groupParts100.ig";
connectAttr "groupId219.id" "groupParts100.gi";
connectAttr "polySeparate2.out[40]" "groupParts101.ig";
connectAttr "groupId220.id" "groupParts101.gi";
connectAttr "polySeparate2.out[41]" "groupParts102.ig";
connectAttr "groupId221.id" "groupParts102.gi";
connectAttr "polySurfaceShape46.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape47.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape48.o" "polyUnite4.ip[2]";
connectAttr "polySurfaceShape49.o" "polyUnite4.ip[3]";
connectAttr "polySurfaceShape50.o" "polyUnite4.ip[4]";
connectAttr "polySurfaceShape51.o" "polyUnite4.ip[5]";
connectAttr "polySurfaceShape52.o" "polyUnite4.ip[6]";
connectAttr "polySurfaceShape53.o" "polyUnite4.ip[7]";
connectAttr "polySurfaceShape54.o" "polyUnite4.ip[8]";
connectAttr "polySurfaceShape55.o" "polyUnite4.ip[9]";
connectAttr "polySurfaceShape56.o" "polyUnite4.ip[10]";
connectAttr "polySurfaceShape57.o" "polyUnite4.ip[11]";
connectAttr "polySurfaceShape58.o" "polyUnite4.ip[12]";
connectAttr "polySurfaceShape59.o" "polyUnite4.ip[13]";
connectAttr "polySurfaceShape60.o" "polyUnite4.ip[14]";
connectAttr "polySurfaceShape61.o" "polyUnite4.ip[15]";
connectAttr "polySurfaceShape62.o" "polyUnite4.ip[16]";
connectAttr "polySurfaceShape63.o" "polyUnite4.ip[17]";
connectAttr "polySurfaceShape64.o" "polyUnite4.ip[18]";
connectAttr "polySurfaceShape65.o" "polyUnite4.ip[19]";
connectAttr "polySurfaceShape66.o" "polyUnite4.ip[20]";
connectAttr "polySurfaceShape67.o" "polyUnite4.ip[21]";
connectAttr "polySurfaceShape68.o" "polyUnite4.ip[22]";
connectAttr "polySurfaceShape69.o" "polyUnite4.ip[23]";
connectAttr "polySurfaceShape70.o" "polyUnite4.ip[24]";
connectAttr "polySurfaceShape71.o" "polyUnite4.ip[25]";
connectAttr "polySurfaceShape72.o" "polyUnite4.ip[26]";
connectAttr "polySurfaceShape73.o" "polyUnite4.ip[27]";
connectAttr "polySurfaceShape74.o" "polyUnite4.ip[28]";
connectAttr "polySurfaceShape75.o" "polyUnite4.ip[29]";
connectAttr "polySurfaceShape76.o" "polyUnite4.ip[30]";
connectAttr "polySurfaceShape77.o" "polyUnite4.ip[31]";
connectAttr "polySurfaceShape78.o" "polyUnite4.ip[32]";
connectAttr "polySurfaceShape79.o" "polyUnite4.ip[33]";
connectAttr "polySurfaceShape80.o" "polyUnite4.ip[34]";
connectAttr "polySurfaceShape81.o" "polyUnite4.ip[35]";
connectAttr "polySurfaceShape82.o" "polyUnite4.ip[36]";
connectAttr "polySurfaceShape83.o" "polyUnite4.ip[37]";
connectAttr "polySurfaceShape84.o" "polyUnite4.ip[38]";
connectAttr "polySurfaceShape85.o" "polyUnite4.ip[39]";
connectAttr "polySurfaceShape86.o" "polyUnite4.ip[40]";
connectAttr "polySurfaceShape87.o" "polyUnite4.ip[41]";
connectAttr "polySurfaceShape46.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape47.wm" "polyUnite4.im[1]";
connectAttr "polySurfaceShape48.wm" "polyUnite4.im[2]";
connectAttr "polySurfaceShape49.wm" "polyUnite4.im[3]";
connectAttr "polySurfaceShape50.wm" "polyUnite4.im[4]";
connectAttr "polySurfaceShape51.wm" "polyUnite4.im[5]";
connectAttr "polySurfaceShape52.wm" "polyUnite4.im[6]";
connectAttr "polySurfaceShape53.wm" "polyUnite4.im[7]";
connectAttr "polySurfaceShape54.wm" "polyUnite4.im[8]";
connectAttr "polySurfaceShape55.wm" "polyUnite4.im[9]";
connectAttr "polySurfaceShape56.wm" "polyUnite4.im[10]";
connectAttr "polySurfaceShape57.wm" "polyUnite4.im[11]";
connectAttr "polySurfaceShape58.wm" "polyUnite4.im[12]";
connectAttr "polySurfaceShape59.wm" "polyUnite4.im[13]";
connectAttr "polySurfaceShape60.wm" "polyUnite4.im[14]";
connectAttr "polySurfaceShape61.wm" "polyUnite4.im[15]";
connectAttr "polySurfaceShape62.wm" "polyUnite4.im[16]";
connectAttr "polySurfaceShape63.wm" "polyUnite4.im[17]";
connectAttr "polySurfaceShape64.wm" "polyUnite4.im[18]";
connectAttr "polySurfaceShape65.wm" "polyUnite4.im[19]";
connectAttr "polySurfaceShape66.wm" "polyUnite4.im[20]";
connectAttr "polySurfaceShape67.wm" "polyUnite4.im[21]";
connectAttr "polySurfaceShape68.wm" "polyUnite4.im[22]";
connectAttr "polySurfaceShape69.wm" "polyUnite4.im[23]";
connectAttr "polySurfaceShape70.wm" "polyUnite4.im[24]";
connectAttr "polySurfaceShape71.wm" "polyUnite4.im[25]";
connectAttr "polySurfaceShape72.wm" "polyUnite4.im[26]";
connectAttr "polySurfaceShape73.wm" "polyUnite4.im[27]";
connectAttr "polySurfaceShape74.wm" "polyUnite4.im[28]";
connectAttr "polySurfaceShape75.wm" "polyUnite4.im[29]";
connectAttr "polySurfaceShape76.wm" "polyUnite4.im[30]";
connectAttr "polySurfaceShape77.wm" "polyUnite4.im[31]";
connectAttr "polySurfaceShape78.wm" "polyUnite4.im[32]";
connectAttr "polySurfaceShape79.wm" "polyUnite4.im[33]";
connectAttr "polySurfaceShape80.wm" "polyUnite4.im[34]";
connectAttr "polySurfaceShape81.wm" "polyUnite4.im[35]";
connectAttr "polySurfaceShape82.wm" "polyUnite4.im[36]";
connectAttr "polySurfaceShape83.wm" "polyUnite4.im[37]";
connectAttr "polySurfaceShape84.wm" "polyUnite4.im[38]";
connectAttr "polySurfaceShape85.wm" "polyUnite4.im[39]";
connectAttr "polySurfaceShape86.wm" "polyUnite4.im[40]";
connectAttr "polySurfaceShape87.wm" "polyUnite4.im[41]";
connectAttr "polyUnite4.out" "groupParts103.ig";
connectAttr "groupId222.id" "groupParts103.gi";
connectAttr "F___Stairs_1:pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_1:pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_1:pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_1:pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_1:pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_1:pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_1:pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_1:pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_1:pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_1:pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape17.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape17.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape18.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape18.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape20.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape20.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape21.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape21.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape22.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape22.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape23.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape23.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape24.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape24.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape26.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape26.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape27.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape27.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape28.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape28.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape29.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape29.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape30.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape30.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape31.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape31.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape32.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape32.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape33.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_1:pCubeShape33.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape17.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape17.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape18.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape18.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape21.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape21.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "F___Stairs_2:pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape20.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape20.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape22.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape22.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape23.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape23.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape24.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape24.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape27.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape27.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape28.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape28.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape29.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape29.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape30.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape30.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape31.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape31.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape32.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "F___Stairs_2:pCubeShape32.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pCubeShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "polySurfaceShape47.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape48.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape49.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape50.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape51.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape53.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape54.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape55.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape56.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape57.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape58.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape59.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape60.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape61.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape62.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape63.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape64.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape65.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape66.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape67.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape68.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape69.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape70.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape71.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape72.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape73.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape74.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape75.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape76.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape77.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape78.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape79.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape80.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape81.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape82.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape83.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape84.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape85.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape86.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape87.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape88.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId89.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId91.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId95.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId96.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId97.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId114.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId115.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId116.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId118.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId119.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId120.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId121.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId122.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId123.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId124.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId125.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId126.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId127.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId128.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId129.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId130.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId131.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId132.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId133.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId134.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId135.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId136.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId137.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId138.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId139.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId140.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId141.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId142.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId143.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId144.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId145.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId146.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId147.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId148.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId149.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId150.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId151.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId152.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId153.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId154.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId155.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId156.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId157.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId158.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId159.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId160.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId161.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId162.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId163.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId164.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId165.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId166.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId167.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId168.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId169.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId170.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId171.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId172.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId173.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId174.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId175.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId176.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId177.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId178.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId179.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId180.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId181.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId182.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId183.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId184.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId185.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId186.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId187.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId188.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId189.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId190.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId191.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId192.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId193.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId194.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId195.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId196.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId197.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId198.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId199.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId200.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId201.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId202.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId203.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId204.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId205.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId206.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId207.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId208.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId209.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId210.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId211.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId212.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId213.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId214.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId215.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId216.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId217.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId218.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId219.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId220.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId221.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId222.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of R - Stairs 2.ma
