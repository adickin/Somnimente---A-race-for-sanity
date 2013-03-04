//Maya ASCII 2013 scene
//Name: L - Spiral.ma
//Last modified: Sun, Mar 03, 2013 09:44:34 PM
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
	setAttr ".t" -type "double3" 54.05624852966929 123.51430333151592 -8.9865263564959541 ;
	setAttr ".r" -type "double3" -30.600000000001582 -293.20000000002153 -8.0736641723731417e-15 ;
	setAttr ".rp" -type "double3" 0 4.4408920985006262e-16 -7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" -8.8695684802510772e-17 -8.135185762310286e-15 6.7254077719875502e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 34.895948314970795;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -8.5000014305114817 2.4966685771938408 -5.0000003576276626 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.4999985694885289 19.817179130601541 5.0000003576278749 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".rpt" -type "double3" 3.5289925977113304e-15 8.8896048311057269e-16 -5.3019263082016713e-15 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 17.320510553407331;
	setAttr ".ow" 37.871789914704102;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -8.4999985694885254 2.4966685771942103 5.0000003576278651 ;
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
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPipe1";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "transform3" -p "pPipe1";
	setAttr ".v" no;
createNode mesh -n "pPipeShape1" -p "transform3";
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
createNode transform -n "transform2" -p "pPipe2";
	setAttr ".v" no;
createNode mesh -n "pPipeShape2" -p "transform2";
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
createNode transform -n "transform1" -p "pPipe3";
	setAttr ".v" no;
createNode mesh -n "pPipeShape3" -p "transform1";
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
	setAttr ".t" -type "double3" 0 0.25 0 ;
createNode transform -n "transform6" -p "pPipe4";
	setAttr ".v" no;
createNode mesh -n "pPipeShape4" -p "transform6";
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
	setAttr ".t" -type "double3" 0 0.25 0 ;
createNode transform -n "transform5" -p "pPipe5";
	setAttr ".v" no;
createNode mesh -n "pPipeShape5" -p "transform5";
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
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "transform4" -p "pPipe6";
	setAttr ".v" no;
createNode mesh -n "pPipeShape6" -p "transform4";
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
	setAttr ".t" -type "double3" -8.5 0 0 ;
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
	setAttr -s 133 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[2]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[5]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[6]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[7]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[8]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[9]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[10]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[12]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[13]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[14]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[16]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[17]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[18]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[19]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[20]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[21]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[25]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[26]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[27]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[28]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[29]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[30]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[31]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[32]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[34]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[35]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[36]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[37]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[38]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[39]" -type "float3" 0 2.9892793 0 ;
	setAttr ".pt[40]" -type "float3" 0 3.486738 0 ;
	setAttr ".pt[41]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[42]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[43]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[45]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[46]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[47]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[48]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[49]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[50]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[51]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[52]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[53]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[54]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[56]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[57]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[58]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[59]" -type "float3" 0 1.9772084 0 ;
	setAttr ".pt[60]" -type "float3" 0 2.4918208 0 ;
	setAttr ".pt[61]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[62]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[63]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[64]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[65]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[67]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[68]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[69]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[70]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[71]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[72]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[73]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[74]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[75]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[76]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[78]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[79]" -type "float3" 0 0.99944419 0 ;
	setAttr ".pt[80]" -type "float3" 0 1.4969029 0 ;
	setAttr ".pt[81]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[82]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[83]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[84]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[85]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[86]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[87]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[89]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[90]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[91]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[92]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[93]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[94]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[95]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[96]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[97]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[98]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[99]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[100]" -type "float3" 0 0.49442732 0 ;
	setAttr ".pt[101]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[102]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[103]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[104]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[105]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[106]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[107]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[108]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[109]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[111]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[112]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[113]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[114]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[115]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[116]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[117]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[118]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[119]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[120]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[122]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[123]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[124]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[125]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[126]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[127]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[128]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[129]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[130]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[131]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[139]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[140]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[159]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[160]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[179]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[180]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[199]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[200]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[219]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[220]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[239]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface2";
	setAttr ".t" -type "double3" -8.5 5 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "transform7" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:119]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 165 ".uvst[0].uvsp[0:164]" -type "float2" 0 1 0.050000001 1
		 0.1 1 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005
		 1 0.50000006 1 0 0.75 0.050000001 0.75 0.1 0.75 0.15000001 0.75 0.2 0.75 0.25 0.75
		 0.30000001 0.75 0.35000002 0.75 0.40000004 0.75 0.45000005 0.75 0.50000006 0.75 0
		 0.5 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002
		 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0 0.25 0.050000001 0.25 0.1 0.25
		 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25
		 0.45000005 0.25 0.50000006 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0
		 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.050000001 1 0
		 1 0 0.75 0.050000001 0.75 0.1 1 0.1 0.75 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75
		 0.25 1 0.25 0.75 0.30000001 1 0.30000001 0.75 0.35000002 1 0.35000002 0.75 0.40000004
		 1 0.40000004 0.75 0.45000005 1 0.45000005 0.75 0.50000006 1 0.50000006 0.75 0 0.5
		 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002
		 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0 0.25 0.050000001 0.25 0.1 0.25
		 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25
		 0.45000005 0.25 0.50000006 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0
		 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.050000001 1 0
		 1 0 0.75 0.050000001 0.75 0.1 1 0.1 0.75 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75
		 0.25 1 0.25 0.75 0.30000001 1 0.30000001 0.75 0.35000002 1 0.35000002 0.75 0.40000004
		 1 0.40000004 0.75 0.45000005 1 0.45000005 0.75 0.50000006 1 0.50000006 0.75 0 0.5
		 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002
		 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0 0.25 0.050000001 0.25 0.1 0.25
		 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25
		 0.45000005 0.25 0.50000006 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0
		 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 133 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[2]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[5]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[6]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[7]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[8]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[9]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[10]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[12]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[13]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[14]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[16]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[17]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[18]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[19]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[20]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[21]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[25]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[26]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[27]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[28]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[29]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[30]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[31]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[32]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[34]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[35]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[36]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[37]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[38]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[39]" -type "float3" 0 2.9892793 0 ;
	setAttr ".pt[40]" -type "float3" 0 3.486738 0 ;
	setAttr ".pt[41]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[42]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[43]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[45]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[46]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[47]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[48]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[49]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[50]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[51]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[52]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[53]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[54]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[56]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[57]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[58]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[59]" -type "float3" 0 1.9772084 0 ;
	setAttr ".pt[60]" -type "float3" 0 2.4918208 0 ;
	setAttr ".pt[61]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[62]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[63]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[64]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[65]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[67]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[68]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[69]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[70]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[71]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[72]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[73]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[74]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[75]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[76]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[78]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[79]" -type "float3" 0 0.99944419 0 ;
	setAttr ".pt[80]" -type "float3" 0 1.4969029 0 ;
	setAttr ".pt[81]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[82]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[83]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[84]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[85]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[86]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[87]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[89]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[90]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[91]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[92]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[93]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[94]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[95]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[96]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[97]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[98]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[99]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[100]" -type "float3" 0 0.49442732 0 ;
	setAttr ".pt[101]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[102]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[103]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[104]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[105]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[106]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[107]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[108]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[109]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[111]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[112]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[113]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[114]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[115]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[116]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[117]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[118]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[119]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[120]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[122]" -type "float3" 0 0.4944275 0 ;
	setAttr ".pt[123]" -type "float3" 0 0.99944431 0 ;
	setAttr ".pt[124]" -type "float3" 0 1.4969031 0 ;
	setAttr ".pt[125]" -type "float3" 0 1.9772085 0 ;
	setAttr ".pt[126]" -type "float3" 0 2.4918211 0 ;
	setAttr ".pt[127]" -type "float3" 0 2.9892795 0 ;
	setAttr ".pt[128]" -type "float3" 0 3.4867382 0 ;
	setAttr ".pt[129]" -type "float3" 0 4.0013509 0 ;
	setAttr ".pt[130]" -type "float3" 0 4.4988093 0 ;
	setAttr ".pt[131]" -type "float3" 0 4.9933372 0 ;
	setAttr ".pt[139]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[140]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[159]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[160]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[179]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[180]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[199]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[200]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[219]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[220]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr ".pt[239]" -type "float3" 0 -1.7881393e-07 0 ;
	setAttr -s 132 ".vt[0:131]"  7 0 -5.5511151e-17 6.65739584 0 -2.16311908
		 5.66311932 0 -4.11449718 4.11449718 0 -5.66311979 2.16311932 0 -6.65739679 0 0 -7.000001430511
		 -2.16311955 0 -6.65739727 -4.11449814 0 -5.66312027 -5.66312075 0 -4.11449766 -6.65739775 0 -2.16311932
		 -7.000002384186 0 2.3841858e-07 7 0.5 5.5511151e-17 6.65739584 0.5 -2.16311908 5.66311932 0.5 -4.11449718
		 4.11449718 0.5 -5.66311979 2.16311932 0.5 -6.65739679 0 0.5 -7.000001430511 -2.16311955 0.5 -6.65739727
		 -4.11449814 0.5 -5.66312027 -5.66312075 0.5 -4.11449766 -6.65739775 0.5 -2.16311932
		 -7.000002384186 0.5 2.3841858e-07 7.25 0.5 5.5511151e-17 6.89515972 0.5 -2.24037337
		 5.86537313 0.5 -4.26144314 4.26144314 0.5 -5.86537313 2.24037313 0.5 -6.89515972
		 0 0.5 -7.25 -2.24037337 0.5 -6.89515972 -4.26144314 0.5 -5.86537313 -5.86537313 0.5 -4.26144314
		 -6.89515972 0.5 -2.24037313 -7.25 0.5 5.5511151e-17 7.25 0 -5.5511151e-17 6.89515972 0 -2.24037337
		 5.86537313 0 -4.26144314 4.26144314 0 -5.86537313 2.24037313 0 -6.89515972 0 0 -7.25
		 -2.24037337 0 -6.89515972 -4.26144314 0 -5.86537313 -5.86537313 0 -4.26144314 -6.89515972 0 -2.24037313
		 -7.25 0 -5.5511151e-17 9.75 0 -5.5511151e-17 9.2728014 0 -3.01291585 7.88791609 0 -5.73090649
		 5.73090696 0 -7.88791656 3.012916327 0 -9.27280235 2.3841858e-07 0 -9.75000191 -3.012916088 0 -9.27280331
		 -5.73090744 0 -7.887918 -7.88791752 0 -5.73090792 -9.27280331 0 -3.012916803 -9.75000286 0 -2.3841858e-07
		 9.75 0.5 5.5511151e-17 9.2728014 0.5 -3.01291585 7.88791609 0.5 -5.73090649 5.73090696 0.5 -7.88791656
		 3.012916327 0.5 -9.27280235 2.3841858e-07 0.5 -9.75000191 -3.012916088 0.5 -9.27280331
		 -5.73090744 0.5 -7.887918 -7.88791752 0.5 -5.73090792 -9.27280331 0.5 -3.012916803
		 -9.75000286 0.5 -2.3841858e-07 10 0.5 5.5511151e-17 9.51056576 0.5 -3.090169907 8.09017086 0.5 -5.87785244
		 5.87785387 0.5 -8.090169907 3.090171337 0.5 -9.51056576 1.1920929e-06 0.5 -10.000000953674
		 -3.090169191 0.5 -9.51056671 -5.87785244 0.5 -8.090171814 -8.09017086 0.5 -5.87785482
		 -9.51056671 0.5 -3.090172052 -10.000002861023 0.5 -1.4305115e-06 10 0 -5.5511151e-17
		 9.51056576 0 -3.090169907 8.09017086 0 -5.87785244 5.87785387 0 -8.090169907 3.090171337 0 -9.51056576
		 1.1920929e-06 0 -10.000000953674 -3.090169191 0 -9.51056671 -5.87785244 0 -8.090171814
		 -8.09017086 0 -5.87785482 -9.51056671 0 -3.090172052 -10.000002861023 0 -1.4305115e-06
		 7 -0.5 -5.5511151e-17 6.65739584 -0.5 -2.16311908 5.66311932 -0.5 -4.11449718 4.11449718 -0.5 -5.66311979
		 2.16311932 -0.5 -6.65739679 0 -0.5 -7.000001430511 -2.16311955 -0.5 -6.65739727 -4.11449814 -0.5 -5.66312027
		 -5.66312075 -0.5 -4.11449766 -6.65739775 -0.5 -2.16311932 -7.000002384186 -0.5 2.3841858e-07
		 7 0 5.5511151e-17 6.65739584 0 -2.16311908 5.66311932 0 -4.11449718 4.11449718 0 -5.66311979
		 2.16311932 0 -6.65739679 0 0 -7.000001430511 -2.16311955 0 -6.65739727 -4.11449814 0 -5.66312027
		 -5.66312075 0 -4.11449766 -6.65739775 0 -2.16311932 -7.000002384186 0 2.3841858e-07
		 10 0 5.5511151e-17 9.51056576 0 -3.090169907 8.09017086 0 -5.87785244 5.87785387 0 -8.090169907
		 3.090171337 0 -9.51056576 1.1920929e-06 0 -10.000000953674 -3.090169191 0 -9.51056671
		 -5.87785244 0 -8.090171814 -8.09017086 0 -5.87785482 -9.51056671 0 -3.090172052 -10.000002861023 0 -1.4305115e-06
		 10 -0.5 -5.5511151e-17 9.51056576 -0.5 -3.090169907 8.09017086 -0.5 -5.87785244 5.87785387 -0.5 -8.090169907
		 3.090171337 -0.5 -9.51056576 1.1920929e-06 -0.5 -10.000000953674 -3.090169191 -0.5 -9.51056671
		 -5.87785244 -0.5 -8.090171814 -8.09017086 -0.5 -5.87785482 -9.51056671 -0.5 -3.090172052
		 -10.000002861023 -0.5 -1.4305115e-06;
	setAttr -s 252 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0
		 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 0 11 0 1 12 1
		 2 13 1 3 14 1 4 15 1 5 16 1 6 17 1 7 18 1 8 19 1 9 20 1 10 21 0 11 22 0 12 23 1 13 24 1
		 14 25 1 15 26 1 16 27 1 17 28 1 18 29 1 19 30 1 20 31 1 21 32 0 22 33 0 23 34 1 24 35 1
		 25 36 1 26 37 1 27 38 1 28 39 1 29 40 1 30 41 1 31 42 1 32 43 0 33 0 0 34 1 1 35 2 1
		 36 3 1 37 4 1 38 5 1 39 6 1 40 7 1 41 8 1 42 9 1 43 10 0 44 45 0 45 46 0 46 47 0
		 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 55 56 0 56 57 0 57 58 0 58 59 0
		 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0
		 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0
		 83 84 0 84 85 0 85 86 0 86 87 0 44 55 0 45 56 1 46 57 1 47 58 1 48 59 1 49 60 1 50 61 1
		 51 62 1 52 63 1 53 64 1 54 65 0 55 66 0 56 67 1 57 68 1 58 69 1 59 70 1 60 71 1 61 72 1
		 62 73 1 63 74 1 64 75 1 65 76 0 66 77 0 67 78 1 68 79 1 69 80 1 70 81 1 71 82 1 72 83 1
		 73 84 1 74 85 1 75 86 1 76 87 0 77 44 0 78 45 1 79 46 1 80 47 1 81 48 1 82 49 1 83 50 1
		 84 51 1 85 52 1;
	setAttr ".ed[166:251]" 86 53 1 87 54 0 88 89 0 89 90 0 90 91 0 91 92 0 92 93 0
		 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0 99 100 0 100 101 0 101 102 0 102 103 0 103 104 0
		 104 105 0 105 106 0 106 107 0 107 108 0 108 109 0 110 111 0 111 112 0 112 113 0 113 114 0
		 114 115 0 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 88 99 0 89 100 1
		 90 101 1 91 102 1 92 103 1 93 104 1 94 105 1 95 106 1 96 107 1 97 108 1 98 109 0
		 99 110 0 100 111 1 101 112 1 102 113 1 103 114 1 104 115 1 105 116 1 106 117 1 107 118 1
		 108 119 1 109 120 0 110 121 0 111 122 1 112 123 1 113 124 1 114 125 1 115 126 1 116 127 1
		 117 128 1 118 129 1 119 130 1 120 131 0 121 88 0 122 89 1 123 90 1 124 91 1 125 92 1
		 126 93 1 127 94 1 128 95 1 129 96 1 130 97 1 131 98 0;
	setAttr -s 120 -ch 480 ".fc[0:119]" -type "polyFaces" 
		f 4 -1 40 10 -42
		mu 0 4 1 0 11 12
		f 4 -2 41 11 -43
		mu 0 4 2 1 12 13
		f 4 -3 42 12 -44
		mu 0 4 3 2 13 14
		f 4 -4 43 13 -45
		mu 0 4 4 3 14 15
		f 4 -5 44 14 -46
		mu 0 4 5 4 15 16
		f 4 -6 45 15 -47
		mu 0 4 6 5 16 17
		f 4 -7 46 16 -48
		mu 0 4 7 6 17 18
		f 4 -8 47 17 -49
		mu 0 4 8 7 18 19
		f 4 -9 48 18 -50
		mu 0 4 9 8 19 20
		f 4 -10 49 19 -51
		mu 0 4 10 9 20 21
		f 4 -11 51 20 -53
		mu 0 4 12 11 22 23
		f 4 -12 52 21 -54
		mu 0 4 13 12 23 24
		f 4 -13 53 22 -55
		mu 0 4 14 13 24 25
		f 4 -14 54 23 -56
		mu 0 4 15 14 25 26
		f 4 -15 55 24 -57
		mu 0 4 16 15 26 27
		f 4 -16 56 25 -58
		mu 0 4 17 16 27 28
		f 4 -17 57 26 -59
		mu 0 4 18 17 28 29
		f 4 -18 58 27 -60
		mu 0 4 19 18 29 30
		f 4 -19 59 28 -61
		mu 0 4 20 19 30 31
		f 4 -20 60 29 -62
		mu 0 4 21 20 31 32
		f 4 -21 62 30 -64
		mu 0 4 23 22 33 34
		f 4 -22 63 31 -65
		mu 0 4 24 23 34 35
		f 4 -23 64 32 -66
		mu 0 4 25 24 35 36
		f 4 -24 65 33 -67
		mu 0 4 26 25 36 37
		f 4 -25 66 34 -68
		mu 0 4 27 26 37 38
		f 4 -26 67 35 -69
		mu 0 4 28 27 38 39
		f 4 -27 68 36 -70
		mu 0 4 29 28 39 40
		f 4 -28 69 37 -71
		mu 0 4 30 29 40 41
		f 4 -29 70 38 -72
		mu 0 4 31 30 41 42
		f 4 -30 71 39 -73
		mu 0 4 32 31 42 43
		f 4 -31 73 0 -75
		mu 0 4 34 33 44 45
		f 4 -32 74 1 -76
		mu 0 4 35 34 45 46
		f 4 -33 75 2 -77
		mu 0 4 36 35 46 47
		f 4 -34 76 3 -78
		mu 0 4 37 36 47 48
		f 4 -35 77 4 -79
		mu 0 4 38 37 48 49
		f 4 -36 78 5 -80
		mu 0 4 39 38 49 50
		f 4 -37 79 6 -81
		mu 0 4 40 39 50 51
		f 4 -38 80 7 -82
		mu 0 4 41 40 51 52
		f 4 -39 81 8 -83
		mu 0 4 42 41 52 53
		f 4 -40 82 9 -84
		mu 0 4 43 42 53 54
		f 4 -85 124 94 -126
		mu 0 4 55 56 57 58
		f 4 -86 125 95 -127
		mu 0 4 59 55 58 60
		f 4 -87 126 96 -128
		mu 0 4 61 59 60 62
		f 4 -88 127 97 -129
		mu 0 4 63 61 62 64
		f 4 -89 128 98 -130
		mu 0 4 65 63 64 66
		f 4 -90 129 99 -131
		mu 0 4 67 65 66 68
		f 4 -91 130 100 -132
		mu 0 4 69 67 68 70
		f 4 -92 131 101 -133
		mu 0 4 71 69 70 72
		f 4 -93 132 102 -134
		mu 0 4 73 71 72 74
		f 4 -94 133 103 -135
		mu 0 4 75 73 74 76
		f 4 -95 135 104 -137
		mu 0 4 58 57 77 78
		f 4 -96 136 105 -138
		mu 0 4 60 58 78 79
		f 4 -97 137 106 -139
		mu 0 4 62 60 79 80
		f 4 -98 138 107 -140
		mu 0 4 64 62 80 81
		f 4 -99 139 108 -141
		mu 0 4 66 64 81 82
		f 4 -100 140 109 -142
		mu 0 4 68 66 82 83
		f 4 -101 141 110 -143
		mu 0 4 70 68 83 84
		f 4 -102 142 111 -144
		mu 0 4 72 70 84 85
		f 4 -103 143 112 -145
		mu 0 4 74 72 85 86
		f 4 -104 144 113 -146
		mu 0 4 76 74 86 87
		f 4 -105 146 114 -148
		mu 0 4 78 77 88 89
		f 4 -106 147 115 -149
		mu 0 4 79 78 89 90
		f 4 -107 148 116 -150
		mu 0 4 80 79 90 91
		f 4 -108 149 117 -151
		mu 0 4 81 80 91 92
		f 4 -109 150 118 -152
		mu 0 4 82 81 92 93
		f 4 -110 151 119 -153
		mu 0 4 83 82 93 94
		f 4 -111 152 120 -154
		mu 0 4 84 83 94 95
		f 4 -112 153 121 -155
		mu 0 4 85 84 95 96
		f 4 -113 154 122 -156
		mu 0 4 86 85 96 97
		f 4 -114 155 123 -157
		mu 0 4 87 86 97 98
		f 4 -115 157 84 -159
		mu 0 4 89 88 99 100
		f 4 -116 158 85 -160
		mu 0 4 90 89 100 101
		f 4 -117 159 86 -161
		mu 0 4 91 90 101 102
		f 4 -118 160 87 -162
		mu 0 4 92 91 102 103
		f 4 -119 161 88 -163
		mu 0 4 93 92 103 104
		f 4 -120 162 89 -164
		mu 0 4 94 93 104 105
		f 4 -121 163 90 -165
		mu 0 4 95 94 105 106
		f 4 -122 164 91 -166
		mu 0 4 96 95 106 107
		f 4 -123 165 92 -167
		mu 0 4 97 96 107 108
		f 4 -124 166 93 -168
		mu 0 4 98 97 108 109
		f 4 -169 208 178 -210
		mu 0 4 110 111 112 113
		f 4 -170 209 179 -211
		mu 0 4 114 110 113 115
		f 4 -171 210 180 -212
		mu 0 4 116 114 115 117
		f 4 -172 211 181 -213
		mu 0 4 118 116 117 119
		f 4 -173 212 182 -214
		mu 0 4 120 118 119 121
		f 4 -174 213 183 -215
		mu 0 4 122 120 121 123
		f 4 -175 214 184 -216
		mu 0 4 124 122 123 125
		f 4 -176 215 185 -217
		mu 0 4 126 124 125 127
		f 4 -177 216 186 -218
		mu 0 4 128 126 127 129
		f 4 -178 217 187 -219
		mu 0 4 130 128 129 131
		f 4 -179 219 188 -221
		mu 0 4 113 112 132 133
		f 4 -180 220 189 -222
		mu 0 4 115 113 133 134
		f 4 -181 221 190 -223
		mu 0 4 117 115 134 135
		f 4 -182 222 191 -224
		mu 0 4 119 117 135 136
		f 4 -183 223 192 -225
		mu 0 4 121 119 136 137
		f 4 -184 224 193 -226
		mu 0 4 123 121 137 138
		f 4 -185 225 194 -227
		mu 0 4 125 123 138 139
		f 4 -186 226 195 -228
		mu 0 4 127 125 139 140
		f 4 -187 227 196 -229
		mu 0 4 129 127 140 141
		f 4 -188 228 197 -230
		mu 0 4 131 129 141 142
		f 4 -189 230 198 -232
		mu 0 4 133 132 143 144
		f 4 -190 231 199 -233
		mu 0 4 134 133 144 145
		f 4 -191 232 200 -234
		mu 0 4 135 134 145 146
		f 4 -192 233 201 -235
		mu 0 4 136 135 146 147
		f 4 -193 234 202 -236
		mu 0 4 137 136 147 148
		f 4 -194 235 203 -237
		mu 0 4 138 137 148 149
		f 4 -195 236 204 -238
		mu 0 4 139 138 149 150
		f 4 -196 237 205 -239
		mu 0 4 140 139 150 151
		f 4 -197 238 206 -240
		mu 0 4 141 140 151 152
		f 4 -198 239 207 -241
		mu 0 4 142 141 152 153
		f 4 -199 241 168 -243
		mu 0 4 144 143 154 155
		f 4 -200 242 169 -244
		mu 0 4 145 144 155 156
		f 4 -201 243 170 -245
		mu 0 4 146 145 156 157
		f 4 -202 244 171 -246
		mu 0 4 147 146 157 158
		f 4 -203 245 172 -247
		mu 0 4 148 147 158 159
		f 4 -204 246 173 -248
		mu 0 4 149 148 159 160
		f 4 -205 247 174 -249
		mu 0 4 150 149 160 161
		f 4 -206 248 175 -250
		mu 0 4 151 150 161 162
		f 4 -207 249 176 -251
		mu 0 4 152 151 162 163
		f 4 -208 250 177 -252
		mu 0 4 153 152 163 164;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface3";
	setAttr ".s" -type "double3" 1 0.5 1 ;
createNode transform -n "polySurface4" -p "polySurface3";
createNode transform -n "transform14" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform14";
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
createNode transform -n "polySurface5" -p "polySurface3";
createNode transform -n "transform13" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform13";
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
createNode transform -n "polySurface6" -p "polySurface3";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface7" -p "polySurface3";
	setAttr ".t" -type "double3" 0 0.5 0 ;
createNode transform -n "transform11" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:85]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 120 ".uvst[0].uvsp[0:119]" -type "float2" 0.050000001 1 0 1
		 0 0.75 0.050000001 0.75 0.1 1 0.1 0.75 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75
		 0.25 1 0.25 0.75 0.30000001 1 0.30000001 0.75 0.35000002 1 0.35000002 0.75 0.40000004
		 1 0.40000004 0.75 0.45000005 1 0.45000005 0.75 0.50000006 1 0.50000006 0.75 0 0.5
		 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002
		 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0 0.25 0.050000001 0.25 0.1 0.25
		 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25
		 0.45000005 0.25 0.50000006 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0
		 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.050000001 1 0
		 1 0 0.75 0.050000001 0.75 0.1 1 0.1 0.75 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75
		 0.25 1 0.25 0.75 0.30000001 1 0.30000001 0.75 0.35000002 1 0.35000002 0.75 0.40000004
		 1 0.40000004 0.75 0.45000005 1 0.45000005 0.75 0.50000006 1 0.50000006 0.75 0 0.5
		 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002
		 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0 0.25 0.050000001 0.25 0.1 0.25
		 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25
		 0.45000005 0.25 0.50000006 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0
		 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.41666672 0.25
		 0.41666672 0.5 0.33333337 0.25 0.33333337 0.5 0.25000003 0.25 0.25000003 0.5 0.16666667
		 0.25 0.16666667 0.5 0.083333336 0.25 0.083333336 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 98 ".vt[0:97]"  -1.5 -1.7881393e-07 -5.5511151e-17 -1.84260416 0.4944275 -2.16311908
		 -2.83688068 0.99944431 -4.11449718 -4.38550282 1.49690306 -5.66311979 -6.33688068 1.9772085 -6.65739679
		 -8.5 2.49182105 -7.000001430511 -10.66311932 2.98927951 -6.65739727 -12.61449814 3.4867382 -5.66312027
		 -14.16312027 4.0013508797 -4.11449766 -15.15739822 4.49880934 -2.16311932 -15.50000191 4.99333715 2.3841858e-07
		 -1.5 0.5 5.5511151e-17 -1.84260416 0.9944275 -2.16311908 -2.83688068 1.49944425 -4.11449718
		 -4.38550282 1.99690306 -5.66311979 -6.33688068 2.47720861 -6.65739679 -8.5 2.99182105 -7.000001430511
		 -10.66311932 3.48927951 -6.65739727 -12.61449814 3.9867382 -5.66312027 -14.16312027 4.50135088 -4.11449766
		 -15.15739822 4.99880934 -2.16311932 -15.50000191 5.49333715 2.3841858e-07 -1.25 0.5 5.5511151e-17
		 -1.60484028 0.9944275 -2.24037337 -2.63462687 1.49944425 -4.26144314 -4.23855686 1.99690306 -5.86537313
		 -6.25962687 2.47720861 -6.89515972 -8.5 2.99182105 -7.25 -10.74037361 3.48927951 -6.89515972
		 -12.76144314 3.9867382 -5.86537313 -14.36537361 4.50135088 -4.26144314 -15.39515972 4.99880934 -2.24037313
		 -15.75 5.49333715 5.5511151e-17 -1.25 0 -5.5511151e-17 -1.60484028 0.4944275 -2.24037337
		 -2.63462687 0.99944431 -4.26144314 -4.23855686 1.49690306 -5.86537313 -6.25962687 1.9772085 -6.89515972
		 -8.5 2.49182105 -7.25 -10.74037361 2.98927927 -6.89515972 -12.76144314 3.48673797 -5.86537313
		 -14.36537361 4.0013508797 -4.26144314 -15.39515972 4.49880934 -2.24037313 -15.75 4.99333715 -5.5511151e-17
		 -15.5 5 -8.0174167e-16 -15.15739632 5.49442768 2.16311908 -14.16311932 5.99944448 4.11449718
		 -12.61449718 6.49690294 5.66311979 -10.66311932 6.97720861 6.65739679 -8.5 7.49182129 7.000001430511
		 -6.33688068 7.98927975 6.65739727 -4.38550186 8.4867382 5.66312027 -2.83687925 9.0013504028 4.11449766
		 -1.84260225 9.49880981 2.16311932 -1.49999762 9.99333763 -2.3841858e-07 -15.5 5.5 -9.1276397e-16
		 -15.15739632 5.99442768 2.16311908 -14.16311932 6.49944401 4.11449718 -12.61449718 6.99690294 5.66311979
		 -10.66311932 7.47720861 6.65739679 -8.5 7.99182129 7.000001430511 -6.33688068 8.48927975 6.65739727
		 -4.38550186 8.9867382 5.66312027 -2.83687925 9.5013504 4.11449766 -1.84260225 9.99880981 2.16311932
		 -1.49999762 10.49333763 -2.3841858e-07 -15.75 5.5 -9.4338019e-16 -15.39515972 5.99442768 2.24037337
		 -14.36537361 6.49944401 4.26144314 -12.76144314 6.99690294 5.86537313 -10.74037361 7.47720861 6.89515972
		 -8.5 7.99182129 7.25 -6.25962639 8.48927975 6.89515972 -4.23855686 8.9867382 5.86537313
		 -2.63462687 9.5013504 4.26144314 -1.60484028 9.99880981 2.24037313 -1.25 10.49333763 8.3235784e-16
		 -15.75 5 -8.3235784e-16 -15.39515972 5.49442768 2.24037337 -14.36537361 5.99944448 4.26144314
		 -12.76144314 6.49690294 5.86537313 -10.74037361 6.97720861 6.89515972 -8.5 7.49182129 7.25
		 -6.25962639 7.98927927 6.89515972 -4.23855686 8.4867382 5.86537313 -2.63462687 9.0013504028 4.26144314
		 -1.60484028 9.49880981 2.24037313 -1.25 9.99333763 9.4338019e-16 -15.75 4.99444771 -1.849856e-16
		 -15.75 5.49444723 -1.1097075e-16 -15.75 4.99555826 -3.1446006e-16 -15.75 5.49555779 -2.7745266e-16
		 -15.75 4.99666882 -4.4393452e-16 -15.75 5.49666834 -4.4393455e-16 -15.74999905 4.99777889 -5.7340896e-16
		 -15.74999905 5.49777889 -6.1041641e-16 -15.75 4.99888945 -7.028834e-16 -15.75 5.49888945 -7.768983e-16;
	setAttr -s 185 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0
		 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 0 11 0 1 12 1
		 2 13 1 3 14 1 4 15 1 5 16 1 6 17 1 7 18 1 8 19 1 9 20 1 10 21 0 11 22 0 12 23 1 13 24 1
		 14 25 1 15 26 1 16 27 1 17 28 1 18 29 1 19 30 1 20 31 1 21 32 0 22 33 0 23 34 1 24 35 1
		 25 36 1 26 37 1 27 38 1 28 39 1 29 40 1 30 41 1 31 42 1 32 43 0 33 0 0 34 1 1 35 2 1
		 36 3 1 37 4 1 38 5 1 39 6 1 40 7 1 41 8 1 42 9 1 43 10 0 44 45 0 45 46 0 46 47 0
		 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 55 56 0 56 57 0 57 58 0 58 59 0
		 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0
		 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0
		 83 84 0 84 85 0 85 86 0 86 87 0 44 55 0 45 56 1 46 57 1 47 58 1 48 59 1 49 60 1 50 61 1
		 51 62 1 52 63 1 53 64 1 54 65 0 55 66 0 56 67 1 57 68 1 58 69 1 59 70 1 60 71 1 61 72 1
		 62 73 1 63 74 1 64 75 1 65 76 0 66 77 0 67 78 1 68 79 1 69 80 1 70 81 1 71 82 1 72 83 1
		 73 84 1 74 85 1 75 86 1 76 87 0 77 44 0 78 45 1 79 46 1 80 47 1 81 48 1 82 49 1 83 50 1
		 84 51 1 85 52 1;
	setAttr ".ed[166:184]" 86 53 1 87 54 0 43 88 0 32 89 0 88 90 0 89 91 0 88 89 0
		 90 92 0 91 93 0 90 91 0 92 94 0 93 95 0 92 93 0 94 96 0 95 97 0 94 95 0 96 77 0 97 66 0
		 96 97 0;
	setAttr -s 86 -ch 344 ".fc[0:85]" -type "polyFaces" 
		f 4 -1 40 10 -42
		mu 0 4 0 1 2 3
		f 4 -2 41 11 -43
		mu 0 4 4 0 3 5
		f 4 -3 42 12 -44
		mu 0 4 6 4 5 7
		f 4 -4 43 13 -45
		mu 0 4 8 6 7 9
		f 4 -5 44 14 -46
		mu 0 4 10 8 9 11
		f 4 -6 45 15 -47
		mu 0 4 12 10 11 13
		f 4 -7 46 16 -48
		mu 0 4 14 12 13 15
		f 4 -8 47 17 -49
		mu 0 4 16 14 15 17
		f 4 -9 48 18 -50
		mu 0 4 18 16 17 19
		f 4 -10 49 19 -51
		mu 0 4 20 18 19 21
		f 4 -11 51 20 -53
		mu 0 4 3 2 22 23
		f 4 -12 52 21 -54
		mu 0 4 5 3 23 24
		f 4 -13 53 22 -55
		mu 0 4 7 5 24 25
		f 4 -14 54 23 -56
		mu 0 4 9 7 25 26
		f 4 -15 55 24 -57
		mu 0 4 11 9 26 27
		f 4 -16 56 25 -58
		mu 0 4 13 11 27 28
		f 4 -17 57 26 -59
		mu 0 4 15 13 28 29
		f 4 -18 58 27 -60
		mu 0 4 17 15 29 30
		f 4 -19 59 28 -61
		mu 0 4 19 17 30 31
		f 4 -20 60 29 -62
		mu 0 4 21 19 31 32
		f 4 -21 62 30 -64
		mu 0 4 23 22 33 34
		f 4 -22 63 31 -65
		mu 0 4 24 23 34 35
		f 4 -23 64 32 -66
		mu 0 4 25 24 35 36
		f 4 -24 65 33 -67
		mu 0 4 26 25 36 37
		f 4 -25 66 34 -68
		mu 0 4 27 26 37 38
		f 4 -26 67 35 -69
		mu 0 4 28 27 38 39
		f 4 -27 68 36 -70
		mu 0 4 29 28 39 40
		f 4 -28 69 37 -71
		mu 0 4 30 29 40 41
		f 4 -29 70 38 -72
		mu 0 4 31 30 41 42
		f 4 -30 71 39 -73
		mu 0 4 32 31 42 43
		f 4 -31 73 0 -75
		mu 0 4 34 33 44 45
		f 4 -32 74 1 -76
		mu 0 4 35 34 45 46
		f 4 -33 75 2 -77
		mu 0 4 36 35 46 47
		f 4 -34 76 3 -78
		mu 0 4 37 36 47 48
		f 4 -35 77 4 -79
		mu 0 4 38 37 48 49
		f 4 -36 78 5 -80
		mu 0 4 39 38 49 50
		f 4 -37 79 6 -81
		mu 0 4 40 39 50 51
		f 4 -38 80 7 -82
		mu 0 4 41 40 51 52
		f 4 -39 81 8 -83
		mu 0 4 42 41 52 53
		f 4 -40 82 9 -84
		mu 0 4 43 42 53 54
		f 4 -85 124 94 -126
		mu 0 4 55 56 57 58
		f 4 -86 125 95 -127
		mu 0 4 59 55 58 60
		f 4 -87 126 96 -128
		mu 0 4 61 59 60 62
		f 4 -88 127 97 -129
		mu 0 4 63 61 62 64
		f 4 -89 128 98 -130
		mu 0 4 65 63 64 66
		f 4 -90 129 99 -131
		mu 0 4 67 65 66 68
		f 4 -91 130 100 -132
		mu 0 4 69 67 68 70
		f 4 -92 131 101 -133
		mu 0 4 71 69 70 72
		f 4 -93 132 102 -134
		mu 0 4 73 71 72 74
		f 4 -94 133 103 -135
		mu 0 4 75 73 74 76
		f 4 -95 135 104 -137
		mu 0 4 58 57 77 78
		f 4 -96 136 105 -138
		mu 0 4 60 58 78 79
		f 4 -97 137 106 -139
		mu 0 4 62 60 79 80
		f 4 -98 138 107 -140
		mu 0 4 64 62 80 81
		f 4 -99 139 108 -141
		mu 0 4 66 64 81 82
		f 4 -100 140 109 -142
		mu 0 4 68 66 82 83
		f 4 -101 141 110 -143
		mu 0 4 70 68 83 84
		f 4 -102 142 111 -144
		mu 0 4 72 70 84 85
		f 4 -103 143 112 -145
		mu 0 4 74 72 85 86
		f 4 -104 144 113 -146
		mu 0 4 76 74 86 87
		f 4 -105 146 114 -148
		mu 0 4 78 77 88 89
		f 4 -106 147 115 -149
		mu 0 4 79 78 89 90
		f 4 -107 148 116 -150
		mu 0 4 80 79 90 91
		f 4 -108 149 117 -151
		mu 0 4 81 80 91 92
		f 4 -109 150 118 -152
		mu 0 4 82 81 92 93
		f 4 -110 151 119 -153
		mu 0 4 83 82 93 94
		f 4 -111 152 120 -154
		mu 0 4 84 83 94 95
		f 4 -112 153 121 -155
		mu 0 4 85 84 95 96
		f 4 -113 154 122 -156
		mu 0 4 86 85 96 97
		f 4 -114 155 123 -157
		mu 0 4 87 86 97 98
		f 4 -115 157 84 -159
		mu 0 4 89 88 99 100
		f 4 -116 158 85 -160
		mu 0 4 90 89 100 101
		f 4 -117 159 86 -161
		mu 0 4 91 90 101 102
		f 4 -118 160 87 -162
		mu 0 4 92 91 102 103
		f 4 -119 161 88 -163
		mu 0 4 93 92 103 104
		f 4 -120 162 89 -164
		mu 0 4 94 93 104 105
		f 4 -121 163 90 -165
		mu 0 4 95 94 105 106
		f 4 -122 164 91 -166
		mu 0 4 96 95 106 107
		f 4 -123 165 92 -167
		mu 0 4 97 96 107 108
		f 4 -124 166 93 -168
		mu 0 4 98 97 108 109
		f 4 72 168 172 -170
		mu 0 4 32 43 110 111
		f 4 -173 170 175 -172
		mu 0 4 111 110 112 113
		f 4 -176 173 178 -175
		mu 0 4 113 112 114 115
		f 4 -179 176 181 -178
		mu 0 4 115 114 116 117
		f 4 -182 179 184 -181
		mu 0 4 117 116 118 119
		f 4 -185 182 -147 -184
		mu 0 4 119 118 88 77;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface8" -p "polySurface3";
	setAttr ".t" -type "double3" 0 0.5 0 ;
createNode transform -n "transform10" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 128 ".uvst[0].uvsp[0:127]" -type "float2" 0.050000001 1 0 1
		 0 0.75 0.050000001 0.75 0.1 1 0.1 0.75 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75
		 0.25 1 0.25 0.75 0.30000001 1 0.30000001 0.75 0.35000002 1 0.35000002 0.75 0.40000004
		 1 0.40000004 0.75 0.45000005 1 0.45000005 0.75 0.50000006 1 0.50000006 0.75 0 0.5
		 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002
		 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0 0.25 0.050000001 0.25 0.1 0.25
		 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25
		 0.45000005 0.25 0.50000006 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0
		 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.050000001 1 0
		 1 0 0.75 0.050000001 0.75 0.1 1 0.1 0.75 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75
		 0.25 1 0.25 0.75 0.30000001 1 0.30000001 0.75 0.35000002 1 0.35000002 0.75 0.40000004
		 1 0.40000004 0.75 0.45000005 1 0.45000005 0.75 0.50000006 1 0.50000006 0.75 0 0.5
		 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002
		 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0 0.25 0.050000001 0.25 0.1 0.25
		 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25
		 0.45000005 0.25 0.50000006 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0
		 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0.83333331 1 0.16666667 1 0.66666669 1 0.33333334 1 0.5 1 0.5 1 0.33333331
		 1 0.66666663 1 0.16666666 1 0.83333331 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".vt[0:101]"  1.25 0 -5.5511151e-17 0.7728014 0.4944275 -3.01291585
		 -0.61208391 0.99944431 -5.73090649 -2.76909304 1.49690306 -7.88791656 -5.48708344 1.9772085 -9.27280235
		 -8.5 2.49182105 -9.75000191 -11.51291656 2.98927951 -9.27280331 -14.23090744 3.4867382 -7.887918
		 -16.38791656 4.0013508797 -5.73090792 -17.77280426 4.49880934 -3.012916803 -18.25000381 4.99333715 -2.3841858e-07
		 1.25 0.5 5.5511151e-17 0.7728014 0.9944275 -3.01291585 -0.61208391 1.49944425 -5.73090649
		 -2.76909304 1.99690306 -7.88791656 -5.48708344 2.47720838 -9.27280235 -8.5 2.99182081 -9.75000191
		 -11.51291656 3.48927951 -9.27280331 -14.23090744 3.9867382 -7.887918 -16.38791656 4.50135088 -5.73090792
		 -17.77280426 4.99880934 -3.012916803 -18.25000381 5.49333715 -2.3841858e-07 1.5 0.5 5.5511151e-17
		 1.010565758 0.9944275 -3.090169907 -0.40982914 1.49944425 -5.87785244 -2.62214613 1.99690306 -8.090169907
		 -5.40982866 2.47720861 -9.51056576 -8.49999905 2.99182105 -10.000000953674 -11.59016895 3.48927951 -9.51056671
		 -14.37785244 3.9867382 -8.090171814 -16.59017181 4.50135088 -5.87785482 -18.010566711 4.99880934 -3.090172052
		 -18.50000381 5.49333715 -1.4305115e-06 1.5 0 -5.5511151e-17 1.010565758 0.4944275 -3.090169907
		 -0.40982914 0.99944419 -5.87785244 -2.62214613 1.49690294 -8.090169907 -5.40982866 1.9772085 -9.51056576
		 -8.49999905 2.49182105 -10.000000953674 -11.59016895 2.98927951 -9.51056671 -14.37785244 3.4867382 -8.090171814
		 -16.59017181 4.0013508797 -5.87785482 -18.010566711 4.49880934 -3.090172052 -18.50000381 4.99333715 -1.4305115e-06
		 -18.25 5 -1.1385195e-15 -17.77280045 5.49442768 3.01291585 -16.38791656 5.99944448 5.73090649
		 -14.23090744 6.49690294 7.88791656 -11.51291656 6.97720861 9.27280235 -8.5 7.49182129 9.75000191
		 -5.48708391 7.98927975 9.27280331 -2.76909256 8.4867382 7.887918 -0.61208248 9.0013504028 5.73090792
		 0.77280331 9.49880981 3.012916803 1.25000286 9.99333763 2.3841858e-07 -18.25 5.5 -1.2495418e-15
		 -17.77280045 5.99442768 3.01291585 -16.38791656 6.49944401 5.73090649 -14.23090744 6.99690294 7.88791656
		 -11.51291656 7.47720814 9.27280235 -8.5 7.99182081 9.75000191 -5.48708391 8.48927975 9.27280331
		 -2.76909256 8.9867382 7.887918 -0.61208248 9.5013504 5.73090792 0.77280331 9.99880981 3.012916803
		 1.25000286 10.49333763 2.3841858e-07 -18.5 5.5 -1.280158e-15 -18.010566711 5.99442768 3.090169907
		 -16.59017181 6.49944401 5.87785244 -14.37785339 6.99690294 8.090169907 -11.59017181 7.47720861 9.51056576
		 -8.50000095 7.99182129 10.000000953674 -5.40983105 8.48927975 9.51056671 -2.62214756 8.9867382 8.090171814
		 -0.40982914 9.5013504 5.87785482 1.010566711 9.99880981 3.090172052 1.50000286 10.49333763 1.4305115e-06
		 -18.5 5 -1.1691356e-15 -18.010566711 5.49442768 3.090169907 -16.59017181 5.99944401 5.87785244
		 -14.37785339 6.49690294 8.090169907 -11.59017181 6.97720861 9.51056576 -8.50000095 7.49182129 10.000000953674
		 -5.40983105 7.98927975 9.51056671 -2.62214756 8.4867382 8.090171814 -0.40982914 9.0013504028 5.87785482
		 1.010566711 9.49880981 3.090172052 1.50000286 9.99333763 1.4305115e-06 -18.25000381 4.99333715 -2.3841858e-07
		 -18.25000381 5.49333715 -2.3841858e-07 -18.25 5 -1.1385195e-15 -18.25 5.5 -1.2495418e-15
		 -18.25000191 5.49444723 -1.9868214e-07 -18.25000191 4.99444771 -1.9868214e-07 -18.25000191 5.49555779 -1.5894572e-07
		 -18.25000191 4.99555826 -1.5894572e-07 -18.25000191 5.49666834 -1.1920929e-07 -18.25000191 4.99666882 -1.1920929e-07
		 -18.25 5.49777889 -7.9472855e-08 -18.25 4.99777889 -7.9472855e-08 -18.25 5.49888945 -3.9736427e-08
		 -18.25 4.99888945 -3.9736427e-08;
	setAttr -s 191 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0
		 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 0 11 0 1 12 1
		 2 13 1 3 14 1 4 15 1 5 16 1 6 17 1 7 18 1 8 19 1 9 20 1 10 21 0 11 22 0 12 23 1 13 24 1
		 14 25 1 15 26 1 16 27 1 17 28 1 18 29 1 19 30 1 20 31 1 21 32 0 22 33 0 23 34 1 24 35 1
		 25 36 1 26 37 1 27 38 1 28 39 1 29 40 1 30 41 1 31 42 1 32 43 0 33 0 0 34 1 1 35 2 1
		 36 3 1 37 4 1 38 5 1 39 6 1 40 7 1 41 8 1 42 9 1 43 10 0 44 45 0 45 46 0 46 47 0
		 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 55 56 0 56 57 0 57 58 0 58 59 0
		 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0
		 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0
		 83 84 0 84 85 0 85 86 0 86 87 0 44 55 0 45 56 1 46 57 1 47 58 1 48 59 1 49 60 1 50 61 1
		 51 62 1 52 63 1 53 64 1 54 65 0 55 66 0 56 67 1 57 68 1 58 69 1 59 70 1 60 71 1 61 72 1
		 62 73 1 63 74 1 64 75 1 65 76 0 66 77 0 67 78 1 68 79 1 69 80 1 70 81 1 71 82 1 72 83 1
		 73 84 1 74 85 1 75 86 1 76 87 0 77 44 0 78 45 1 79 46 1 80 47 1 81 48 1 82 49 1 83 50 1
		 84 51 1 85 52 1;
	setAttr ".ed[166:190]" 86 53 1 87 54 0 10 88 0 21 89 0 88 89 0 44 90 0 55 91 0
		 90 91 0 89 92 0 88 93 0 92 94 0 93 95 0 92 93 0 94 96 0 95 97 0 94 95 1 96 98 0 97 99 0
		 96 97 0 98 100 0 99 101 0 98 99 0 100 91 0 101 90 0 100 101 1;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 -1 40 10 -42
		mu 0 4 0 1 2 3
		f 4 -2 41 11 -43
		mu 0 4 4 0 3 5
		f 4 -3 42 12 -44
		mu 0 4 6 4 5 7
		f 4 -4 43 13 -45
		mu 0 4 8 6 7 9
		f 4 -5 44 14 -46
		mu 0 4 10 8 9 11
		f 4 -6 45 15 -47
		mu 0 4 12 10 11 13
		f 4 -7 46 16 -48
		mu 0 4 14 12 13 15
		f 4 -8 47 17 -49
		mu 0 4 16 14 15 17
		f 4 -9 48 18 -50
		mu 0 4 18 16 17 19
		f 4 -10 49 19 -51
		mu 0 4 20 18 19 21
		f 4 -11 51 20 -53
		mu 0 4 3 2 22 23
		f 4 -12 52 21 -54
		mu 0 4 5 3 23 24
		f 4 -13 53 22 -55
		mu 0 4 7 5 24 25
		f 4 -14 54 23 -56
		mu 0 4 9 7 25 26
		f 4 -15 55 24 -57
		mu 0 4 11 9 26 27
		f 4 -16 56 25 -58
		mu 0 4 13 11 27 28
		f 4 -17 57 26 -59
		mu 0 4 15 13 28 29
		f 4 -18 58 27 -60
		mu 0 4 17 15 29 30
		f 4 -19 59 28 -61
		mu 0 4 19 17 30 31
		f 4 -20 60 29 -62
		mu 0 4 21 19 31 32
		f 4 -21 62 30 -64
		mu 0 4 23 22 33 34
		f 4 -22 63 31 -65
		mu 0 4 24 23 34 35
		f 4 -23 64 32 -66
		mu 0 4 25 24 35 36
		f 4 -24 65 33 -67
		mu 0 4 26 25 36 37
		f 4 -25 66 34 -68
		mu 0 4 27 26 37 38
		f 4 -26 67 35 -69
		mu 0 4 28 27 38 39
		f 4 -27 68 36 -70
		mu 0 4 29 28 39 40
		f 4 -28 69 37 -71
		mu 0 4 30 29 40 41
		f 4 -29 70 38 -72
		mu 0 4 31 30 41 42
		f 4 -30 71 39 -73
		mu 0 4 32 31 42 43
		f 4 -31 73 0 -75
		mu 0 4 34 33 44 45
		f 4 -32 74 1 -76
		mu 0 4 35 34 45 46
		f 4 -33 75 2 -77
		mu 0 4 36 35 46 47
		f 4 -34 76 3 -78
		mu 0 4 37 36 47 48
		f 4 -35 77 4 -79
		mu 0 4 38 37 48 49
		f 4 -36 78 5 -80
		mu 0 4 39 38 49 50
		f 4 -37 79 6 -81
		mu 0 4 40 39 50 51
		f 4 -38 80 7 -82
		mu 0 4 41 40 51 52
		f 4 -39 81 8 -83
		mu 0 4 42 41 52 53
		f 4 -40 82 9 -84
		mu 0 4 43 42 53 54
		f 4 -85 124 94 -126
		mu 0 4 55 56 57 58
		f 4 -86 125 95 -127
		mu 0 4 59 55 58 60
		f 4 -87 126 96 -128
		mu 0 4 61 59 60 62
		f 4 -88 127 97 -129
		mu 0 4 63 61 62 64
		f 4 -89 128 98 -130
		mu 0 4 65 63 64 66
		f 4 -90 129 99 -131
		mu 0 4 67 65 66 68
		f 4 -91 130 100 -132
		mu 0 4 69 67 68 70
		f 4 -92 131 101 -133
		mu 0 4 71 69 70 72
		f 4 -93 132 102 -134
		mu 0 4 73 71 72 74
		f 4 -94 133 103 -135
		mu 0 4 75 73 74 76
		f 4 -95 135 104 -137
		mu 0 4 58 57 77 78
		f 4 -96 136 105 -138
		mu 0 4 60 58 78 79
		f 4 -97 137 106 -139
		mu 0 4 62 60 79 80
		f 4 -98 138 107 -140
		mu 0 4 64 62 80 81
		f 4 -99 139 108 -141
		mu 0 4 66 64 81 82
		f 4 -100 140 109 -142
		mu 0 4 68 66 82 83
		f 4 -101 141 110 -143
		mu 0 4 70 68 83 84
		f 4 -102 142 111 -144
		mu 0 4 72 70 84 85
		f 4 -103 143 112 -145
		mu 0 4 74 72 85 86
		f 4 -104 144 113 -146
		mu 0 4 76 74 86 87
		f 4 -105 146 114 -148
		mu 0 4 78 77 88 89
		f 4 -106 147 115 -149
		mu 0 4 79 78 89 90
		f 4 -107 148 116 -150
		mu 0 4 80 79 90 91
		f 4 -108 149 117 -151
		mu 0 4 81 80 91 92
		f 4 -109 150 118 -152
		mu 0 4 82 81 92 93
		f 4 -110 151 119 -153
		mu 0 4 83 82 93 94
		f 4 -111 152 120 -154
		mu 0 4 84 83 94 95
		f 4 -112 153 121 -155
		mu 0 4 85 84 95 96
		f 4 -113 154 122 -156
		mu 0 4 86 85 96 97
		f 4 -114 155 123 -157
		mu 0 4 87 86 97 98
		f 4 -115 157 84 -159
		mu 0 4 89 88 99 100
		f 4 -116 158 85 -160
		mu 0 4 90 89 100 101
		f 4 -117 159 86 -161
		mu 0 4 91 90 101 102
		f 4 -118 160 87 -162
		mu 0 4 92 91 102 103
		f 4 -119 161 88 -163
		mu 0 4 93 92 103 104
		f 4 -120 162 89 -164
		mu 0 4 94 93 104 105
		f 4 -121 163 90 -165
		mu 0 4 95 94 105 106
		f 4 -122 164 91 -166
		mu 0 4 96 95 106 107
		f 4 -123 165 92 -167
		mu 0 4 97 96 107 108
		f 4 -124 166 93 -168
		mu 0 4 98 97 108 109
		f 4 50 169 -171 -169
		mu 0 4 110 111 112 113
		f 4 -125 171 173 -173
		mu 0 4 114 115 116 117
		f 4 170 174 178 -176
		mu 0 4 113 112 118 119
		f 4 -179 176 181 -178
		mu 0 4 119 118 120 121
		f 4 -182 179 184 -181
		mu 0 4 121 120 122 123
		f 4 -185 182 187 -184
		mu 0 4 123 122 124 125
		f 4 -188 185 190 -187
		mu 0 4 125 124 126 127
		f 4 -191 188 -174 -190
		mu 0 4 127 126 117 116;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface9";
createNode transform -n "polySurface10" -p "polySurface9";
createNode transform -n "transform21" -p "polySurface10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform21";
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
createNode transform -n "polySurface11" -p "polySurface9";
createNode transform -n "transform20" -p "polySurface11";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform20";
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
createNode transform -n "polySurface12" -p "polySurface9";
createNode transform -n "transform19" -p "polySurface12";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform19";
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
createNode transform -n "polySurface13" -p "polySurface9";
createNode transform -n "transform18" -p "polySurface13";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform18";
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
createNode transform -n "polySurface14" -p "polySurface9";
createNode transform -n "transform17" -p "polySurface14";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform17";
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
createNode transform -n "transform15" -p "polySurface9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform15";
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
createNode transform -n "polySurface15" -p "polySurface9";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
createNode transform -n "transform16" -p "polySurface15";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:91]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.050000001 1 0 1
		 0 0.75 0.050000001 0.75 0.1 1 0.1 0.75 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75
		 0.25 1 0.25 0.75 0.30000001 1 0.30000001 0.75 0.35000002 1 0.35000002 0.75 0.40000004
		 1 0.40000004 0.75 0.45000005 1 0.45000005 0.75 0.50000006 1 0.50000006 0.75 0 0.5
		 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002
		 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0 0.25 0.050000001 0.25 0.1 0.25
		 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25
		 0.45000005 0.25 0.50000006 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0
		 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.050000001 1 0
		 1 0 0.75 0.050000001 0.75 0.1 1 0.1 0.75 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75
		 0.25 1 0.25 0.75 0.30000001 1 0.30000001 0.75 0.35000002 1 0.35000002 0.75 0.40000004
		 1 0.40000004 0.75 0.45000005 1 0.45000005 0.75 0.50000006 1 0.50000006 0.75 0 0.5
		 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002
		 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0 0.25 0.050000001 0.25 0.1 0.25
		 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25
		 0.45000005 0.25 0.50000006 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0
		 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.41666672 0.5 0.41666672
		 0.75 0.33333337 0.5 0.33333337 0.75 0.25000003 0.5 0.25000003 0.75 0.16666667 0.5
		 0.16666667 0.75 0.083333336 0.5 0.083333336 0.75 0.41666672 0 0.41666672 0.25 0.33333337
		 0 0.33333337 0.25 0.25000003 0 0.25000003 0.25 0.16666667 0 0.16666667 0.25 0.083333336
		 0 0.083333336 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 108 ".vt[0:107]"  -1.5 -0.25 -5.5511151e-17 -1.84260416 -0.0027862489 -2.16311908
		 -2.83688068 0.24972215 -4.11449718 -4.38550282 0.49845153 -5.66311979 -6.33688068 0.73860425 -6.65739679
		 -8.5 0.99591053 -7.000001430511 -10.66311932 1.24463975 -6.65739727 -12.61449814 1.4933691 -5.66312027
		 -14.16312027 1.75067544 -4.11449766 -15.15739822 1.99940467 -2.16311932 -15.50000191 2.24666858 2.3841858e-07
		 -1.5 -8.9406967e-08 5.5511151e-17 -1.84260416 0.24721366 -2.16311908 -2.83688068 0.49972215 -4.11449718
		 -4.38550282 0.74845153 -5.66311979 -6.33688068 0.98860425 -6.65739679 -8.5 1.24591053 -7.000001430511
		 -10.66311932 1.49463975 -6.65739727 -12.61449814 1.7433691 -5.66312027 -14.16312027 2.00067543983 -4.11449766
		 -15.15739822 2.24940467 -2.16311932 -15.50000191 2.49666858 2.3841858e-07 1.5 0 5.5511151e-17
		 1.010565758 0.24721375 -3.090169907 -0.40982914 0.49972215 -5.87785244 -2.62214613 0.74845153 -8.090169907
		 -5.40982866 0.98860425 -9.51056576 -8.49999905 1.24591053 -10.000000953674 -11.59016895 1.49463975 -9.51056671
		 -14.37785244 1.7433691 -8.090171814 -16.59017181 2.00067543983 -5.87785482 -18.010566711 2.24940467 -3.090172052
		 -18.50000381 2.49666858 -1.4305115e-06 1.5 -0.25 -5.5511151e-17 1.010565758 -0.0027862489 -3.090169907
		 -0.40982914 0.24972215 -5.87785244 -2.62214613 0.49845153 -8.090169907 -5.40982866 0.73860425 -9.51056576
		 -8.49999905 0.99591053 -10.000000953674 -11.59016895 1.24463975 -9.51056671 -14.37785244 1.4933691 -8.090171814
		 -16.59017181 1.75067544 -5.87785482 -18.010566711 1.99940467 -3.090172052 -18.50000381 2.24666858 -1.4305115e-06
		 -15.5 2.25 -8.0174167e-16 -15.15739632 2.49721384 2.16311908 -14.16311932 2.74972224 4.11449718
		 -12.61449718 2.99845147 5.66311979 -10.66311932 3.23860431 6.65739679 -8.5 3.49591064 7.000001430511
		 -6.33688068 3.74463987 6.65739727 -4.38550186 3.9933691 5.66312027 -2.83687925 4.2506752 4.11449766
		 -1.84260225 4.49940491 2.16311932 -1.49999762 4.74666882 -2.3841858e-07 -15.5 2.5 -9.1276397e-16
		 -15.15739632 2.7472136 2.16311908 -14.16311932 2.99972224 4.11449718 -12.61449718 3.24845147 5.66311979
		 -10.66311932 3.48860431 6.65739679 -8.5 3.74591064 7.000001430511 -6.33688068 3.99463987 6.65739727
		 -4.38550186 4.2433691 5.66312027 -2.83687925 4.5006752 4.11449766 -1.84260225 4.74940491 2.16311932
		 -1.49999762 4.99666882 -2.3841858e-07 -18.5 2.5 -1.280158e-15 -18.010566711 2.74721384 3.090169907
		 -16.59017181 2.99972224 5.87785244 -14.37785339 3.24845147 8.090169907 -11.59017181 3.48860431 9.51056576
		 -8.50000095 3.74591064 10.000000953674 -5.40983105 3.99463987 9.51056671 -2.62214756 4.2433691 8.090171814
		 -0.40982914 4.5006752 5.87785482 1.010566711 4.74940491 3.090172052 1.50000286 4.99666882 1.4305115e-06
		 -18.5 2.25 -1.1691356e-15 -18.010566711 2.49721384 3.090169907 -16.59017181 2.74972224 5.87785244
		 -14.37785339 2.99845147 8.090169907 -11.59017181 3.23860431 9.51056576 -8.50000095 3.49591064 10.000000953674
		 -5.40983105 3.74463987 9.51056671 -2.62214756 3.9933691 8.090171814 -0.40982914 4.2506752 5.87785482
		 1.010566711 4.49940491 3.090172052 1.50000286 4.74666882 1.4305115e-06 -18.50000381 2.49722385 -1.1920929e-06
		 -15.50000191 2.49722385 1.9868214e-07 -18.50000381 2.49777913 -9.5367432e-07 -15.50000191 2.49777913 1.5894572e-07
		 -18.50000381 2.49833441 -7.1525574e-07 -15.50000191 2.49833441 1.1920929e-07 -18.50000191 2.49888945 -4.7683713e-07
		 -15.50000095 2.49888945 7.9472855e-08 -18.5 2.49944472 -2.3841856e-07 -15.5 2.49944472 3.9736427e-08
		 -15.50000191 2.24722385 1.9868214e-07 -18.50000381 2.24722385 -1.1920929e-06 -15.50000191 2.24777913 1.5894572e-07
		 -18.50000381 2.24777913 -9.5367432e-07 -15.50000191 2.24833441 1.1920929e-07 -18.50000381 2.24833441 -7.1525574e-07
		 -15.50000095 2.24888945 7.9472855e-08 -18.50000191 2.24888945 -4.7683713e-07 -15.5 2.24944472 3.9736427e-08
		 -18.5 2.24944472 -2.3841856e-07;
	setAttr -s 202 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0
		 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 0 11 0 1 12 1
		 2 13 1 3 14 1 4 15 1 5 16 1 6 17 1 7 18 1 8 19 1 9 20 1 10 21 0 11 22 0 12 23 1 13 24 1
		 14 25 1 15 26 1 16 27 1 17 28 1 18 29 1 19 30 1 20 31 1 21 32 0 22 33 0 23 34 1 24 35 1
		 25 36 1 26 37 1 27 38 1 28 39 1 29 40 1 30 41 1 31 42 1 32 43 0 33 0 0 34 1 1 35 2 1
		 36 3 1 37 4 1 38 5 1 39 6 1 40 7 1 41 8 1 42 9 1 43 10 0 44 45 0 45 46 0 46 47 0
		 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 55 56 0 56 57 0 57 58 0 58 59 0
		 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0
		 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0
		 83 84 0 84 85 0 85 86 0 86 87 0 44 55 0 45 56 1 46 57 1 47 58 1 48 59 1 49 60 1 50 61 1
		 51 62 1 52 63 1 53 64 1 54 65 0 55 66 0 56 67 1 57 68 1 58 69 1 59 70 1 60 71 1 61 72 1
		 62 73 1 63 74 1 64 75 1 65 76 0 66 77 0 67 78 1 68 79 1 69 80 1 70 81 1 71 82 1 72 83 1
		 73 84 1 74 85 1 75 86 1 76 87 0 77 44 0 78 45 1 79 46 1 80 47 1 81 48 1 82 49 1 83 50 1
		 84 51 1 85 52 1;
	setAttr ".ed[166:201]" 86 53 1 87 54 0 32 88 0 21 89 0 88 90 0 89 91 0 88 89 1
		 90 92 0 91 93 0 90 91 1 92 94 0 93 95 0 92 93 1 94 96 0 95 97 0 94 95 1 96 66 0 97 55 0
		 96 97 1 10 98 0 43 99 0 98 100 0 99 101 0 98 99 1 100 102 0 101 103 0 100 101 1 102 104 0
		 103 105 0 102 103 1 104 106 0 105 107 0 104 105 1 106 44 0 107 77 0 106 107 1;
	setAttr -s 92 -ch 368 ".fc[0:91]" -type "polyFaces" 
		f 4 -1 40 10 -42
		mu 0 4 0 1 2 3
		f 4 -2 41 11 -43
		mu 0 4 4 0 3 5
		f 4 -3 42 12 -44
		mu 0 4 6 4 5 7
		f 4 -4 43 13 -45
		mu 0 4 8 6 7 9
		f 4 -5 44 14 -46
		mu 0 4 10 8 9 11
		f 4 -6 45 15 -47
		mu 0 4 12 10 11 13
		f 4 -7 46 16 -48
		mu 0 4 14 12 13 15
		f 4 -8 47 17 -49
		mu 0 4 16 14 15 17
		f 4 -9 48 18 -50
		mu 0 4 18 16 17 19
		f 4 -10 49 19 -51
		mu 0 4 20 18 19 21
		f 4 -11 51 20 -53
		mu 0 4 3 2 22 23
		f 4 -12 52 21 -54
		mu 0 4 5 3 23 24
		f 4 -13 53 22 -55
		mu 0 4 7 5 24 25
		f 4 -14 54 23 -56
		mu 0 4 9 7 25 26
		f 4 -15 55 24 -57
		mu 0 4 11 9 26 27
		f 4 -16 56 25 -58
		mu 0 4 13 11 27 28
		f 4 -17 57 26 -59
		mu 0 4 15 13 28 29
		f 4 -18 58 27 -60
		mu 0 4 17 15 29 30
		f 4 -19 59 28 -61
		mu 0 4 19 17 30 31
		f 4 -20 60 29 -62
		mu 0 4 21 19 31 32
		f 4 -21 62 30 -64
		mu 0 4 23 22 33 34
		f 4 -22 63 31 -65
		mu 0 4 24 23 34 35
		f 4 -23 64 32 -66
		mu 0 4 25 24 35 36
		f 4 -24 65 33 -67
		mu 0 4 26 25 36 37
		f 4 -25 66 34 -68
		mu 0 4 27 26 37 38
		f 4 -26 67 35 -69
		mu 0 4 28 27 38 39
		f 4 -27 68 36 -70
		mu 0 4 29 28 39 40
		f 4 -28 69 37 -71
		mu 0 4 30 29 40 41
		f 4 -29 70 38 -72
		mu 0 4 31 30 41 42
		f 4 -30 71 39 -73
		mu 0 4 32 31 42 43
		f 4 -31 73 0 -75
		mu 0 4 34 33 44 45
		f 4 -32 74 1 -76
		mu 0 4 35 34 45 46
		f 4 -33 75 2 -77
		mu 0 4 36 35 46 47
		f 4 -34 76 3 -78
		mu 0 4 37 36 47 48
		f 4 -35 77 4 -79
		mu 0 4 38 37 48 49
		f 4 -36 78 5 -80
		mu 0 4 39 38 49 50
		f 4 -37 79 6 -81
		mu 0 4 40 39 50 51
		f 4 -38 80 7 -82
		mu 0 4 41 40 51 52
		f 4 -39 81 8 -83
		mu 0 4 42 41 52 53
		f 4 -40 82 9 -84
		mu 0 4 43 42 53 54
		f 4 -85 124 94 -126
		mu 0 4 55 56 57 58
		f 4 -86 125 95 -127
		mu 0 4 59 55 58 60
		f 4 -87 126 96 -128
		mu 0 4 61 59 60 62
		f 4 -88 127 97 -129
		mu 0 4 63 61 62 64
		f 4 -89 128 98 -130
		mu 0 4 65 63 64 66
		f 4 -90 129 99 -131
		mu 0 4 67 65 66 68
		f 4 -91 130 100 -132
		mu 0 4 69 67 68 70
		f 4 -92 131 101 -133
		mu 0 4 71 69 70 72
		f 4 -93 132 102 -134
		mu 0 4 73 71 72 74
		f 4 -94 133 103 -135
		mu 0 4 75 73 74 76
		f 4 -95 135 104 -137
		mu 0 4 58 57 77 78
		f 4 -96 136 105 -138
		mu 0 4 60 58 78 79
		f 4 -97 137 106 -139
		mu 0 4 62 60 79 80
		f 4 -98 138 107 -140
		mu 0 4 64 62 80 81
		f 4 -99 139 108 -141
		mu 0 4 66 64 81 82
		f 4 -100 140 109 -142
		mu 0 4 68 66 82 83
		f 4 -101 141 110 -143
		mu 0 4 70 68 83 84
		f 4 -102 142 111 -144
		mu 0 4 72 70 84 85
		f 4 -103 143 112 -145
		mu 0 4 74 72 85 86
		f 4 -104 144 113 -146
		mu 0 4 76 74 86 87
		f 4 -105 146 114 -148
		mu 0 4 78 77 88 89
		f 4 -106 147 115 -149
		mu 0 4 79 78 89 90
		f 4 -107 148 116 -150
		mu 0 4 80 79 90 91
		f 4 -108 149 117 -151
		mu 0 4 81 80 91 92
		f 4 -109 150 118 -152
		mu 0 4 82 81 92 93
		f 4 -110 151 119 -153
		mu 0 4 83 82 93 94
		f 4 -111 152 120 -154
		mu 0 4 84 83 94 95
		f 4 -112 153 121 -155
		mu 0 4 85 84 95 96
		f 4 -113 154 122 -156
		mu 0 4 86 85 96 97
		f 4 -114 155 123 -157
		mu 0 4 87 86 97 98
		f 4 -115 157 84 -159
		mu 0 4 89 88 99 100
		f 4 -116 158 85 -160
		mu 0 4 90 89 100 101
		f 4 -117 159 86 -161
		mu 0 4 91 90 101 102
		f 4 -118 160 87 -162
		mu 0 4 92 91 102 103
		f 4 -119 161 88 -163
		mu 0 4 93 92 103 104
		f 4 -120 162 89 -164
		mu 0 4 94 93 104 105
		f 4 -121 163 90 -165
		mu 0 4 95 94 105 106
		f 4 -122 164 91 -166
		mu 0 4 96 95 106 107
		f 4 -123 165 92 -167
		mu 0 4 97 96 107 108
		f 4 -124 166 93 -168
		mu 0 4 98 97 108 109
		f 4 61 168 172 -170
		mu 0 4 21 32 110 111
		f 4 -173 170 175 -172
		mu 0 4 111 110 112 113
		f 4 -176 173 178 -175
		mu 0 4 113 112 114 115
		f 4 -179 176 181 -178
		mu 0 4 115 114 116 117
		f 4 -182 179 184 -181
		mu 0 4 117 116 118 119
		f 4 -185 182 -136 -184
		mu 0 4 119 118 77 57
		f 4 83 185 189 -187
		mu 0 4 43 54 120 121
		f 4 -190 187 192 -189
		mu 0 4 121 120 122 123
		f 4 -193 190 195 -192
		mu 0 4 123 122 124 125
		f 4 -196 193 198 -195
		mu 0 4 125 124 126 127
		f 4 -199 196 201 -198
		mu 0 4 127 126 128 129
		f 4 -202 199 -158 -201
		mu 0 4 129 128 99 88;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface16";
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "polySurface17" -p "polySurface16";
createNode transform -n "transform28" -p "polySurface17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform28";
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
createNode transform -n "polySurface18" -p "polySurface16";
createNode transform -n "transform27" -p "polySurface18";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform27";
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
createNode transform -n "polySurface19" -p "polySurface16";
createNode transform -n "transform26" -p "polySurface19";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform26";
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
createNode transform -n "polySurface20" -p "polySurface16";
createNode transform -n "transform25" -p "polySurface20";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform25";
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
createNode transform -n "polySurface21" -p "polySurface16";
createNode transform -n "transform24" -p "polySurface21";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform24";
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
createNode transform -n "polySurface22" -p "polySurface16";
createNode transform -n "transform23" -p "polySurface22";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform23";
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
createNode transform -n "transform22" -p "polySurface16";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform22";
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
createNode transform -n "polySurface23";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 7 7 7 ;
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
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyPipe -n "polyPipe1";
	setAttr ".r" 10;
	setAttr ".h" 1;
	setAttr ".t" 3;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe2";
	setAttr ".r" 10;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe3";
	setAttr ".r" 7.25;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sa" 32;
	setAttr ".sc" 0;
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
createNode polyPipe -n "polyPipe4";
	setAttr ".r" 7.25;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe5";
	setAttr ".r" 10;
	setAttr ".h" 1;
	setAttr ".t" 0.25;
	setAttr ".sc" 0;
createNode polyPipe -n "polyPipe6";
	setAttr ".r" 10;
	setAttr ".h" 1;
	setAttr ".t" 3;
	setAttr ".sc" 0;
createNode polyUnite -n "polyUnite1";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:239]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 12 "f[10:19]" "f[30:39]" "f[50:59]" "f[70:79]" "f[90:99]" "f[110:119]" "f[130:139]" "f[150:159]" "f[170:179]" "f[190:199]" "f[210:219]" "f[230:239]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:239]";
	setAttr ".gi" 54;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 2 "e[229]" "e[471]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 109;
	setAttr ".sv2" 242;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:245]";
	setAttr ".gi" 55;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[251]" "e[493]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 131;
	setAttr ".sv2" 220;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
	setAttr ".gi" 56;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[134]" "e[376]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -18.250002 5.2466683 -1.1920929e-07 ;
	setAttr ".rs" 1039738620;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -18.250003814697266 4.9933371543884277 -2.384185791015625e-07 ;
	setAttr ".cbx" -type "double3" -18.25 5.5 -1.1385195366567255e-15 ;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:253]";
	setAttr ".gi" 57;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[540]" "e[543]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 284;
	setAttr ".sv2" 287;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:259]";
	setAttr ".gi" 58;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[72]" "e[314]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 32;
	setAttr ".sv2" 165;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:265]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:85]";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:87]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:91]";
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite3";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:439]";
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
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 5;
	setAttr -s 5 ".out";
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:85]";
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:87]";
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:91]";
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:85]";
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:87]";
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite4";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:531]";
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 6;
	setAttr -s 6 ".out";
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 172 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]";
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 176 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]";
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 184 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]" "f[176]" "f[177]" "f[178]" "f[179]" "f[180]" "f[181]" "f[182]" "f[183]";
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 172 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]";
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 176 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]";
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 184 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]" "f[176]" "f[177]" "f[178]" "f[179]" "f[180]" "f[181]" "f[182]" "f[183]";
createNode polyUnite -n "polyUnite5";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1063]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 35 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 35 ".gn";
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
connectAttr "groupId1.id" "pPipeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pPipeShape1.i";
connectAttr "groupId2.id" "pPipeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pPipeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pPipeShape2.i";
connectAttr "groupId4.id" "pPipeShape2.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pPipeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape3.iog.og[0].gco";
connectAttr "groupParts3.og" "pPipeShape3.i";
connectAttr "groupId6.id" "pPipeShape3.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pPipeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape4.iog.og[0].gco";
connectAttr "groupParts4.og" "pPipeShape4.i";
connectAttr "groupId8.id" "pPipeShape4.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pPipeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape5.iog.og[0].gco";
connectAttr "groupParts5.og" "pPipeShape5.i";
connectAttr "groupId10.id" "pPipeShape5.ciog.cog[0].cgid";
connectAttr "groupId11.id" "pPipeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape6.iog.og[0].gco";
connectAttr "groupParts6.og" "pPipeShape6.i";
connectAttr "groupId12.id" "pPipeShape6.ciog.cog[0].cgid";
connectAttr "deleteComponent1.og" "polySurfaceShape1.i";
connectAttr "groupId13.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId14.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape4.i";
connectAttr "groupId16.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape5.i";
connectAttr "groupId17.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape6.i";
connectAttr "groupId18.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape3.i";
connectAttr "groupId15.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId19.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId20.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape10.i";
connectAttr "groupId22.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape11.i";
connectAttr "groupId23.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape12.i";
connectAttr "groupId24.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape13.i";
connectAttr "groupId25.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape14.i";
connectAttr "groupId26.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape9.i";
connectAttr "groupId21.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId27.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape17.i";
connectAttr "groupId29.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape18.i";
connectAttr "groupId30.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape19.i";
connectAttr "groupId31.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape20.i";
connectAttr "groupId32.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape21.i";
connectAttr "groupId33.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape22.i";
connectAttr "groupId34.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "polyTriangulate1.out" "polySurfaceShape16.i";
connectAttr "groupId28.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape23.i";
connectAttr "groupId35.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyPipe1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyPipe2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyPipe3.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pPipeShape4.o" "polyUnite1.ip[0]";
connectAttr "pPipeShape5.o" "polyUnite1.ip[1]";
connectAttr "pPipeShape6.o" "polyUnite1.ip[2]";
connectAttr "pPipeShape4.wm" "polyUnite1.im[0]";
connectAttr "pPipeShape5.wm" "polyUnite1.im[1]";
connectAttr "pPipeShape6.wm" "polyUnite1.im[2]";
connectAttr "polyPipe4.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyPipe5.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polyPipe6.out" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "polyUnite1.out" "groupParts7.ig";
connectAttr "groupId13.id" "groupParts7.gi";
connectAttr "groupParts7.og" "deleteComponent1.ig";
connectAttr "polySurfaceShape1.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape2.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape1.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape2.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts8.ig";
connectAttr "groupParts8.og" "polyBridgeEdge1.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "groupParts9.ig";
connectAttr "groupParts9.og" "polyBridgeEdge2.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "groupParts10.ig";
connectAttr "groupParts10.og" "polyExtrudeEdge1.ip";
connectAttr "polySurfaceShape3.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "groupParts11.ig";
connectAttr "groupParts11.og" "polyBridgeEdge3.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "groupParts12.ig";
connectAttr "groupParts12.og" "polyBridgeEdge4.ip";
connectAttr "polySurfaceShape3.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "groupParts13.ig";
connectAttr "groupId15.id" "groupParts13.gi";
connectAttr "polySurfaceShape3.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts14.ig";
connectAttr "groupId16.id" "groupParts14.gi";
connectAttr "polySeparate1.out[1]" "groupParts15.ig";
connectAttr "groupId17.id" "groupParts15.gi";
connectAttr "polySeparate1.out[2]" "groupParts16.ig";
connectAttr "groupId18.id" "groupParts16.gi";
connectAttr "polySurfaceShape4.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape5.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape6.o" "polyUnite3.ip[2]";
connectAttr "polySurfaceShape7.o" "polyUnite3.ip[3]";
connectAttr "polySurfaceShape8.o" "polyUnite3.ip[4]";
connectAttr "polySurfaceShape4.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape5.wm" "polyUnite3.im[1]";
connectAttr "polySurfaceShape6.wm" "polyUnite3.im[2]";
connectAttr "polySurfaceShape7.wm" "polyUnite3.im[3]";
connectAttr "polySurfaceShape8.wm" "polyUnite3.im[4]";
connectAttr "polyUnite3.out" "groupParts17.ig";
connectAttr "groupId21.id" "groupParts17.gi";
connectAttr "polySurfaceShape9.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts18.ig";
connectAttr "groupId22.id" "groupParts18.gi";
connectAttr "polySeparate2.out[1]" "groupParts19.ig";
connectAttr "groupId23.id" "groupParts19.gi";
connectAttr "polySeparate2.out[2]" "groupParts20.ig";
connectAttr "groupId24.id" "groupParts20.gi";
connectAttr "polySeparate2.out[3]" "groupParts21.ig";
connectAttr "groupId25.id" "groupParts21.gi";
connectAttr "polySeparate2.out[4]" "groupParts22.ig";
connectAttr "groupId26.id" "groupParts22.gi";
connectAttr "polySurfaceShape10.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape11.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape12.o" "polyUnite4.ip[2]";
connectAttr "polySurfaceShape13.o" "polyUnite4.ip[3]";
connectAttr "polySurfaceShape14.o" "polyUnite4.ip[4]";
connectAttr "polySurfaceShape15.o" "polyUnite4.ip[5]";
connectAttr "polySurfaceShape10.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape11.wm" "polyUnite4.im[1]";
connectAttr "polySurfaceShape12.wm" "polyUnite4.im[2]";
connectAttr "polySurfaceShape13.wm" "polyUnite4.im[3]";
connectAttr "polySurfaceShape14.wm" "polyUnite4.im[4]";
connectAttr "polySurfaceShape15.wm" "polyUnite4.im[5]";
connectAttr "polyUnite4.out" "groupParts23.ig";
connectAttr "groupId28.id" "groupParts23.gi";
connectAttr "groupParts23.og" "polyTriangulate1.ip";
connectAttr "polySurfaceShape16.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts24.ig";
connectAttr "groupId29.id" "groupParts24.gi";
connectAttr "polySeparate3.out[1]" "groupParts25.ig";
connectAttr "groupId30.id" "groupParts25.gi";
connectAttr "polySeparate3.out[2]" "groupParts26.ig";
connectAttr "groupId31.id" "groupParts26.gi";
connectAttr "polySeparate3.out[3]" "groupParts27.ig";
connectAttr "groupId32.id" "groupParts27.gi";
connectAttr "polySeparate3.out[4]" "groupParts28.ig";
connectAttr "groupId33.id" "groupParts28.gi";
connectAttr "polySeparate3.out[5]" "groupParts29.ig";
connectAttr "groupId34.id" "groupParts29.gi";
connectAttr "polySurfaceShape17.o" "polyUnite5.ip[0]";
connectAttr "polySurfaceShape18.o" "polyUnite5.ip[1]";
connectAttr "polySurfaceShape19.o" "polyUnite5.ip[2]";
connectAttr "polySurfaceShape20.o" "polyUnite5.ip[3]";
connectAttr "polySurfaceShape21.o" "polyUnite5.ip[4]";
connectAttr "polySurfaceShape22.o" "polyUnite5.ip[5]";
connectAttr "polySurfaceShape17.wm" "polyUnite5.im[0]";
connectAttr "polySurfaceShape18.wm" "polyUnite5.im[1]";
connectAttr "polySurfaceShape19.wm" "polyUnite5.im[2]";
connectAttr "polySurfaceShape20.wm" "polyUnite5.im[3]";
connectAttr "polySurfaceShape21.wm" "polyUnite5.im[4]";
connectAttr "polySurfaceShape22.wm" "polyUnite5.im[5]";
connectAttr "polyUnite5.out" "groupParts30.ig";
connectAttr "groupId35.id" "groupParts30.gi";
connectAttr "pPipeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of L - Spiral.ma
