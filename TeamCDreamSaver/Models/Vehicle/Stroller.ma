//Maya ASCII 2013 scene
//Name: Stroller.ma
//Last modified: Sun, Feb 03, 2013 08:43:12 PM
//Codeset: 1252
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220241-825136";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.342615395871604 27.920660923425487 16.468744459293898 ;
	setAttr ".r" -type "double3" 310.20000000077499 -1043.5999999998601 0 ;
	setAttr ".rpt" -type "double3" -3.8785292233007602e-015 5.4112848109481956e-015 
		7.8711410775780378e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 37.639974238224852;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 8.7172093478796135 1.2000002980232238 7.2953070609029655 ;
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
createNode transform -n "group";
	setAttr ".rp" -type "double3" -6.8564826162074048 0.60130681182549051 4.3003564373791932 ;
	setAttr ".sp" -type "double3" -6.8564826162074048 0.60130681182549051 4.3003564373791932 ;
createNode transform -n "group1";
	setAttr ".rp" -type "double3" -6.8564826162074048 0.60130681182549051 4.3003564373791932 ;
	setAttr ".sp" -type "double3" -6.8564826162074048 0.60130681182549051 4.3003564373791932 ;
createNode transform -n "group2";
	setAttr ".rp" -type "double3" -6.8564826162074048 0.60130681182549051 4.3003564373791932 ;
	setAttr ".sp" -type "double3" -6.8564826162074048 0.60130681182549051 4.3003564373791932 ;
createNode transform -n "pCylinder3";
	setAttr ".t" -type "double3" 0 3.5123969005044557 0 ;
	setAttr ".r" -type "double3" 90 90 0 ;
	setAttr ".s" -type "double3" 2.6130059842002122 1.9079800470290693 2 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr -av ".iog[0].og[2].gid";
	setAttr -av ".iog[0].og[4].gid";
	setAttr -av ".iog[0].og[6].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group3";
	setAttr ".rp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
	setAttr ".sp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
createNode transform -n "pasted__pCylinder1" -p "group3";
	setAttr ".t" -type "double3" 2.955 1.2 2 ;
	setAttr ".r" -type "double3" 90 90 0 ;
createNode mesh -n "pasted__pCylinderShape1" -p "pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group4";
	setAttr ".rp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
	setAttr ".sp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
createNode transform -n "group5";
	setAttr ".rp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
	setAttr ".sp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
createNode transform -n "group6";
	setAttr ".rp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
	setAttr ".sp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
createNode transform -n "group7";
	setAttr ".rp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
	setAttr ".sp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
createNode transform -n "group8";
	setAttr ".rp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
	setAttr ".sp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
createNode transform -n "group9";
	setAttr ".rp" -type "double3" -2.955 1.2000002980232238 -2.0000001788139343 ;
	setAttr ".sp" -type "double3" -2.955 1.2000002980232238 -2.0000001788139343 ;
createNode transform -n "pasted__group3" -p "group9";
	setAttr ".rp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
	setAttr ".sp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
createNode transform -n "pasted__pasted__pCylinder1" -p "|group9|pasted__group3";
	setAttr ".t" -type "double3" 2.955 1.2 -2 ;
	setAttr ".r" -type "double3" 90 90 0 ;
createNode mesh -n "pasted__pasted__pCylinderShape1" -p "|group9|pasted__group3|pasted__pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group10";
	setAttr ".rp" -type "double3" -2.955 1.2000002980232238 -2.0000001788139343 ;
	setAttr ".sp" -type "double3" -2.955 1.2000002980232238 -2.0000001788139343 ;
createNode transform -n "pasted__group3" -p "group10";
	setAttr ".rp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
	setAttr ".sp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
createNode transform -n "pasted__pasted__pCylinder1" -p "|group10|pasted__group3";
	setAttr ".t" -type "double3" -2.955 1.2 2 ;
	setAttr ".r" -type "double3" 90 270 0 ;
createNode mesh -n "pasted__pasted__pCylinderShape1" -p "|group10|pasted__group3|pasted__pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group11";
	setAttr ".rp" -type "double3" -2.955 1.2000002980232238 -2.0000001788139343 ;
	setAttr ".sp" -type "double3" -2.955 1.2000002980232238 -2.0000001788139343 ;
createNode transform -n "pasted__group3" -p "group11";
	setAttr ".rp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
	setAttr ".sp" -type "double3" 8.7172093478796135 1.2000002980232238 2.5000001788139343 ;
createNode transform -n "pasted__pasted__pCylinder1" -p "|group11|pasted__group3";
	setAttr ".t" -type "double3" -2.955 1.2 -2 ;
	setAttr ".r" -type "double3" 90 270 0 ;
createNode mesh -n "pasted__pasted__pCylinderShape1" -p "|group11|pasted__group3|pasted__pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 15 ".lnk";
	setAttr -s 15 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder3";
	setAttr ".r" 1.8625590729259049;
	setAttr ".h" 2.4611441307950161;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 3 "f[4:8]" "f[24:28]" "f[44:48]";
	setAttr ".ix" -type "matrix" 4.4408920985006262e-016 0 -2 0 1.9079800470290693 4.2365667574741235e-016 4.2365667574741235e-016 0
		 4.4408920985006262e-016 -2 0 0 0 3.5123969005044557 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.8817842e-016 5.3749566 1.8625596 ;
	setAttr ".rs" 46498;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3479070217288824 3.5123969005044553 -5.213400870404963e-016 ;
	setAttr ".cbx" -type "double3" 2.3479070217288811 7.2375167296823122 3.7251191139221196 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 3 "f[4:8]" "f[24:28]" "f[44:48]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySubdFace -n "polySubdFace1";
	setAttr ".ics" -type "componentList" 1 "f[174:179]";
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[174:197]";
	setAttr ".ix" -type "matrix" 5.8020388142847873e-016 0 -2.6130059842002122 0 1.9079800470290693 4.2365667574741235e-016 4.2365667574741235e-016 0
		 4.4408920985006262e-016 -2 0 0 0 3.5123969005044557 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.8817842e-016 5.1335139 2.1179936 ;
	setAttr ".rs" 55152;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0870285395753205 3.650364308207855 0.18025479203996322 ;
	setAttr ".cbx" -type "double3" 2.0870285395753205 6.6166633056100466 4.0557324120625333 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[174:197]";
	setAttr ".ix" -type "matrix" 5.8020388142847873e-016 0 -2.6130059842002122 0 1.9079800470290693 4.2365667574741235e-016 4.2365667574741235e-016 0
		 4.4408920985006262e-016 -2 0 0 0 3.5123969005044557 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.8817842e-016 5.1335135 2.1179936 ;
	setAttr ".rs" 42721;
	setAttr ".lt" -type "double3" -1.1102230246251565e-016 -3.8857805861880479e-016 
		-0.32123613213828467 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0870285395753205 3.6503642486032102 0.18025479203996322 ;
	setAttr ".cbx" -type "double3" 2.0870285395753205 6.6166630671914675 4.0557324120625333 ;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polySmoothFace -n "polySmoothFace6";
	setAttr ".ics" -type "componentList" 1 "f[174:197]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
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
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode phongE -n "phongE1";
createNode shadingEngine -n "phongE1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "phongE2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode phong -n "phong1";
	setAttr ".c" -type "float3" 0.88235295 0.1384083 0.82413721 ;
	setAttr ".sc" -type "float3" 1 0.15689327 0.93403524 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "phongE3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/TamXi/Desktop/rs-alloy-wheel.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/TamXi/Desktop/wheel-texture-mapped_1.img_assist_custom-320x313.png";
	setAttr ".ft" 1;
	setAttr ".pf" yes;
	setAttr ".pfr" 1;
createNode place2dTexture -n "place2dTexture2";
createNode phong -n "phong2";
	setAttr ".c" -type "float3" 0.7647059 0.16493656 0.16493656 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode blinn -n "blinn2";
	setAttr ".dc" 0.63247865438461304;
	setAttr ".c" -type "float3" 0.11966125 0.11966125 0.11966125 ;
	setAttr ".ambc" -type "float3" 0.059830625 0.059830625 0.059830625 ;
	setAttr ".ic" -type "float3" 0.034195468 0.034195468 0.034195468 ;
	setAttr ".sc" -type "float3" 0.78194857 0.78194857 0.78194857 ;
	setAttr ".ec" 0.5042230486869812;
	setAttr ".sro" 0.35042735934257507;
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo7";
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0:9]" "f[14:19]" "f[21:27]" "f[29:919]" "f[1040:1136]" "f[1138:1408]" "f[1410:1431]" "f[1433:1454]" "f[1456:1702]" "f[1704:1720]" "f[1722:2047]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[920:1039]";
	setAttr ".irc" -type "componentList" 20 "f[1890:1893]" "f[1898:1901]" "f[1906:1909]" "f[1914:1917]" "f[1922:1925]" "f[1930:1933]" "f[1938:1941]" "f[1946:1949]" "f[1954:1957]" "f[1962:1965]" "f[1970:1973]" "f[1978:1981]" "f[1986:1989]" "f[1994:1997]" "f[2002:2005]" "f[2010:2013]" "f[2018:2021]" "f[2026:2029]" "f[2034:2037]" "f[2042:2045]";
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[10:13]" "f[20]" "f[28]" "f[1137]" "f[1409]" "f[1432]" "f[1455]" "f[1703]" "f[1721]";
	setAttr ".irc" -type "componentList" 10 "f[0:9]" "f[14:19]" "f[21:27]" "f[29:1136]" "f[1138:1408]" "f[1410:1431]" "f[1433:1454]" "f[1456:1702]" "f[1704:1720]" "f[1722:2047]";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode polyTriangulate -n "polyTriangulate2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polySmoothFace -n "polySmoothFace5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.3185158 1.2000002 2.5 ;
	setAttr ".rs" 61070;
	setAttr ".lt" -type "double3" -2.4848450724144736e-016 4.0442935637543851e-016 -0.16 ;
	setAttr ".ls" -type "double3" 1 1 0.41018360455694464 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.3185153094885003 0.35367227792739875 1.653672456741333 ;
	setAttr ".cbx" -type "double3" 9.3185153094885003 2.0463280200958254 3.3463277816772461 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[100:119]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.1159039 1.2000002 2.5 ;
	setAttr ".rs" 51376;
	setAttr ".lt" -type "double3" 5.3703562510725725e-017 2.026190027756074e-016 -0.15 ;
	setAttr ".ls" -type "double3" 1 1 0.68630523137513233 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.1159033862707268 0.35367227792739853 1.653672456741333 ;
	setAttr ".cbx" -type "double3" 8.1159033862707268 2.0463280200958249 3.3463277816772461 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.1159029 1.2000003 2.5000002 ;
	setAttr ".rs" 34062;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.1159029094335686 -0.4926554441452029 0.80734479427337624 ;
	setAttr ".cbx" -type "double3" 8.1159029094335686 2.8926560401916501 4.1926555633544922 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[20]" "f[40:59]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 2.9300000000000002 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9300001 1.2000003 2.5000002 ;
	setAttr ".rs" 46308;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3286935019493105 -0.49265544414520246 0.80734479427337669 ;
	setAttr ".cbx" -type "double3" 3.5313064980506903 2.8926560401916506 4.1926555633544922 ;
createNode polyCylinder -n "pasted__polyCylinder1";
	setAttr ".r" 1.6926551842447488;
	setAttr ".h" 1.2026130276045333;
	setAttr ".sh" 3;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 27 "f[0:1415]" "f[1608:1615]" "f[1617]" "f[1621:1625]" "f[1630:1631]" "f[1636:1637]" "f[1641]" "f[1646:1650]" "f[1654:1665]" "f[1668:1673]" "f[1678:1679]" "f[1685:1689]" "f[1692:1697]" "f[1703:1707]" "f[1711]" "f[1729]" "f[1736:1737]" "f[1742:1745]" "f[1750:1753]" "f[1756:1770]" "f[1774:1795]" "f[1798:1799]" "f[1869]" "f[1952]" "f[2010]" "f[2019:2020]" "f[2028]";
	setAttr ".irc" -type "componentList" 27 "f[1416:1607]" "f[1616]" "f[1618:1620]" "f[1626:1629]" "f[1632:1635]" "f[1638:1640]" "f[1642:1645]" "f[1651:1653]" "f[1666:1667]" "f[1674:1677]" "f[1680:1684]" "f[1690:1691]" "f[1698:1702]" "f[1708:1710]" "f[1712:1728]" "f[1730:1735]" "f[1738:1741]" "f[1746:1749]" "f[1754:1755]" "f[1771:1773]" "f[1796:1797]" "f[1800:1868]" "f[1870:1951]" "f[1953:2009]" "f[2011:2018]" "f[2021:2027]" "f[2029:2615]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 27 "f[1416:1607]" "f[1616]" "f[1618:1620]" "f[1626:1629]" "f[1632:1635]" "f[1638:1640]" "f[1642:1645]" "f[1651:1653]" "f[1666:1667]" "f[1674:1677]" "f[1680:1684]" "f[1690:1691]" "f[1698:1702]" "f[1708:1710]" "f[1712:1728]" "f[1730:1735]" "f[1738:1741]" "f[1746:1749]" "f[1754:1755]" "f[1771:1773]" "f[1796:1797]" "f[1800:1868]" "f[1870:1951]" "f[1953:2009]" "f[2011:2018]" "f[2021:2027]" "f[2029:2615]";
createNode groupParts -n "pasted__groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0:9]" "f[14:19]" "f[21:27]" "f[29:919]" "f[1040:1136]" "f[1138:1408]" "f[1410:1431]" "f[1433:1454]" "f[1456:1702]" "f[1704:1720]" "f[1722:2047]";
createNode groupParts -n "pasted__groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[920:1039]";
	setAttr ".irc" -type "componentList" 20 "f[1890:1893]" "f[1898:1901]" "f[1906:1909]" "f[1914:1917]" "f[1922:1925]" "f[1930:1933]" "f[1938:1941]" "f[1946:1949]" "f[1954:1957]" "f[1962:1965]" "f[1970:1973]" "f[1978:1981]" "f[1986:1989]" "f[1994:1997]" "f[2002:2005]" "f[2010:2013]" "f[2018:2021]" "f[2026:2029]" "f[2034:2037]" "f[2042:2045]";
createNode groupParts -n "pasted__groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[10:13]" "f[20]" "f[28]" "f[1137]" "f[1409]" "f[1432]" "f[1455]" "f[1703]" "f[1721]";
	setAttr ".irc" -type "componentList" 10 "f[0:9]" "f[14:19]" "f[21:27]" "f[29:1136]" "f[1138:1408]" "f[1410:1431]" "f[1433:1454]" "f[1456:1702]" "f[1704:1720]" "f[1722:2047]";
createNode polyTriangulate -n "pasted__polyTriangulate2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polySmoothFace -n "pasted__polySmoothFace5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.3185158 1.2000002 2.5 ;
	setAttr ".rs" 61070;
	setAttr ".lt" -type "double3" -2.4848450724144736e-016 4.0442935637543851e-016 -0.16 ;
	setAttr ".ls" -type "double3" 1 1 0.41018360455694464 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.3185153094885003 0.35367227792739875 1.653672456741333 ;
	setAttr ".cbx" -type "double3" 9.3185153094885003 2.0463280200958254 3.3463277816772461 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[100:119]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.1159039 1.2000002 2.5 ;
	setAttr ".rs" 51376;
	setAttr ".lt" -type "double3" 5.3703562510725725e-017 2.026190027756074e-016 -0.15 ;
	setAttr ".ls" -type "double3" 1 1 0.68630523137513233 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.1159033862707268 0.35367227792739853 1.653672456741333 ;
	setAttr ".cbx" -type "double3" 8.1159033862707268 2.0463280200958249 3.3463277816772461 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.1159029 1.2000003 2.5000002 ;
	setAttr ".rs" 34062;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.1159029094335686 -0.4926554441452029 0.80734479427337624 ;
	setAttr ".cbx" -type "double3" 8.1159029094335686 2.8926560401916501 4.1926555633544922 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[20]" "f[40:59]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 2.9300000000000002 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9300001 1.2000003 2.5000002 ;
	setAttr ".rs" 46308;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3286935019493105 -0.49265544414520246 0.80734479427337669 ;
	setAttr ".cbx" -type "double3" 3.5313064980506903 2.8926560401916506 4.1926555633544922 ;
createNode polyCylinder -n "pasted__pasted__polyCylinder1";
	setAttr ".r" 1.6926551842447488;
	setAttr ".h" 1.2026130276045333;
	setAttr ".sh" 3;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode groupId -n "pasted__groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId4";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo6";
createNode phong -n "pasted__phong2";
	setAttr ".c" -type "float3" 0.7647059 0.16493656 0.16493656 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "pasted__blinn2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo7";
createNode blinn -n "pasted__blinn2";
	setAttr ".dc" 0.63247865438461304;
	setAttr ".c" -type "float3" 0.11966125 0.11966125 0.11966125 ;
	setAttr ".ambc" -type "float3" 0.059830625 0.059830625 0.059830625 ;
	setAttr ".ic" -type "float3" 0.034195468 0.034195468 0.034195468 ;
	setAttr ".sc" -type "float3" 0.78194857 0.78194857 0.78194857 ;
	setAttr ".ec" 0.5042230486869812;
	setAttr ".sro" 0.35042735934257507;
createNode groupId -n "pasted__groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0:9]" "f[14:19]" "f[21:27]" "f[29:919]" "f[1040:1136]" "f[1138:1408]" "f[1410:1431]" "f[1433:1454]" "f[1456:1702]" "f[1704:1720]" "f[1722:2047]";
createNode groupParts -n "pasted__groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[920:1039]";
	setAttr ".irc" -type "componentList" 20 "f[1890:1893]" "f[1898:1901]" "f[1906:1909]" "f[1914:1917]" "f[1922:1925]" "f[1930:1933]" "f[1938:1941]" "f[1946:1949]" "f[1954:1957]" "f[1962:1965]" "f[1970:1973]" "f[1978:1981]" "f[1986:1989]" "f[1994:1997]" "f[2002:2005]" "f[2010:2013]" "f[2018:2021]" "f[2026:2029]" "f[2034:2037]" "f[2042:2045]";
createNode groupParts -n "pasted__groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[10:13]" "f[20]" "f[28]" "f[1137]" "f[1409]" "f[1432]" "f[1455]" "f[1703]" "f[1721]";
	setAttr ".irc" -type "componentList" 10 "f[0:9]" "f[14:19]" "f[21:27]" "f[29:1136]" "f[1138:1408]" "f[1410:1431]" "f[1433:1454]" "f[1456:1702]" "f[1704:1720]" "f[1722:2047]";
createNode polyTriangulate -n "pasted__polyTriangulate3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polySmoothFace -n "pasted__polySmoothFace6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.3185158 1.2000002 2.5 ;
	setAttr ".rs" 61070;
	setAttr ".lt" -type "double3" -2.4848450724144736e-016 4.0442935637543851e-016 -0.16 ;
	setAttr ".ls" -type "double3" 1 1 0.41018360455694464 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.3185153094885003 0.35367227792739875 1.653672456741333 ;
	setAttr ".cbx" -type "double3" 9.3185153094885003 2.0463280200958254 3.3463277816772461 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[100:119]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.1159039 1.2000002 2.5 ;
	setAttr ".rs" 51376;
	setAttr ".lt" -type "double3" 5.3703562510725725e-017 2.026190027756074e-016 -0.15 ;
	setAttr ".ls" -type "double3" 1 1 0.68630523137513233 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.1159033862707268 0.35367227792739853 1.653672456741333 ;
	setAttr ".cbx" -type "double3" 8.1159033862707268 2.0463280200958249 3.3463277816772461 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.1159029 1.2000003 2.5000002 ;
	setAttr ".rs" 34062;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.1159029094335686 -0.4926554441452029 0.80734479427337624 ;
	setAttr ".cbx" -type "double3" 8.1159029094335686 2.8926560401916501 4.1926555633544922 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 2 "f[20]" "f[40:59]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 2.9300000000000002 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9300001 1.2000003 2.5000002 ;
	setAttr ".rs" 46308;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3286935019493105 -0.49265544414520246 0.80734479427337669 ;
	setAttr ".cbx" -type "double3" 3.5313064980506903 2.8926560401916506 4.1926555633544922 ;
createNode polyCylinder -n "pasted__pasted__polyCylinder2";
	setAttr ".r" 1.6926551842447488;
	setAttr ".h" 1.2026130276045333;
	setAttr ".sh" 3;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode groupId -n "pasted__groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId8";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__phong2SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo8";
createNode phong -n "pasted__phong3";
	setAttr ".c" -type "float3" 0.7647059 0.16493656 0.16493656 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "pasted__blinn2SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo9";
createNode blinn -n "pasted__blinn3";
	setAttr ".dc" 0.63247865438461304;
	setAttr ".c" -type "float3" 0.11966125 0.11966125 0.11966125 ;
	setAttr ".ambc" -type "float3" 0.059830625 0.059830625 0.059830625 ;
	setAttr ".ic" -type "float3" 0.034195468 0.034195468 0.034195468 ;
	setAttr ".sc" -type "float3" 0.78194857 0.78194857 0.78194857 ;
	setAttr ".ec" 0.5042230486869812;
	setAttr ".sro" 0.35042735934257507;
createNode groupId -n "pasted__groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0:9]" "f[14:19]" "f[21:27]" "f[29:919]" "f[1040:1136]" "f[1138:1408]" "f[1410:1431]" "f[1433:1454]" "f[1456:1702]" "f[1704:1720]" "f[1722:2047]";
createNode groupParts -n "pasted__groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[920:1039]";
	setAttr ".irc" -type "componentList" 20 "f[1890:1893]" "f[1898:1901]" "f[1906:1909]" "f[1914:1917]" "f[1922:1925]" "f[1930:1933]" "f[1938:1941]" "f[1946:1949]" "f[1954:1957]" "f[1962:1965]" "f[1970:1973]" "f[1978:1981]" "f[1986:1989]" "f[1994:1997]" "f[2002:2005]" "f[2010:2013]" "f[2018:2021]" "f[2026:2029]" "f[2034:2037]" "f[2042:2045]";
createNode groupParts -n "pasted__groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[10:13]" "f[20]" "f[28]" "f[1137]" "f[1409]" "f[1432]" "f[1455]" "f[1703]" "f[1721]";
	setAttr ".irc" -type "componentList" 10 "f[0:9]" "f[14:19]" "f[21:27]" "f[29:1136]" "f[1138:1408]" "f[1410:1431]" "f[1433:1454]" "f[1456:1702]" "f[1704:1720]" "f[1722:2047]";
createNode polyTriangulate -n "pasted__polyTriangulate4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polySmoothFace -n "pasted__polySmoothFace7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.3185158 1.2000002 2.5 ;
	setAttr ".rs" 61070;
	setAttr ".lt" -type "double3" -2.4848450724144736e-016 4.0442935637543851e-016 -0.16 ;
	setAttr ".ls" -type "double3" 1 1 0.41018360455694464 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.3185153094885003 0.35367227792739875 1.653672456741333 ;
	setAttr ".cbx" -type "double3" 9.3185153094885003 2.0463280200958254 3.3463277816772461 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[100:119]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.1159039 1.2000002 2.5 ;
	setAttr ".rs" 51376;
	setAttr ".lt" -type "double3" 5.3703562510725725e-017 2.026190027756074e-016 -0.15 ;
	setAttr ".ls" -type "double3" 1 1 0.68630523137513233 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.1159033862707268 0.35367227792739853 1.653672456741333 ;
	setAttr ".cbx" -type "double3" 8.1159033862707268 2.0463280200958249 3.3463277816772461 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 8.7172093478796135 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.1159029 1.2000003 2.5000002 ;
	setAttr ".rs" 34062;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.1159029094335686 -0.4926554441452029 0.80734479427337624 ;
	setAttr ".cbx" -type "double3" 8.1159029094335686 2.8926560401916501 4.1926555633544922 ;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 2 "f[20]" "f[40:59]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 1 2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 -1 0 0 2.9300000000000002 1.2 2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9300001 1.2000003 2.5000002 ;
	setAttr ".rs" 46308;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3286935019493105 -0.49265544414520246 0.80734479427337669 ;
	setAttr ".cbx" -type "double3" 3.5313064980506903 2.8926560401916506 4.1926555633544922 ;
createNode polyCylinder -n "pasted__pasted__polyCylinder3";
	setAttr ".r" 1.6926551842447488;
	setAttr ".h" 1.2026130276045333;
	setAttr ".sh" 3;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode groupId -n "pasted__groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId12";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__phong2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo10";
createNode phong -n "pasted__phong4";
	setAttr ".c" -type "float3" 0.7647059 0.16493656 0.16493656 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "pasted__blinn2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo11";
createNode blinn -n "pasted__blinn4";
	setAttr ".dc" 0.63247865438461304;
	setAttr ".c" -type "float3" 0.11966125 0.11966125 0.11966125 ;
	setAttr ".ambc" -type "float3" 0.059830625 0.059830625 0.059830625 ;
	setAttr ".ic" -type "float3" 0.034195468 0.034195468 0.034195468 ;
	setAttr ".sc" -type "float3" 0.78194857 0.78194857 0.78194857 ;
	setAttr ".ec" 0.5042230486869812;
	setAttr ".sro" 0.35042735934257507;
createNode groupId -n "pasted__groupId10";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 15 ".st";
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
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
connectAttr "groupId5.id" "pCylinderShape3.iog.og[7].gid";
connectAttr "phong1SG.mwc" "pCylinderShape3.iog.og[7].gco";
connectAttr "groupId7.id" "pCylinderShape3.iog.og[8].gid";
connectAttr "blinn2SG.mwc" "pCylinderShape3.iog.og[8].gco";
connectAttr "groupParts5.og" "pCylinderShape3.i";
connectAttr "groupId6.id" "pCylinderShape3.ciog.cog[1].cgid";
connectAttr "groupParts3.og" "pasted__pCylinderShape1.i";
connectAttr "groupId1.id" "pasted__pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pCylinderShape1.iog.og[0].gco";
connectAttr "groupId3.id" "pasted__pCylinderShape1.iog.og[1].gid";
connectAttr "phong2SG.mwc" "pasted__pCylinderShape1.iog.og[1].gco";
connectAttr "groupId4.id" "pasted__pCylinderShape1.iog.og[2].gid";
connectAttr "blinn2SG.mwc" "pasted__pCylinderShape1.iog.og[2].gco";
connectAttr "groupId2.id" "pasted__pCylinderShape1.ciog.cog[0].cgid";
connectAttr "pasted__groupParts3.og" "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.i"
		;
connectAttr "pasted__groupId1.id" "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId3.id" "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1].gid"
		;
connectAttr "pasted__phong2SG.mwc" "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupId4.id" "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[2].gid"
		;
connectAttr "pasted__blinn2SG.mwc" "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[2].gco"
		;
connectAttr "pasted__groupId2.id" "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts6.og" "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.i"
		;
connectAttr "pasted__groupId5.id" "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId7.id" "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1].gid"
		;
connectAttr "pasted__phong2SG1.mwc" "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupId8.id" "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[2].gid"
		;
connectAttr "pasted__blinn2SG1.mwc" "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[2].gco"
		;
connectAttr "pasted__groupId6.id" "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts9.og" "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.i"
		;
connectAttr "pasted__groupId9.id" "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId11.id" "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1].gid"
		;
connectAttr "pasted__phong2SG2.mwc" "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupId12.id" "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[2].gid"
		;
connectAttr "pasted__blinn2SG2.mwc" "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[2].gco"
		;
connectAttr "pasted__groupId10.id" "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.ciog.cog[0].cgid"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__blinn2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__blinn2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__blinn2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__blinn2SG2.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder3.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polySubdFace1.ip";
connectAttr "polySubdFace1.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polySmoothFace6.ip";
connectAttr "polySmoothFace6.out" "polySmoothFace7.ip";
connectAttr "polySmoothFace7.out" "polyTriangulate1.ip";
connectAttr "phongE1.oc" "phongE1SG.ss";
connectAttr "phongE1SG.msg" "materialInfo1.sg";
connectAttr "phongE1.msg" "materialInfo1.m";
connectAttr "phongE2SG.msg" "materialInfo2.sg";
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "pCylinderShape3.iog.og[7]" "phong1SG.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[1]" "phong1SG.dsm" -na;
connectAttr "groupId5.msg" "phong1SG.gn" -na;
connectAttr "groupId6.msg" "phong1SG.gn" -na;
connectAttr "phong1SG.msg" "materialInfo3.sg";
connectAttr "phong1.msg" "materialInfo3.m";
connectAttr "phongE3SG.msg" "materialInfo4.sg";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "blinn1.c";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo5.sg";
connectAttr "blinn1.msg" "materialInfo5.m";
connectAttr "file2.msg" "materialInfo5.t" -na;
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "phong2.oc" "phong2SG.ss";
connectAttr "groupId3.msg" "phong2SG.gn" -na;
connectAttr "pasted__pCylinderShape1.iog.og[1]" "phong2SG.dsm" -na;
connectAttr "phong2SG.msg" "materialInfo6.sg";
connectAttr "phong2.msg" "materialInfo6.m";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "groupId4.msg" "blinn2SG.gn" -na;
connectAttr "groupId7.msg" "blinn2SG.gn" -na;
connectAttr "pasted__pCylinderShape1.iog.og[2]" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape3.iog.og[8]" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo7.sg";
connectAttr "blinn2.msg" "materialInfo7.m";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyTriangulate2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySmoothFace5.out" "polyTriangulate2.ip";
connectAttr "pasted__polyExtrudeFace5.out" "polySmoothFace5.ip";
connectAttr "pasted__polyExtrudeFace4.out" "pasted__polyExtrudeFace5.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyExtrudeFace5.mp";
connectAttr "pasted__polyExtrudeFace3.out" "pasted__polyExtrudeFace4.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyExtrudeFace4.mp";
connectAttr "pasted__polyExtrudeFace2.out" "pasted__polyExtrudeFace3.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyExtrudeFace3.mp";
connectAttr "pasted__polyCylinder1.out" "pasted__polyExtrudeFace2.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyExtrudeFace2.mp";
connectAttr "polyTriangulate1.out" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "pasted__groupParts2.og" "pasted__groupParts3.ig";
connectAttr "pasted__groupId4.id" "pasted__groupParts3.gi";
connectAttr "pasted__groupParts1.og" "pasted__groupParts2.ig";
connectAttr "pasted__groupId3.id" "pasted__groupParts2.gi";
connectAttr "pasted__polyTriangulate2.out" "pasted__groupParts1.ig";
connectAttr "pasted__groupId1.id" "pasted__groupParts1.gi";
connectAttr "pasted__polySmoothFace5.out" "pasted__polyTriangulate2.ip";
connectAttr "pasted__pasted__polyExtrudeFace5.out" "pasted__polySmoothFace5.ip";
connectAttr "pasted__pasted__polyExtrudeFace4.out" "pasted__pasted__polyExtrudeFace5.ip"
		;
connectAttr "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace5.mp"
		;
connectAttr "pasted__pasted__polyExtrudeFace3.out" "pasted__pasted__polyExtrudeFace4.ip"
		;
connectAttr "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace4.mp"
		;
connectAttr "pasted__pasted__polyExtrudeFace2.out" "pasted__pasted__polyExtrudeFace3.ip"
		;
connectAttr "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace3.mp"
		;
connectAttr "pasted__pasted__polyCylinder1.out" "pasted__pasted__polyExtrudeFace2.ip"
		;
connectAttr "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace2.mp"
		;
connectAttr "pasted__phong2.oc" "pasted__phong2SG.ss";
connectAttr "pasted__groupId3.msg" "pasted__phong2SG.gn" -na;
connectAttr "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1]" "pasted__phong2SG.dsm"
		 -na;
connectAttr "pasted__phong2SG.msg" "pasted__materialInfo6.sg";
connectAttr "pasted__phong2.msg" "pasted__materialInfo6.m";
connectAttr "pasted__blinn2.oc" "pasted__blinn2SG.ss";
connectAttr "pasted__groupId4.msg" "pasted__blinn2SG.gn" -na;
connectAttr "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[2]" "pasted__blinn2SG.dsm"
		 -na;
connectAttr "pasted__blinn2SG.msg" "pasted__materialInfo7.sg";
connectAttr "pasted__blinn2.msg" "pasted__materialInfo7.m";
connectAttr "pasted__groupParts5.og" "pasted__groupParts6.ig";
connectAttr "pasted__groupId8.id" "pasted__groupParts6.gi";
connectAttr "pasted__groupParts4.og" "pasted__groupParts5.ig";
connectAttr "pasted__groupId7.id" "pasted__groupParts5.gi";
connectAttr "pasted__polyTriangulate3.out" "pasted__groupParts4.ig";
connectAttr "pasted__groupId5.id" "pasted__groupParts4.gi";
connectAttr "pasted__polySmoothFace6.out" "pasted__polyTriangulate3.ip";
connectAttr "pasted__pasted__polyExtrudeFace9.out" "pasted__polySmoothFace6.ip";
connectAttr "pasted__pasted__polyExtrudeFace8.out" "pasted__pasted__polyExtrudeFace9.ip"
		;
connectAttr "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace9.mp"
		;
connectAttr "pasted__pasted__polyExtrudeFace7.out" "pasted__pasted__polyExtrudeFace8.ip"
		;
connectAttr "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace8.mp"
		;
connectAttr "pasted__pasted__polyExtrudeFace6.out" "pasted__pasted__polyExtrudeFace7.ip"
		;
connectAttr "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace7.mp"
		;
connectAttr "pasted__pasted__polyCylinder2.out" "pasted__pasted__polyExtrudeFace6.ip"
		;
connectAttr "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace6.mp"
		;
connectAttr "pasted__phong3.oc" "pasted__phong2SG1.ss";
connectAttr "pasted__groupId7.msg" "pasted__phong2SG1.gn" -na;
connectAttr "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1]" "pasted__phong2SG1.dsm"
		 -na;
connectAttr "pasted__phong2SG1.msg" "pasted__materialInfo8.sg";
connectAttr "pasted__phong3.msg" "pasted__materialInfo8.m";
connectAttr "pasted__blinn3.oc" "pasted__blinn2SG1.ss";
connectAttr "pasted__groupId8.msg" "pasted__blinn2SG1.gn" -na;
connectAttr "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[2]" "pasted__blinn2SG1.dsm"
		 -na;
connectAttr "pasted__blinn2SG1.msg" "pasted__materialInfo9.sg";
connectAttr "pasted__blinn3.msg" "pasted__materialInfo9.m";
connectAttr "pasted__groupParts8.og" "pasted__groupParts9.ig";
connectAttr "pasted__groupId12.id" "pasted__groupParts9.gi";
connectAttr "pasted__groupParts7.og" "pasted__groupParts8.ig";
connectAttr "pasted__groupId11.id" "pasted__groupParts8.gi";
connectAttr "pasted__polyTriangulate4.out" "pasted__groupParts7.ig";
connectAttr "pasted__groupId9.id" "pasted__groupParts7.gi";
connectAttr "pasted__polySmoothFace7.out" "pasted__polyTriangulate4.ip";
connectAttr "pasted__pasted__polyExtrudeFace13.out" "pasted__polySmoothFace7.ip"
		;
connectAttr "pasted__pasted__polyExtrudeFace12.out" "pasted__pasted__polyExtrudeFace13.ip"
		;
connectAttr "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace13.mp"
		;
connectAttr "pasted__pasted__polyExtrudeFace11.out" "pasted__pasted__polyExtrudeFace12.ip"
		;
connectAttr "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace12.mp"
		;
connectAttr "pasted__pasted__polyExtrudeFace10.out" "pasted__pasted__polyExtrudeFace11.ip"
		;
connectAttr "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace11.mp"
		;
connectAttr "pasted__pasted__polyCylinder3.out" "pasted__pasted__polyExtrudeFace10.ip"
		;
connectAttr "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.wm" "pasted__pasted__polyExtrudeFace10.mp"
		;
connectAttr "pasted__phong4.oc" "pasted__phong2SG2.ss";
connectAttr "pasted__groupId11.msg" "pasted__phong2SG2.gn" -na;
connectAttr "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[1]" "pasted__phong2SG2.dsm"
		 -na;
connectAttr "pasted__phong2SG2.msg" "pasted__materialInfo10.sg";
connectAttr "pasted__phong4.msg" "pasted__materialInfo10.m";
connectAttr "pasted__blinn4.oc" "pasted__blinn2SG2.ss";
connectAttr "pasted__groupId12.msg" "pasted__blinn2SG2.gn" -na;
connectAttr "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[2]" "pasted__blinn2SG2.dsm"
		 -na;
connectAttr "pasted__blinn2SG2.msg" "pasted__materialInfo11.sg";
connectAttr "pasted__blinn4.msg" "pasted__materialInfo11.m";
connectAttr "phongE1SG.pa" ":renderPartition.st" -na;
connectAttr "phongE2SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phongE3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "phong2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong2SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__blinn2SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__blinn2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group10|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group11|pasted__group3|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "phongE1.msg" ":defaultShaderList1.s" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "phong2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phong2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phong3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phong4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__blinn4.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Stroller.ma
