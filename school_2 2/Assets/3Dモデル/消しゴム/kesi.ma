//Maya ASCII 2022 scene
//Name: kesi.ma
//Last modified: Sun, Jul 03, 2022 02:46:41 AM
//Codeset: 932
requires maya "2022";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
requires -nodeType "ik2Bsolver" "ik2Bsolver" "2.5";
requires -nodeType "aiOptions" "mtoa" "5.0.0.1";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19043)";
fileInfo "UUID" "C17D8405-41AA-8065-0883-6AB1B17F4C61";
createNode transform -s -n "persp";
	rename -uid "D0734434-4216-0DE3-3E91-30A2F57917D3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.6960246822416263 5.685954237297226 0.77116135184618595 ;
	setAttr ".r" -type "double3" 677.06164727326643 -439.79999999995306 -5.3881910023005573e-14 ;
	setAttr ".rp" -type "double3" 2.7755575615628914e-17 0 0 ;
	setAttr ".rpt" -type "double3" -1.9640630657430963e-17 -3.0814879110195774e-33 -2.6542788965749475e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8486A739-4F6F-4AAB-23EB-9B961E4D58EA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.2813399653160014;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B5042267-4E49-36E8-64A7-AC80DF40AA3D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9165FC26-416B-E6CF-885F-39AB4B66AD82";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "62A2136E-434D-80CF-6B29-FB9F66A5152D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1EDD144A-4C79-65CF-4FA5-1D86A7597CFF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "549B9581-4043-7074-724F-01AB8319BBC2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CC4CEEF4-4A05-FE00-6F5F-5D834143D048";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group1";
	rename -uid "D3E1C63F-4509-9BE5-FDA4-B6AE9B1E04BE";
createNode transform -n "pCube2" -p "group1";
	rename -uid "836A5D92-490D-9ED3-9028-92AF0CDED827";
	setAttr ".t" -type "double3" -0.35362545831972797 0.25854255423826689 0 ;
	setAttr ".s" -type "double3" 2.7794762773219071 0.40514433961833546 1.3888496451149872 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "092391A5-4402-98D5-A7BA-50AA11FB25A6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.5 0.40207111835479736 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pCube2";
	rename -uid "14307CD3-4091-E7B0-DA50-BA818F988981";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.625 0 0.625 0.25
		 0.625 0.5 0.625 0.75 0.625 1 0.875 0 0.875 0.25 0.44235647 0 0.44235647 1 0.44235647
		 0.75 0.44235647 0.5 0.44235647 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0.5 -0.5 0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5
		 -0.23057401 -0.5 0.5 -0.23057401 -0.5 -0.5 -0.23057401 0.5 -0.5 -0.23057401 0.5 0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 0 0 5 3 0 6 2 0
		 7 1 0 4 5 0 5 6 0 6 7 0 7 4 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 11 4 0 -8
		mu 0 4 11 7 0 1
		f 4 10 7 1 -7
		mu 0 4 10 11 1 2
		f 4 9 6 2 -6
		mu 0 4 9 10 2 3
		f 4 8 5 3 -5
		mu 0 4 8 9 3 4
		f 4 -4 -3 -2 -1
		mu 0 4 0 5 6 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "group1";
	rename -uid "5686A580-4179-2CAF-1B17-1890C0DD7EF3";
	setAttr ".t" -type "double3" 0 0.25067323933009722 0 ;
	setAttr ".s" -type "double3" 2.8388076945068139 0.403381679466008 1.3622058204022474 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "82F74234-41BF-4B53-8754-69AA96EF10EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube3";
	rename -uid "E293E46A-4369-79F3-A99A-69B0AB9B9CF6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 2 4 0 3 5 0 4 6 0 5 7 0 6 0 0
		 7 1 0 0 1 0 6 7 0 4 5 0 2 3 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 8 1 -12 -1
		mu 0 4 0 1 3 2
		f 4 11 3 -11 -3
		mu 0 4 2 3 5 4
		f 4 10 5 -10 -5
		mu 0 4 4 5 7 6
		f 4 9 7 -9 -7
		mu 0 4 6 7 9 8
		f 4 -8 -6 -4 -2
		mu 0 4 1 10 11 3
		f 4 6 0 2 4
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "622F6510-4CEB-48EB-BB6B-35AF840BBA21";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7D0A327B-45F8-4FF3-BF47-E3A7650DFBC6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "74B08DD1-4248-77C0-70F3-E2BDE6DBB252";
createNode displayLayerManager -n "layerManager";
	rename -uid "D3FE4B7C-4E55-F5BD-FE9D-509EF7FFE6CA";
createNode displayLayer -n "defaultLayer";
	rename -uid "8834CF2F-4A66-8A3B-0C3D-03924872AE01";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EBE885F6-4906-B1A9-19F1-0C9D60A09DDF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8541ADBD-4F29-9FB0-6BA1-86B6539B64AB";
	setAttr ".g" yes;
createNode ikSpringSolver -s -n "ikSpringSolver";
	rename -uid "77A59407-4074-EFD6-44D5-8481E47E742C";
createNode ik2Bsolver -s -n "ik2Bsolver";
	rename -uid "8DD7F6AF-4915-09C8-4438-51BCC347653E";
createNode aiOptions -n "defaultArnoldRenderOptions";
	rename -uid "79D557B3-441B-9A30-F615-50847D00AAB1";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "B2C29EFB-4BB3-EE74-7848-0AB707573666";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8:11]";
	setAttr ".ix" -type "matrix" 2.8388076945068139 0 0 0 0 0.403381679466008 0 0 0 0 1.3622058204022474 0
		 0 0.25067323933009722 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "EAD17B69-4420-6F58-29F3-DAA3CE3999AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0:1]" "e[4:5]" "e[8:9]" "e[12:13]";
	setAttr ".ix" -type "matrix" 2.8388076945068139 0 0 0 0 0.403381679466008 0 0 0 0 1.3622058204022474 0
		 0 0.25067323933009722 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak1";
	rename -uid "A63172DC-4FE1-6444-21FE-8D8CE1B8D0B7";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[10]" -type "float3" 0 -0.0064122379 0.0093535427 ;
	setAttr ".tk[11]" -type "float3" 0.036885623 0 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.0064122397 0.0093535427 ;
	setAttr ".tk[15]" -type "float3" 0.036885623 0 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.008892539 0.0086190654 ;
	setAttr ".tk[18]" -type "float3" 0.036885623 0 -9.3132257e-10 ;
	setAttr ".tk[21]" -type "float3" 0 -0.008892539 -0.0086190654 ;
	setAttr ".tk[22]" -type "float3" 0.036885623 0 9.3132257e-10 ;
	setAttr ".tk[24]" -type "float3" 0 -0.0064122379 -0.0093535427 ;
	setAttr ".tk[25]" -type "float3" 0.036885623 0 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.0064122397 -0.0093535427 ;
	setAttr ".tk[29]" -type "float3" 0.036885623 0 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.008892539 -0.0086190654 ;
	setAttr ".tk[32]" -type "float3" 0.036885623 0 9.3132257e-10 ;
	setAttr ".tk[34]" -type "float3" 0 0.008892539 0.0086190654 ;
	setAttr ".tk[35]" -type "float3" 0.036885623 0 -9.3132257e-10 ;
createNode polySplit -n "polySplit1";
	rename -uid "1E31C50A-4A8B-1BBA-AE71-0688C2F30A9A";
	setAttr -s 9 ".e[0:8]"  0.79456198 0.205438 0.79456198 0.205438 0.79456198
		 0.205438 0.79456198 0.205438 0.79456198;
	setAttr -s 9 ".d[0:8]"  -2147483604 -2147483603 -2147483602 -2147483601 -2147483600 -2147483599 
		-2147483598 -2147483597 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "5A7352F7-4A24-9F51-D369-3BB264EA8A82";
	setAttr -s 25 ".e[0:24]"  0.40522301 0.59477699 0.59477699 0.59477699
		 0.40522301 0.40522301 0.40522301 0.59477699 0.59477699 0.59477699 0.40522301 0.40522301
		 0.59477699 0.59477699 0.59477699 0.40522301 0.40522301 0.40522301 0.59477699 0.59477699
		 0.59477699 0.40522301 0.40522301 0.40522301 0.59477699;
	setAttr -s 25 ".d[0:24]"  -2147483646 -2147483642 -2147483570 -2147483608 -2147483582 -2147483581 
		-2147483605 -2147483623 -2147483589 -2147483590 -2147483626 -2147483566 -2147483646 -2147483566 -2147483626 -2147483590 -2147483589 -2147483623 
		-2147483605 -2147483581 -2147483582 -2147483608 -2147483570 -2147483642 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "F473C9F4-46A1-BDA6-6C02-079750CBF85E";
	setAttr -s 3 ".e[0:2]"  0 1 0;
	setAttr -s 3 ".d[0:2]"  -2147483561 -2147483646 -2147483542;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "C25FF52B-4E7A-F0B2-394C-1FAC5E80F8A5";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483564 -2147483541;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "0D5C35A3-41EE-6A27-95D2-1D8B71C3A7AF";
	setAttr ".dc" -type "componentList" 1 "e[108]";
createNode polySplit -n "polySplit5";
	rename -uid "3B005035-419A-99E1-7726-BF9A289C6651";
	setAttr -s 4 ".e[0:3]"  1 0.149985 0.149985 0;
	setAttr -s 4 ".d[0:3]"  -2147483641 -2147483520 -2147483519 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "2712B369-4467-9AEC-7CC5-4DA11EDB6B63";
	setAttr -s 4 ".e[0:3]"  0 0.82354999 0.82354999 1;
	setAttr -s 4 ".d[0:3]"  -2147483648 -2147483516 -2147483515 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "B4A4B913-4B29-0B4C-E977-9BB0E09750EE";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySplit -n "polySplit7";
	rename -uid "A1E5641A-44ED-62AA-03A0-D38AD1E5F51F";
	setAttr -s 5 ".e[0:4]"  0.97262299 0.97262299 0.97262299 0.97262299
		 0.97262299;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483641 -2147483642 -2147483643 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "03275096-468A-C2B6-AA8F-4583FBDA8ECF";
	setAttr ".dc" -type "componentList" 1 "f[4:8]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "C42F0235-455F-E3EE-40DD-99AB2F41749E";
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 2.7794762773219071 0 0 0 0 0.39495095456855983 0 0 0 0 1.3888496451149872 0
		 -0.40263467105828188 0.25855199612579449 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.05599916 0.25855199 0 ;
	setAttr ".rs" 33806;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.0099999997764825821;
	setAttr ".cbn" -type "double3" -1.043509667030754 0.061076518841514577 -0.6944248225574936 ;
	setAttr ".cbx" -type "double3" 0.93151134435539762 0.45602747341007444 0.6944248225574936 ;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "59DF63BA-457D-B5CE-44A6-1D8D9A1232C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[16]" "e[19]" "e[24]" "e[29]";
	setAttr ".ix" -type "matrix" 2.7794762773219071 0 0 0 0 0.39495095456855983 0 0 0 0 1.3888496451149872 0
		 -0.40263467105828188 0.25855199612579449 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6DC8372C-44E3-AE00-C7FE-9BAA4274295E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 736\n            -height 759\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 759\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 759\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9A7D79C4-47DA-70F1-E4F7-5786B6260B5C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 200 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "FBAE306C-44FB-FF73-0F7F-C08907828724";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:27]";
	setAttr ".ix" -type "matrix" 2.7794762773219071 0 0 0 0 0.40514433961833546 0 0 0 0 1.3888496451149872 0
		 -0.35362545831972797 0.25854255423826689 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.0069900155067443848 0.25854256749153137 0 ;
	setAttr ".ps" -type "double2" 1.9750210046768188 1.9750210046768188 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "8121199A-4FC2-C4BB-B0B0-2DA27883E54D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:27]";
	setAttr ".ix" -type "matrix" 2.7794762773219071 0 0 0 0 0.40514433961833546 0 0 0 0 1.3888496451149872 0
		 -0.35362545831972797 0.25854255423826689 0 1;
	setAttr ".s" -type "double3" 1.9750210113861515 1.9750210113861515 1.9750210113861515 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "38EFA7A2-4CFC-1208-F1F7-F1890A10FCBC";
	setAttr ".uopa" yes;
	setAttr -s 72 ".uvtk[0:71]" -type "float2" 0.081479728 0.63066351 0.081479728
		 0.75982082 0.081014693 0.76145607 0.080549777 0.75982112 0.080549777 0.63066316 0.081014693
		 0.6290282 0.21063703 0.75982082 0.21110204 0.76145607 0.21063712 0.76309103 0.081479609
		 0.76309103 0.081479609 0.62739325 0.21063703 0.63066351 0.21063712 0.62739325 0.21110204
		 0.6290282 0.21156695 0.63066316 0.21156695 0.75982112 0.27971375 -0.13740213 0.27971375
		 -0.59307802 0.28135437 -0.59884739 0.28299475 -0.59307915 0.28299475 -0.13740088
		 0.28135437 -0.13163273 -0.17596227 -0.59307802 -0.17760283 -0.59884739 -0.17596263
		 -0.60461551 0.27971405 -0.60461551 0.27971405 -0.12586454 -0.17596227 -0.13740213
		 -0.17596263 -0.12586454 -0.17760283 -0.13163273 -0.17924327 -0.13740088 -0.17924327
		 -0.59307915 -0.062317848 -0.16219088 -0.15838727 -0.16219088 -0.15838727 -0.29739106
		 -0.062317848 -0.29739106 -0.16184825 -0.16219088 -0.2579177 -0.16219088 -0.2579177
		 -0.29739103 -0.16184825 -0.29739103 0.63093513 0.27089733 0.11929873 0.27089733 0.11929873
		 -0.44913623 0.63093513 -0.44913623 -0.11147863 0.27089691 -0.62311494 0.27089691
		 -0.62311494 -0.4491367 -0.11147863 -0.4491367 0.5984208 -0.046938658 0.64053142 -0.046938658
		 0.64053142 0.01232456 0.5984208 0.01232456 0.64053142 -0.048439026 0.5984208 -0.048439026
		 0.64053142 0.013824917 0.5984208 0.013824917 0.38384116 0.20748445 0.42595178 0.20748445
		 0.42595178 0.26674765 0.38384116 0.26674765 0.42595178 0.20598412 0.38384116 0.20598412
		 0.42595178 0.26824799 0.38384116 0.26824799 0.92088735 0.44241247 0.54899168 0.44241247
		 0.54899168 -0.080961764 0.92088735 -0.080961764 0.59006393 0.14600384 0.21816826
		 0.14600384 0.21816826 -0.37737036 0.59006393 -0.37737036;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "56FC4579-4675-FFEF-EB43-CA9AD5F498F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[45:46]" "e[49]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "A2C680CA-4752-C05F-6B47-E5BC61294137";
	setAttr ".uopa" yes;
	setAttr -s 66 ".uvtk[0:65]" -type "float2" 1.089299679 -0.61992896 1.17524064
		 -0.45666933 1.17574096 -0.45354158 1.17406535 -0.45454761 1.088124156 -0.61780828
		 1.087623835 -0.62093556 1.33850002 -0.75127858 1.34017587 -0.75027221 1.34067607
		 -0.74714512 1.17741644 -0.45253542 1.087123394 -0.62406242 1.25255883 -0.91453779
		 1.2503829 -0.91867137 1.25205874 -0.91766542 1.25373435 -0.91665959 1.33967566 -0.75339931
		 0.9130584 0.12933753 0.99899948 0.29259682 0.99949974 0.29572457 0.99782413 0.2947185
		 0.91188258 0.13145815 0.91138268 0.12833111 1.16225863 -0.0020124167 1.16393447 -0.0010060519
		 1.16443479 0.0021210462 1.0011754036 0.29673064 0.91088259 0.12520425 1.076317549
		 -0.1652714 1.074141741 -0.16940527 1.075817227 -0.16839916 1.077492714 -0.16739312
		 1.16343451 -0.0041332394 0.71401381 0.34021741 0.52982628 0.34021741 0.52982622 0.26414788
		 0.71401376 0.26414782 0.87073839 0.080800846 0.68655086 0.080800906 1 6.8917871e-08
		 1.11509752 0 1.15573156 -0.86506063 1.45958447 -0.44611022 1.1649754 -0.018493459
		 0.86112249 -0.43744388 1.46918082 -0.86506069 1.77303374 -0.44611022 1.47842467 -0.018493399
		 1.17457175 -0.43744385 0.62637925 0.14453176 0.37310159 0.14453182 0.37310159 0.29174539
		 0.62637919 0.29174531 0.62637919 0.2767368 0.37310165 0.27673686 0.37310165 0.42395037
		 0.62637913 0.42395031 0.37310165 0.27387261 0.62637913 0.27387255 0.90382665 -0.73980355
		 1.067938805 -0.32085311 0.98199779 -0.089895606 0.81788564 -0.5088461 1.077702284
		 -0.73980355 1.24181449 -0.32085311 1.15587342 -0.089895621 0.99176127 -0.50884604;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "70F3805A-41F4-60DF-F7C3-8AB6F053FC45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:283]";
	setAttr ".ix" -type "matrix" 2.8388076945068139 0 0 0 0 0.403381679466008 0 0 0 0 1.3622058204022474 0
		 0 0.25067323933009722 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.18004131317138672 0.25067321211099625 0 ;
	setAttr ".ps" -type "double2" 2.4787247180938721 2.4787247180938721 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak2";
	rename -uid "AB731727-4BCD-FBFA-1D80-C4A4F2D668B9";
	setAttr ".uopa" yes;
	setAttr -s 165 ".tk";
	setAttr ".tk[8]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[25]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[26]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[50]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[52]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[53]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[54]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[55]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[57]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[63]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[72]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[73]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[74]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[75]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[76]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[77]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[80]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[81]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[82]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[84]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[85]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[86]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[87]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[88]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[89]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[90]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[91]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[114]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[115]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[116]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[117]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[118]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[119]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[120]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[121]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[123]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[124]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[125]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[126]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[127]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[128]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[129]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[130]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[151]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[155]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[159]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[163]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[164]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[165]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[166]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[167]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[168]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[171]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[174]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[177]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[180]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[181]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[182]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[183]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[184]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[185]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[186]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[187]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[188]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[189]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[190]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[191]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[192]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[193]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[194]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[195]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[196]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[197]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[198]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[199]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[200]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[201]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[202]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[203]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[204]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[205]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[206]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[207]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[208]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[209]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[210]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[211]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[212]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[213]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[219]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[224]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[225]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[226]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[227]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[228]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[229]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[230]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[231]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[232]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[233]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[234]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[235]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[236]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[237]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[238]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[239]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[240]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[241]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[242]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[243]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[244]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[245]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[246]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[247]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[259]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[260]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[261]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[262]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[263]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[264]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[265]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[268]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[269]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[270]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[271]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[272]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[273]" -type "float3" 0.1268429 0 0 ;
	setAttr ".tk[274]" -type "float3" 0.1268429 0 0 ;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "95D0A49C-4CCD-F2F1-BDBA-E8AB371CA46E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:283]";
	setAttr ".ix" -type "matrix" 2.8388076945068139 0 0 0 0 0.403381679466008 0 0 0 0 1.3622058204022474 0
		 0 0.25067323933009722 0 1;
	setAttr ".s" -type "double3" 2.4787247101265568 2.4787247101265568 2.4787247101265568 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "924D79FF-4148-30FA-6BA5-F284A9EE2071";
	setAttr ".uopa" yes;
	setAttr -s 366 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.045494497 0.41279706 0.020484567
		 0.41236582 0.020701885 0.44561332 -0.046507716 0.44605255 0.086463571 0.41193464
		 0.087911397 0.4451741 0.021257162 0.5305863 -0.047183216 0.53103364 -0.1460399 0.44670302
		 -0.14133441 0.41342339 0.18744358 0.44452363 0.18230367 0.41130838 0.08969745 0.53013915
		 0.022343695 0.69684565 -0.046507001 0.69729555 -0.15040737 0.53170812 -0.23281005
		 0.44726998 -0.20537004 0.42246187 0.19292164 0.52946442 0.27421376 0.44395649 0.24645188
		 0.41950917 0.091194242 0.69639575 0.023430228 0.86310494 -0.045010149 0.86355221
		 -0.15096164 0.6979782 -0.24086949 0.53229934 0.195649 0.6957131 0.28338382 0.52887326
		 0.091870457 0.86265773 0.023985565 0.94807804 -0.043224275 0.94851726 -0.14823434
		 0.86422682 -0.24265453 0.69857746 0.1950947 0.86198306 0.28734183 0.69511384 0.091195226
		 0.94763881 0.024202824 0.98132551 -0.041776299 0.98175663 -0.14275625 0.94916773
		 -0.23869646 0.86481798 0.19072726 0.94698834 0.28555682 0.8613919 0.090181828 0.98089427
		 -0.13761625 0.98238295 -0.2295264 0.94973475 0.27749744 0.94642133 0.18602186 0.98026794
		 -0.20176452 0.97418213 0.25005743 0.97122949 0.23775536 0.39945388 0.35672089 0.3997395
		 0.35672089 0.46148491 0.23775536 0.46148491 0.35672089 0.31064683 0.23775536 0.30994898
		 0.47568652 0.39945388 0.47568652 0.46148491 0.35672089 0.52323025 0.23775536 0.52351594
		 0.1725885 0.39859694 0.1725885 0.46148491 0.47568652 0.30994904 0.1725885 0.30785555
		 0.35672089 0.23073903 0.23591131 0.23001856 0.54085344 0.46148491 0.54085344 0.39859694
		 0.47568652 0.52351594 0.35672089 0.61232287 0.23775536 0.61302072 0.1725885 0.52437288
		 0.1362201 0.39737403 0.1362201 0.46148491 0.54085344 0.30785555 0.47753057 0.23001856
		 0.17313612 0.22785699 0.1362201 0.3048681 0.35672086 0.19654852 0.2303791 0.19671068
		 0.54085344 0.52437288 0.57722169 0.46148491 0.57722169 0.39737403 0.47568652 0.61302072
		 0.35672089 0.6922307 0.23591131 0.6929512 0.1725885 0.61511415 0.1362201 0.52559578
		 0.10365045 0.39599043 0.10365045 0.46148491 0.54030579 0.22785699 0.57722169 0.3048681
		 0.48306277 0.19671068 0.17477912 0.19719729 0.14109674 0.22306263 0.10365045 0.30148822
		 0.35672086 0.18527675 0.21798307 0.18672097 0.54085344 0.61511415 0.57722169 0.52559578
		 0.60979146 0.46148491 0.60979146 0.39599043 0.47753057 0.6929512 0.35672086 0.72642124
		 0.2303791 0.72625905 0.17313612 0.69511282 0.1362201 0.61810166 0.10365045 0.52697927
		 0.078748792 0.39497292 0.078748792 0.46148491 0.53866273 0.19719729 0.57234514 0.22306263
		 0.60979146 0.30148822 0.49545866 0.18672097 0.15572649 0.19105312 0.11139926 0.21743914
		 0.078748792 0.29900241 0.35672086 0.17412543 0.20566195 0.17642006 0.54030573 0.69511276
		 0.57722169 0.61810166 0.60979146 0.52697927 0.63469309 0.46148491 0.63469309 0.39497292
		 0.48306277 0.72625905 0.35672086 0.73769307 0.21798307 0.73624891 0.17477912 0.7257725
		 0.14109674 0.69990712 0.10365045 0.62148148 0.078748792 0.52799696 0.065385133 0.39484769
		 0.065385133 0.46148491 0.55771542 0.19105312 0.60204273 0.21743914 0.63469309 0.29900241
		 0.50777984 0.17642006 0.13464552 0.18330386 0.088270068 0.2131581 0.065385133 0.29869664
		 0.35672086 0.16574702 0.19584766 0.16856647 0.53866273 0.7257725 0.57234514 0.69990712
		 0.60979146 0.62148148 0.63469309 0.52799696 0.64805681 0.46148491 0.64805681 0.39484769
		 0.49545866 0.73624885 0.35672086 0.74884427 0.20566195 0.74654967 0.15572649 0.73191673
		 0.11139926 0.70553058 0.078748792 0.62396735 0.065385133 0.52812207 0.57879633 0.18330386
		 0.62517184 0.2131581 0.64805681 0.29869664 0.5175941 0.16856647 0.11683339 0.1770249
		 0.55771542 0.73191673 0.60204273 0.70553058 0.63469309 0.62396735 0.64805681 0.52812207
		 0.50777984 0.74654967 0.35672086 0.75722271 0.19584766 0.75440329 0.13464552 0.73966593
		 0.088270068 0.70981169 0.065385133 0.62427306 0.59660834 0.1770249 0.57879633 0.73966593
		 0.62517184 0.70981169 0.64805681 0.62427306 0.5175941 0.75440329 0.11683339 0.74594492
		 0.59660834 0.74594492 -0.18712157 -0.28432363 -0.16179496 -0.28430182 -0.16179496
		 -0.26631352 -0.18712157 -0.26631352 -0.18712157 -0.31031042 -0.16179496 -0.31025726
		 -0.11315519 -0.28430182 -0.11315519 -0.26631352 -0.16179496 -0.2483252 -0.18712157
		 -0.24830341 -0.2053977 -0.26631352 -0.2053977 -0.28438896 -0.18712157 -0.33367899
		 -0.16179496 -0.33361185 -0.11315519 -0.31025726 -0.2053977 -0.31046999 -0.086650252
		 -0.26631352 -0.086650252 -0.28430182 -0.11315519 -0.2483252 -0.16179496 -0.22236976
		 -0.18712157 -0.22231659 -0.2053977 -0.24823809 -0.18712157 -0.34383416 -0.1617949
		 -0.34379759 -0.11315519 -0.33361185 -0.2053977 -0.33388048 -0.086650252 -0.31025726
		 -0.086650252 -0.2483252 -0.07507205 -0.26631352 -0.07507205 -0.28441435 -0.11315519
		 -0.22236976 -0.16179496 -0.1990152 -0.18712157 -0.19894806 -0.2053977 -0.222157 -0.2053977
		 -0.34394389 -0.11315519 -0.34379759 -0.086650252 -0.33361185 -0.20901692 -0.31038713
		 -0.20901692 -0.33367246 -0.07507205 -0.31070739 -0.086650252 -0.22236976 -0.07507205
		 -0.24821264 -0.11315519 -0.1990152 -0.18712157 -0.18879288 -0.1617949 -0.18882942
		 -0.2053977 -0.19874653 -0.20901692 -0.34347364 -0.086650252 -0.34379759 -0.0780738
		 -0.32829055 -0.07507205 -0.22191963 -0.086650252 -0.1990152 -0.11315519 -0.18882942
		 -0.2053977 -0.18868315 -0.20901692 -0.19895455 -0.20901692 -0.22223991 -0.07507205
		 -0.3358627 -0.0780738 -0.20433649 -0.086650252 -0.18882942 -0.20901692 -0.18915337
		 -0.07507205 -0.19676435 -0.32420582 -0.29417685 -0.29887915 -0.29415506 -0.29887915
		 -0.27616677 -0.32420576 -0.27616677 -0.32420576 -0.32016373 -0.29887915 -0.3201105
		 -0.25023943 -0.29415506 -0.25023943 -0.27616677 -0.29887915 -0.25817847 -0.32420582
		 -0.25815669 -0.34248191 -0.27616677 -0.34248191 -0.2942422 -0.32420582 -0.34353223
		 -0.29887915 -0.34346509;
	setAttr ".uvtk[250:365]" -0.25023943 -0.3201105 -0.34248191 -0.32032329 -0.22373444
		 -0.27616677 -0.22373444 -0.29415506 -0.25023943 -0.25817847 -0.29887915 -0.23222303
		 -0.32420576 -0.23216984 -0.34248191 -0.25809133 -0.32420576 -0.35368741 -0.29887915
		 -0.35365084 -0.25023943 -0.34346509 -0.34248191 -0.34373373 -0.22373444 -0.3201105
		 -0.22373444 -0.25817847 -0.21215627 -0.27616677 -0.21215627 -0.29426759 -0.25023943
		 -0.23222303 -0.29887915 -0.20886844 -0.32420582 -0.2088013 -0.34248191 -0.23201025
		 -0.34248191 -0.35379714 -0.25023943 -0.35365084 -0.22373444 -0.34346509 -0.34610114
		 -0.32024038 -0.34610114 -0.34352571 -0.21215627 -0.32056066 -0.22373444 -0.23222303
		 -0.21215627 -0.25806591 -0.2502394 -0.20886844 -0.32420576 -0.19864607 -0.29887915
		 -0.19868273 -0.34248191 -0.20859981 -0.34610114 -0.35332692 -0.22373444 -0.35365084
		 -0.21515799 -0.3381438 -0.21215627 -0.23177287 -0.22373444 -0.20886844 -0.25023943
		 -0.19868273 -0.34248191 -0.1985364 -0.34610114 -0.20880783 -0.34610114 -0.23209319
		 -0.21215627 -0.34571594 -0.21515799 -0.21418971 -0.22373444 -0.19868273 -0.34610114
		 -0.19900656 -0.21215627 -0.20661759 0.59688687 0.15075916 0.58508891 0.15083519 0.58508891
		 0.12958765 0.59688681 0.12958765 0.59688681 0.1615378 0.58508891 0.16169456 0.56243092
		 0.15083519 0.56243092 0.12958765 0.58508891 0.10834008 0.59688687 0.10841608 0.6054005
		 0.15053123 0.6054005 0.12958765 0.6054005 0.16106752 0.56243092 0.16169459 0.55008405
		 0.15083519 0.55008405 0.12958765 0.56243092 0.10834008 0.59688681 0.097637415 0.58508891
		 0.097480714 0.6054005 0.10864407 0.60708642 0.14991516 0.60708642 0.12958765 0.60708642
		 0.15989923 0.55008405 0.16169456 0.54469061 0.15083522 0.54469061 0.12958765 0.55008405
		 0.10834008 0.56243092 0.097480714 0.6054005 0.098107755 0.60708642 0.10926008 0.54469061
		 0.16169456 0.54469061 0.10834008 0.55008405 0.097480714 0.60708642 0.099276006 0.54469061
		 0.097480714 0.082549661 -0.16548306 0.070751697 -0.16540706 0.070751697 -0.18665463
		 0.082549632 -0.18665463 0.082549632 -0.15470445 0.070751712 -0.15454775 0.048093751
		 -0.16540706 0.048093751 -0.18665463 0.070751697 -0.20790213 0.082549661 -0.2078262
		 0.091063246 -0.18665463 0.091063246 -0.16571105 0.091063246 -0.15517473 0.048093751
		 -0.15454775 0.035746872 -0.16540706 0.035746872 -0.18665463 0.048093751 -0.20790213
		 0.082549632 -0.21860474 0.070751712 -0.2187615 0.091063246 -0.20759815 0.092749208
		 -0.18665463 0.092749208 -0.16632706 0.092749208 -0.15634298 0.035746872 -0.15454775
		 0.030353397 -0.16540706 0.030353397 -0.18665463 0.035746872 -0.20790213 0.048093751
		 -0.2187615 0.091063246 -0.21813446 0.092749208 -0.2069822 0.030353397 -0.15454775
		 0.030353397 -0.20790213 0.035746872 -0.2187615 0.092749208 -0.21696621 0.030353397
		 -0.2187615;
createNode polyMapSew -n "polyMapSew2";
	rename -uid "FC3E664A-49CD-C1A6-8DA7-CCA2BB2CB380";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[308]" "e[311]" "e[316]" "e[319:320]" "e[323]" "e[337:338]" "e[348:349]" "e[394:395]" "e[420]" "e[423]" "e[428]" "e[431]" "e[444]" "e[447]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "A2B63255-4D33-6C26-3C66-F2AAD32EA0EF";
	setAttr ".uopa" yes;
	setAttr -s 345 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.45433474 -0.22014147 0.42945039 -0.17486715
		 0.40847433 -0.18744719 0.43383437 -0.23308015 0.40440488 -0.12959284 0.38297337 -0.14181429
		 0.39093131 -0.21959901 0.41670573 -0.26580215 0.47005445 -0.29970095 0.4889164 -0.28658292
		 0.34387201 -0.075193465 0.36645925 -0.06315136 0.36491323 -0.17339599 0.35652423
		 -0.28250772 0.38257581 -0.3288154 0.45489115 -0.33529988 0.50525033 -0.36094984 0.51587641
		 -0.33723035 0.32498336 -0.10389811 0.3134042 -0.013944447 0.34491754 -0.019026875
		 0.33047277 -0.23620009 0.32211721 -0.34541637 0.34813523 -0.39161944 0.42209893 -0.39967188
		 0.49069813 -0.39941558 0.29094952 -0.16534346 0.29233277 -0.039782465 0.29634279
		 -0.29921329 0.30457407 -0.37756824 0.33007526 -0.42320114 0.38806513 -0.46111724
		 0.45679346 -0.46446317 0.25815731 -0.22971541 0.25625509 -0.1005522 0.27921402 -0.33193529
		 0.28359807 -0.39014828 0.30864376 -0.43542254 0.36917648 -0.48982197 0.42071575 -0.52523285
		 0.24299401 -0.26531446 0.22235048 -0.16559982 0.25871378 -0.34487391 0.34658924 -0.50186402
		 0.39964432 -0.55107081 0.20779818 -0.20406556 0.224132 -0.27843249 0.36813098 -0.54598844
		 0.19717199 -0.22778511 0.2830137 -0.44249964 0.26068538 -0.44242215 0.26072007 -0.42539343
		 0.28305066 -0.42537338 0.26063538 -0.46691322 0.28303427 -0.46714595 0.23835665 -0.44253972
		 0.23838937 -0.42541337 0.2607547 -0.40836468 0.28308338 -0.40824714 0.29516664 -0.44277263
		 0.29520336 -0.42536235 0.23823559 -0.467186 0.29521528 -0.46786296 0.26059008 -0.48892903
		 0.28387034 -0.48910564 0.22623664 -0.42542434 0.22620273 -0.44283471 0.23842633 -0.40828708
		 0.26080465 -0.38387355 0.2832045 -0.38360086 0.29523739 -0.40795204 0.30144188 -0.44314578
		 0.30147746 -0.42535573 0.22605193 -0.46792519 0.23730904 -0.48914573 0.29583555 -0.48986629
		 0.30151233 -0.46881434 0.26057023 -0.49879184 0.28523546 -0.49823368 0.22627336 -0.408014
		 0.21996254 -0.42543089 0.219926 -0.44322103 0.23840559 -0.38364068 0.26084942 -0.36185777
		 0.28413063 -0.36164126 0.29538825 -0.38286164 0.30151412 -0.40756562 0.30606672 -0.44357449
		 0.30609962 -0.42534888 0.22534096 -0.48992735 0.2197513 -0.46888977 0.23590595 -0.49827516
		 0.2963993 -0.4978615 0.30146965 -0.49144942 0.30616781 -0.46992201 0.26056308 -0.50266725
		 0.28725976 -0.50145984 0.22622442 -0.38292339 0.21999806 -0.40764078 0.21534044 -0.42543754
		 0.21529949 -0.44366324 0.23756909 -0.36168084 0.26086897 -0.35199493 0.28553343 -0.35251182
		 0.29609871 -0.36085975 0.30168888 -0.38189706 0.30614057 -0.40712327 0.30466822 -0.44393083
		 0.30469409 -0.42533949 0.22474301 -0.49792066 0.21970099 -0.4915221 0.21509165 -0.47001082
		 0.23386937 -0.50150603 0.29988015 -0.49958631 0.30575731 -0.49350306 0.30481514 -0.47094756
		 0.26055533 -0.50731242 0.28873891 -0.50544488 0.2256037 -0.36091992 0.21992737 -0.38197196
		 0.21537322 -0.40721187 0.21674591 -0.42544681 0.21669668 -0.4440383 0.23620355 -0.35255262
		 0.260876 -0.34811956 0.28756988 -0.3492811 0.29669636 -0.35286644 0.30173871 -0.359265
		 0.30634853 -0.38077587 0.30474338 -0.40674818 0.29118365 -0.44409302 0.29118365 -0.42532343
		 0.22125506 -0.49965215 0.215406 -0.49358809 0.21644098 -0.47105503 0.23237652 -0.50549674
		 0.30297577 -0.50218236 0.30439654 -0.49606544 0.29138285 -0.47119787 0.26054525 -0.51564592
		 0.28818354 -0.51288259 0.22503966 -0.35292464 0.21996951 -0.35933661 0.21527183 -0.38086417
		 0.21677166 -0.40685543 0.23025626 -0.42546245 0.2301808 -0.44423211 0.2341792 -0.34932652
		 0.26088357 -0.3434743 0.28906268 -0.34529033 0.30018425 -0.35113508 0.30603358 -0.35719907
		 0.30499932 -0.37973157 0.29125929 -0.4065538 0.21814984 -0.50225693 0.21675956 -0.49616823
		 0.22987264 -0.47133687 0.23291361 -0.51294202 0.30158481 -0.50710005 0.22155863 -0.35119984
		 0.21568173 -0.35728285 0.21662438 -0.37983841 0.23025614 -0.40669268 0.23269987 -0.34534135
		 0.2608934 -0.33514082 0.28852537 -0.33784518 0.30328947 -0.34853035 0.30468002 -0.354619
		 0.29156774 -0.37944916 0.21952808 -0.50718892 0.218463 -0.34860367 0.21704251 -0.35472023
		 0.23005658 -0.37958759 0.23325491 -0.33790356 0.30191115 -0.34359848 0.21985382 -0.34368572
		 -0.40628982 0.43699282 -0.35992476 0.43729872 -0.35977712 0.42247728 -0.40625501
		 0.42236504 -0.4060421 0.4580802 -0.3599903 0.45860508 -0.27087516 0.4370991 -0.27040726
		 0.42184284 -0.35957435 0.40764478 -0.4061178 0.40771657 -0.4398804 0.42226568 -0.43988612
		 0.43656105 -0.40543416 0.47703895 -0.35986209 0.47762859 -0.27191955 0.45911422 -0.43965825
		 0.45711955 -0.22061521 0.42017362 -0.22112966 0.43487877 -0.27013463 0.40662286 -0.35923386
		 0.38626918 -0.40565109 0.38652709 -0.43970945 0.407924 -0.48765019 0.1030817 -0.42372403
		 0.10348549 -0.27287924 0.47868168 -0.43837458 0.47577024 -0.22268873 0.45641884 -0.22040999
		 0.40548977 -0.19892067 0.41938534 -0.19959468 0.43302035 -0.27010733 0.38481715 -0.35882857
		 0.36714226 -0.40499187 0.36743662 -0.43929473 0.38713729 -0.53361642 0.10264429 -0.3014698
		 0.10479483 -0.22619188 0.47717345 -0.44657713 0.45623457 -0.4451547 0.47448546 -0.20182329
		 0.45260417 -0.22069097 0.38402912 -0.19883007 0.40569735 -0.27002025 0.3655262 -0.20493145
		 0.35529596 -0.14024764 0.35521019 -0.43807268 0.36822399 -0.54281127 0.10346743 -0.23706204
		 0.10405168 -0.2094335 0.46570024 -0.19963735 0.38587204 -0.22259349 0.36366683 -0.015811801
		 0.35359621 -0.25108778 0.35519081 -0.44485685 0.36941418 -0.44619808 0.38792312 -0.20652431
		 0.098461151 -0.2061792 0.3727884 0.049724102 0.35088199 -0.26028544 0.35423553 0.079774082
		 0.35273969 0.044167891 -0.047354445 0.090938538 -0.046432316 0.090224653 -0.061266631
		 0.043581784 -0.062092409 0.045039415 -0.026044525 0.091945261 -0.025014207 0.18122673
		 -0.042670414 0.18007725 -0.057733998 0.089523226 -0.07608366 0.043026924 -0.076816142
		 0.0099876225 -0.062495083 0.010610156 -0.047893882 0.045768112 -0.0068819709 0.092802018
		 -0.005803816;
	setAttr ".uvtk[250:344]" 0.18272769 -0.02107726 0.011483848 -0.02668719 0.2294957
		 -0.052584529 0.23068875 -0.037907302 0.17880982 -0.072869629 0.088562399 -0.097445488
		 0.042445168 -0.097994775 0.0094294809 -0.077002525 0.046004355 0.00062122382 0.093166679
		 0.001712665 0.18397647 -0.001814723 0.012305133 -0.0075275004 0.23219305 -0.016722292
		 0.22812438 -0.067297816 0.25095198 -0.049882516 0.25202051 -0.035659373 0.17665195
		 -0.094685286 0.087825596 -0.11651084 0.04225108 -0.11700261 0.0087717623 -0.097787589
		 0.01236134 8.5867941e-07 0.1845147 0.0057166368 0.23345077 0.0023947246 0.004666809
		 -0.027142711 0.0055556633 -0.0081655495 0.25345889 -0.014637455 0.22564048 -0.08895424
		 0.24954084 -0.063898176 0.1747615 -0.11414203 -0.26362216 -0.12908462 -0.19967774
		 -0.12836629 0.0092668608 -0.11652899 0.005609218 -0.00080101565 0.23421144 0.0099224728
		 0.2489602 -0.00094049424 0.24637142 -0.083830714 0.22147924 -0.10981712 -0.077514052
		 -0.1262114 -0.30961794 -0.12945125 0.0024803467 -0.11542007 0.0018254742 -0.097089529
		 0.25509045 0.0051609166 0.23824573 -0.097438186 -0.013017118 -0.12293461 -0.31882042
		 -0.13045001 0.017585874 -0.11601326 -0.56953317 -0.15735745 -0.48708752 -0.15658149
		 -0.48737282 -0.20544857 -0.56976867 -0.20601919 -0.32947642 -0.1545797 -0.32984209
		 -0.20372143 -0.48759276 -0.25431442 -0.57001233 -0.25467798 -0.62911576 -0.15813518
		 -0.62958735 -0.20642868 -0.24557996 -0.15200993 -0.24590802 -0.20246026 -0.32986826
		 -0.25286335 -0.62957925 -0.25471193 -0.64110428 -0.16035831 -0.64154327 -0.20651773
		 -0.20574135 -0.1559121 -0.20430607 -0.20178372 -0.2461049 -0.25291538 -0.6415633
		 -0.25266656 -0.20628178 -0.24768206 -0.0050314963 0.32697421 0.078269199 0.32693648
		 0.078545436 0.2779721 -0.0049301088 0.27820396 0.23843691 0.3253299 0.23911127 0.27632445
		 0.07883276 0.22897989 -0.0048911572 0.22938734 -0.065136895 0.2779488 -0.06483265
		 0.32642305 0.32371694 0.32200688 0.32560295 0.27206004 0.23992637 0.22728443 -0.0048774928
		 0.20570177 0.078995526 0.20512849 -0.065242372 0.2295686 -0.077112831 0.27771592
		 -0.076813489 0.32419378 0.36315641 0.31232876 0.36698124 0.26502824 0.32799387 0.22245675
		 0.24037519 0.20342368 -0.065453246 0.20634866 -0.077256158 0.23108977 0.3695167 0.21701705
		 0.3298319 0.19842535 -0.077555619 0.20909858 0.37236139 0.19273919;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -sn "mtohMotionSampleStart" -ln "mtohMotionSampleStart" -at "float";
	addAttr -ci true -sn "mtohMotionSampleEnd" -ln "mtohMotionSampleEnd" -at "float";
	addAttr -ci true -sn "mtohTextureMemoryPerTexture" -ln "mtohTextureMemoryPerTexture" 
		-dv 4096 -min 1 -max 262144 -smn 16384 -at "long";
	addAttr -ci true -sn "mtohMaximumShadowMapResolution" -ln "mtohMaximumShadowMapResolution" 
		-dv 2048 -min 32 -max 8192 -at "long";
	addAttr -ci true -sn "mtohWireframeSelectionHighlight" -ln "mtohWireframeSelectionHighlight" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mtohColorSelectionHighlight" -ln "mtohColorSelectionHighlight" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -uac -sn "mtohColorSelectionHighlightColor" -ln "mtohColorSelectionHighlightColor" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "mtohColorSelectionHighlightColorr" -ln "mtohColorSelectionHighlightColorR" 
		-dv 1 -at "float" -p "mtohColorSelectionHighlightColor";
	addAttr -ci true -sn "mtohColorSelectionHighlightColorg" -ln "mtohColorSelectionHighlightColorG" 
		-dv 1 -at "float" -p "mtohColorSelectionHighlightColor";
	addAttr -ci true -sn "mtohColorSelectionHighlightColorb" -ln "mtohColorSelectionHighlightColorB" 
		-at "float" -p "mtohColorSelectionHighlightColor";
	addAttr -ci true -sn "mtohColorSelectionHighlightColor_mtohc_A" -ln "mtohColorSelectionHighlightColor_mtohc_A" 
		-dv 0.5 -at "float";
	addAttr -ci true -sn "mtohSelectionOutline" -ln "mtohSelectionOutline" -dv 4 -at "float";
	addAttr -ci true -sn "HdStormRendererPlugin__enableTinyPrimCulling" -ln "HdStormRendererPlugin__enableTinyPrimCulling" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdStormRendererPlugin__volumeRaymarchingStepSize" -ln "HdStormRendererPlugin__volumeRaymarchingStepSize" 
		-dv 1 -at "float";
	addAttr -ci true -sn "HdStormRendererPlugin__volumeRaymarchingStepSizeLighting" 
		-ln "HdStormRendererPlugin__volumeRaymarchingStepSizeLighting" -dv 10 -at "float";
	addAttr -ci true -sn "HdStormRendererPlugin__volumeMaxTextureMemoryPerField" -ln "HdStormRendererPlugin__volumeMaxTextureMemoryPerField" 
		-dv 128 -at "float";
	addAttr -ci true -sn "HdArnoldRendererPlugin__enable_progressive_render" -ln "HdArnoldRendererPlugin__enable_progressive_render" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__progressive_min_AA_samples" -ln "HdArnoldRendererPlugin__progressive_min_AA_samples" 
		-dv -4 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__enable_adaptive_sampling" -ln "HdArnoldRendererPlugin__enable_adaptive_sampling" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__enable_gpu_rendering" -ln "HdArnoldRendererPlugin__enable_gpu_rendering" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__interactive_target_fps" -ln "HdArnoldRendererPlugin__interactive_target_fps" 
		-dv 30 -at "float";
	addAttr -ci true -sn "HdArnoldRendererPlugin__interactive_target_fps_min" -ln "HdArnoldRendererPlugin__interactive_target_fps_min" 
		-dv 20 -at "float";
	addAttr -ci true -sn "HdArnoldRendererPlugin__interactive_fps_min" -ln "HdArnoldRendererPlugin__interactive_fps_min" 
		-dv 5 -at "float";
	addAttr -ci true -sn "HdArnoldRendererPlugin__threads" -ln "HdArnoldRendererPlugin__threads" 
		-dv -1 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__AA_samples" -ln "HdArnoldRendererPlugin__AA_samples" 
		-dv 10 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__AA_samples_max" -ln "HdArnoldRendererPlugin__AA_samples_max" 
		-dv 20 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_diffuse_samples" -ln "HdArnoldRendererPlugin__GI_diffuse_samples" 
		-dv 1 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_specular_samples" -ln "HdArnoldRendererPlugin__GI_specular_samples" 
		-dv 1 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_transmission_samples" -ln "HdArnoldRendererPlugin__GI_transmission_samples" 
		-dv 1 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_sss_samples" -ln "HdArnoldRendererPlugin__GI_sss_samples" 
		-dv 1 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_volume_samples" -ln "HdArnoldRendererPlugin__GI_volume_samples" 
		-dv 1 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__auto_transparency_depth" -ln "HdArnoldRendererPlugin__auto_transparency_depth" 
		-dv 10 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_diffuse_depth" -ln "HdArnoldRendererPlugin__GI_diffuse_depth" 
		-dv 1 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_specular_depth" -ln "HdArnoldRendererPlugin__GI_specular_depth" 
		-dv 1 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_transmission_depth" -ln "HdArnoldRendererPlugin__GI_transmission_depth" 
		-dv 2 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_volume_depth" -ln "HdArnoldRendererPlugin__GI_volume_depth" 
		-at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__GI_total_depth" -ln "HdArnoldRendererPlugin__GI_total_depth" 
		-dv 10 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_textures" -ln "HdArnoldRendererPlugin__ignore_textures" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_shaders" -ln "HdArnoldRendererPlugin__ignore_shaders" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_atmosphere" -ln "HdArnoldRendererPlugin__ignore_atmosphere" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_lights" -ln "HdArnoldRendererPlugin__ignore_lights" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_shadows" -ln "HdArnoldRendererPlugin__ignore_shadows" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_subdivision" -ln "HdArnoldRendererPlugin__ignore_subdivision" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_displacement" -ln "HdArnoldRendererPlugin__ignore_displacement" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_bump" -ln "HdArnoldRendererPlugin__ignore_bump" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_motion" -ln "HdArnoldRendererPlugin__ignore_motion" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_motion_blur" -ln "HdArnoldRendererPlugin__ignore_motion_blur" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_dof" -ln "HdArnoldRendererPlugin__ignore_dof" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_smoothing" -ln "HdArnoldRendererPlugin__ignore_smoothing" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_sss" -ln "HdArnoldRendererPlugin__ignore_sss" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__ignore_operators" -ln "HdArnoldRendererPlugin__ignore_operators" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "HdArnoldRendererPlugin__log_verbosity" -ln "HdArnoldRendererPlugin__log_verbosity" 
		-dv 2 -at "long";
	addAttr -ci true -sn "HdArnoldRendererPlugin__log_file" -ln "HdArnoldRendererPlugin__log_file" 
		-dt "string";
	addAttr -ci true -sn "HdArnoldRendererPlugin__profile_file" -ln "HdArnoldRendererPlugin__profile_file" 
		-dt "string";
	addAttr -ci true -sn "HdArnoldRendererPlugin__texture_searchpath" -ln "HdArnoldRendererPlugin__texture_searchpath" 
		-dt "string";
	addAttr -ci true -sn "HdArnoldRendererPlugin__plugin_searchpath" -ln "HdArnoldRendererPlugin__plugin_searchpath" 
		-dt "string";
	addAttr -ci true -sn "HdArnoldRendererPlugin__procedural_searchpath" -ln "HdArnoldRendererPlugin__procedural_searchpath" 
		-dt "string";
	addAttr -ci true -sn "HdArnoldRendererPlugin__osl_includepath" -ln "HdArnoldRendererPlugin__osl_includepath" 
		-dt "string";
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV2.out" "pCubeShape2.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
connectAttr "polyTweakUV4.out" "pCubeShape3.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCubeShape3.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyBevel1.ip";
connectAttr "pCubeShape3.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "pCubeShape3.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySmoothFace1.ip";
connectAttr "polySurfaceShape2.o" "polySplit7.ip";
connectAttr "polySplit7.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyExtrudeFace1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyBevel3.ip";
connectAttr "pCubeShape2.wm" "polyBevel3.mp";
connectAttr "polyBevel3.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyAutoProj1.ip";
connectAttr "pCubeShape2.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapSew1.ip";
connectAttr "polyMapSew1.out" "polyTweakUV2.ip";
connectAttr "polyTweak2.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj2.mp";
connectAttr "polySmoothFace1.out" "polyTweak2.ip";
connectAttr "polyPlanarProj2.out" "polyAutoProj2.ip";
connectAttr "pCubeShape3.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapSew2.ip";
connectAttr "polyMapSew2.out" "polyTweakUV4.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
// End of kesi.ma
