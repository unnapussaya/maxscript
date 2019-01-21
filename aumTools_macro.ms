macroscript AumToolsMacro
	category:"toolBox_custom"
	buttonText:"AumTools"
	toolTip:"AumTools"
(
try(
	destroydialog maxscriptseries
)
catch()

rollout maxscriptseries "Aum Tools v.2.00.03" width:360 height:850(
	button 'setZeroButton' "Set Pos to zero" pos:[17,5] width:140 height:21 align:#left
	button 'creaseSetButton' "Crease Set Init" pos:[186,6] width:140 height:21 align:#left	

	GroupBox 'groupPivot' "PIVOT POSITION SETTING" pos:[5,33] width:350 height:159 align:#left
		label 'defaultPivotLable' "Default pivot:" pos:[21,49] width:68 height:14 align:#left		
			button 'centerButton' "Center" pos:[18,66] width:100 height:21 across:2 align:#left
			button 'centerTopButton' "Cen Top" pos:[18,90] width:48 height:21 align:#left	
			button 'centerBottomButton' "Cen Btm" pos:[70,90] width:48 height:21 align:#left
			button 'bottomLeftButton' "Btm Left" pos:[18,114] width:48 height:21 align:#left	
			button 'bottomRightButton' "Btm Right" pos:[70,114] width:48 height:21 align:#left
			button 'alignWorldButton' "Align to World" pos:[18,156] width:100 height:21 align:#left
		GroupBox 'groupCustomPivot' "Custom pivot setting" pos:[133,48] width:217 height:138 align:#left
			radiobuttons 'x_pivotSetting' "x" pos:[138,60] width:206 height:30 labels:#("n/a", "Min", "Center", "Max") default:1 columns:4 align:#left	
			radiobuttons 'y_pivotSetting' "y" pos:[138,89] width:206 height:30 labels:#("n/a", "Min", "Center", "Max") default:1 columns:4 align:#left
			radiobuttons 'z_pivotSetting' "z" pos:[138,118] width:206 height:30 labels:#("n/a", "Min", "Center", "Max") default:1 columns:4 align:#left
			button 'setPivotButton' "Set pivot" pos:[161,156] width:160 height:22 align:#left

	label 'sectionLabel1' "========================================" pos:[19,194] width:324 height:17 align:#left
	
	GroupBox 'groupEditObj' "EDIT OBJECT" pos:[6,210] width:351 height:312 align:#left	
		GroupBox 'groupReplace' "Replace object by ref selection" pos:[14,223] width:169 height:86 align:#left
		button 'replaceButton' "Replace" pos:[27,242] width:140 height:21 align:#left
		radiobuttons 'copyType' "" pos:[38,268] width:132 height:16 labels:#("copy", "instance") columns:2 align:#left
		checkbox 'keepRotCheckBox' "Keep 'Copy' Object Rotation" pos:[20,288] width:157 height:15 align:#left	
	
	radiobuttons 'refBlockSetting' "Reference block is:" pos:[197,225] width:88 height:46 labels:#("First selection", "Last selection") default:1 columns:1 align:#left
	label 'refBlockLabel' "(Setting affects this section)" pos:[195,276] width:154 height:27 align:#left	

	GroupBox 'groupAttach' "Attach object to ref selection" pos:[15,317] width:163 height:66 align:#left
		button 'attachButton' "Attach" pos:[23,336] width:140 height:21 align:#left
		checkbox 'editPolyConvertCheckBox' "Convert to EditPoly" pos:[22,362] width:146 height:15 checked:false align:#left
	
	GroupBox 'groupDetach' "Detach selected object" pos:[185,317] width:166 height:66 align:#left
		button 'detachButton' "Detach" pos:[198,335] width:140 height:21 align:#left
		radiobuttons 'detachType' "" pos:[205,359] width:130 height:16 labels:#("Element", "Face") columns:2 align:#left
		

	GroupBox 'groupCopy' "Copy Properties" pos:[14,391] width:340 height:124 align:#left
	GroupBox 'groupCopyPivot' "Pivot" pos:[21,408] width:157 height:72 align:#left	
		button 'copyPivotButton' "Pivot Position" pos:[30,426] width:140 height:21 align:#left
		button 'copyPivotCenterButton' "Pivot Distance from Center" pos:[30,452] width:140 height:21 align:#left
	GroupBox 'groupCopyTranslation' "Translation" pos:[186,407] width:164 height:98 align:#left	
		button 'copyPosButton' "Position" pos:[197,426] width:140 height:21 align:#left	
		button 'copyRotButton' "Rotation" pos:[197,452] width:140 height:21 align:#left
		button 'copyScaleButton' "Scale" pos:[197,478] width:140 height:21 align:#left
	button 'copyColButton' "Color" pos:[30,486] width:140 height:21 enabled:true align:#left

	label 'sectionLabel2' "========================================" pos:[18,522] width:324 height:17 align:#left	
	
	GroupBox 'groupExportIndFbx' "Export Individual fbx" pos:[6,535] width:348 height:84 align:#left
		edittext 'folderNameTxt' "FolderName" pos:[10,554] width:171 height:22 align:#left
		edittext 'filePrefixTxt' "Prefix" pos:[185,554] width:166 height:22 align:#left
		edittext 'pathTxt' "Path" pos:[10,582] width:171 height:22 align:#left
		checkbox 'exportPopUpCheckbox' "popup" pos:[186,583] width:62 height:16 checked:true align:#left
		button 'exportBtn' "Export" pos:[250,582] width:98 height:21 align:#left
	
	label 'sectionLabel3' "========================================" pos:[19,620] width:324 height:17 align:#left
	GroupBox 'groupSelectObjName' "Select objects by name" pos:[7,635] width:348 height:84 align:#left
		edittext 'objNameTxt' "Keyword" pos:[17,655] width:223 height:22 align:#left
		radiobuttons 'stringCmpType' "" pos:[49,677] width:257 height:16 labels:#("Contain", "Perfect match", "Match Pattern") columns:3 align:#left
		button 'selectObjButton' "Select!!" pos:[248,655] width:98 height:21 align:#left
		checkbox 'stringCaseType' "Case sensitive" pos:[50,694] width:94 height:15 enabled:false checked:false align:#left
		checkbox 'holdSelectCheckBox' "Hold current selection" pos:[160,695] width:128 height:15 enabled:true checked:false align:#left
	
	GroupBox 'groupSelectObjInstance' "Select objects by instance" pos:[8,722] width:168 height:48 align:#left
		button 'selectInstanceButton' "Select instance" pos:[24,740] width:140 height:21 enabled:true align:#left
	
	GroupBox 'groupGenBlock' "Generate block" pos:[184,721] width:168 height:123 align:#left
		dropdownList 'blockLengthSetting' "Length(y)" pos:[187,740] width:50 height:40 items:#("4", "8", "16", "32", "64", "128", "256", "512", "1024", "2048") selection:4 align:#left
		dropdownList 'blockWidthSetting' "Width(x)" pos:[243,740] width:50 height:40 items:#("4", "8", "16", "32", "64", "128", "256", "512", "1024", "2048") selection:4 align:#left
		dropdownList 'blockHeightSetting' "Height(z)" pos:[299,742] width:50 height:40 items:#("4", "8", "16", "32", "64", "128", "256", "512", "1024", "2048") selection:4 align:#left
		button 'genBlockButton' ">> Generate block <<" pos:[200,789] width:140 height:21 align:#left
	button 'genPeopleButton' "Generate Human Ref Block" pos:[200,815] width:140 height:21 align:#left	

	GroupBox 'groupUV' "UV Resize" pos:[9,774] width:167 height:70 align:#left
		button 'uvResizeBtn' "Resize UV!!" pos:[24,818] width:140 height:21 enabled:true align:#left
		edittext 'minSizeTxt' "MinSize" pos:[13,790] width:91 height:22 align:#left
		edittext 'channelTxt' "Channel" pos:[106,790] width:64 height:22 align:#left
	
	
-- Group: No group=================================================================================================	
	-- Set object position to (0, 0, 0)
	on setZeroButton pressed do(
		objArray = selection as array
		
		undo "Aum Tools (Set position)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					obj.pos =  [0, 0, 0]
				)
			)
			else(
				messagebox "Select some objects"
			)
		)
	)	
	
	-- Initialize Crease set
	on creaseSetButton pressed do(
		objArray = selection as array
		
		undo "Aum Tools (Crease Set)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					addModifier obj (CreaseSet())
					addModifier obj (OpenSubdiv())

					modPanel.setCurrentObject obj.modifiers[#CreaseSet]
					obj.modifiers[#CreaseSet].displaySetColors = on
					subobjectLevel = 2	
						
					obj.modifiers[#CreaseSet].CreateSet "mini"
					obj.modifiers[#CreaseSet].creasesetcrease[1] = 0.05
					obj.modifiers[#CreaseSet].creasesetcolor[1] = (color 167 73 0)
						
					obj.modifiers[#CreaseSet].CreateSet "soft"
					obj.modifiers[#CreaseSet].creasesetcrease[2] = 0.2
					obj.modifiers[#CreaseSet].creasesetcolor[2] = (color 0 238 255)
						
					obj.modifiers[#CreaseSet].CreateSet "medium"
					obj.modifiers[#CreaseSet].creasesetcrease[3] = 0.5
					obj.modifiers[#CreaseSet].creasesetcolor[3] = (color 0 0 255)
						
					obj.modifiers[#CreaseSet].CreateSet "hard"
					obj.modifiers[#CreaseSet].creasesetcrease[4] = 1
					obj.modifiers[#CreaseSet].creasesetcolor[4] = (color 255 0 0)
				)
			)
			else(
				messagebox "Select some objects"
			)
		)
	)
	
-- Group: Pivot Set=================================================================================================
	-- set pivot to Center Bottom
	on centerBottomButton pressed do(
		objArray = selection as array
		
		undo "Aum Tools (Set pivot)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					obj.pivot = [obj.center.x, obj.center.y, obj.min.z]
				)
			)
			else(
				messagebox "Select some objects"
			)
		)
	)
	
	-- set pivot to Center Top
	on centerTopButton pressed do(
		objArray = selection as array
		
		undo "Aum Tools (Set pivot)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					obj.pivot = [obj.center.x, obj.center.y, obj.max.z]
				)
			)
			else(
				messagebox "Select some objects"
			)
		)
	)
	
	-- set pivot to Center
	on centerButton pressed do(
		objArray = selection as array
		
		undo "Aum Tools (Set pivot)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					obj.pivot = [obj.center.x, obj.center.y, obj.center.z]
				)
			)
			else(
				messagebox "Select some objects"
			)
		)
			
	)
	
	-- Set pivot to Bottom Right
	on bottomRightButton pressed do(
		objArray = selection as array
		
		undo "Aum Tools (Set pivot)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					obj.pivot = [obj.max.x, obj.min.y, obj.min.z]
				)
			)
			else(
				messagebox "Select some objects"
			)
		)
	)
	
	-- Set pivot to Bottom Left
	on bottomLeftButton pressed do(
		objArray = selection as array
		
		undo "Aum Tools (Set pivot)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					obj.pivot = [obj.min.x, obj.min.y, obj.min.z]
				)
			)
			else(
				messagebox "Select some objects"
			)
		)
	)	
	
		-- Align pivot to world
	on alignWorldButton pressed do(
		objArray = selection as array
		
		undo "Aum Tools (Set pivot)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					WorldAlignPivot obj
				)
			)
			else(
				messagebox "Select some objects"
			)
		)
	)

	-- Custom set pivot
	on setPivotButton pressed do(
		objArray = selection as array
		undo "Aum Tools (Set pivot)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					case x_pivotSetting.state of(
						2: obj.pivot.x = obj.min.x
						3: obj.pivot.x = obj.center.x
						4: obj.pivot.x = obj.max.x
					)
					
					case  y_pivotSetting.state of(
						2: obj.pivot.y = obj.min.y
						3: obj.pivot.y = obj.center.y
						4: obj.pivot.y = obj.max.y
					)
					
					case  z_pivotSetting.state of(
						2: obj.pivot.z = obj.min.z
						3: obj.pivot.z = obj.center.z
						4: obj.pivot.z = obj.max.z
					)
				)
			)
			else(
				messagebox "Select some objects"
			)
		)
		
	)
	
	
-- Group: Attach&Detach=================================================================================	
	-- Attach selected objects to the first selected object
	on attachButton pressed do(
		objArray = selection as array

		undo "Aum Tools (Attach object)" on(
			if objArray.count > 1 then(
				idx_last = objArray.count
				case refBlockSetting.state of(
					1: (
						if editPolyConvertCheckBox.state == true then converttopoly objArray[1]
						for idx_obj=2 to idx_last do(
							try polyop.attach  objArray[1] objArray[idx_obj]
							catch(
								try meshop.attach  objArray[1] objArray[idx_obj]
									catch(
										errMsg = "Cannot attach to object class '" + (classof objArray[1] as string) + "'\n Please convert to Editable Poly or Editable Mesh"
										messageBox errMsg
									)
							)
						)
					)
					
					2:(
						if editPolyConvertCheckBox.state == true then converttopoly objArray[idx_last]
						for idx_obj = idx_last-1 to 1 by -1 do(
							try polyop.attach  objArray[idx_last] objArray[idx_obj]
							catch(
								try meshop.attach  objArray[idx_last] objArray[idx_obj]
								catch(
										errMsg = "Cannot attach to object class '" + (classof objArray[idx_last] as string) + "'\n Please convert to Editable Poly or Editable Mesh"
										messageBox errMsg
								)
							)
						)
					)
				)
			)
			else(
				messagebox "Please select at least 2 objects"
			)
		)
	)
	
	-- Detach element in selected object
	on detachButton pressed do(
		objArray = selection as array
		
		undo "Aum Tools (Detach element)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
					if classof obj != Editable_Poly and classof obj != PolyMeshObject then converttopoly obj
					objName = obj.name
					
					case detachType.state of(
						-- Detach by element
						1: (
							idx_element = 1
							while polyOp.getNumFaces obj > 1 do(
								elementName = objName + "_part" + idx_element as string
								elementSet = PolyOp.getElementsUsingFace obj 1
								polyOp.detachFaces obj elementSet delete:true asNode:true name:elementName
								
								idx_element = idx_element + 1
							)
							
						)
							
						-- Detach by face
						2: (
							for idx_face = polyop.getNumFaces obj to 1 by -1 do(
								elementName = objName + "_part" + idx_face as string
								polyOp.detachFaces obj #{idx_face} delete:true asNode:true name:elementName
							)
						)
					)
				)
			)
			
			else(
				messagebox "Select some objects"
			)
		)			
	)	
	
	
-- Group: Replace object to first selection=================================================================================	
	-- Replace selected objects by using the first selected object as source
	
	on replaceButton pressed do(
		objArray = selection as array

		undo "Aum Tools (Replace object)" on(
			if objArray.count > 1 then(
				idx_last = objArray.count
				case refBlockSetting.state of(
					1: (
						for idx_obj=2 to idx_last do(
							case copyType.state of(
								1: (newObj = copy objArray[1]
									
									if keepRotCheckBox.state then(
										newObj.rotation = objArray[idx_obj].rotation
									)
									
									newObj.name = objArray[idx_obj].name
									newObj.pos = objArray[idx_obj].pos
									delete objArray[idx_obj]
									)
									
								2: instanceReplace objArray[idx_obj] objArray[1]
							)
						)
					)
					
					2:(
						for idx_obj = idx_last-1 to 1 by -1 do(
							case copyType.state of(
								1: (newObj = copy objArray[idx_last]
									
									if keepRotCheckBox.state then(
										newObj.rotation = objArray[idx_obj].rotation
									)
									
									newObj.name = objArray[idx_obj].name
									newObj.pos = objArray[idx_obj].pos
									delete objArray[idx_obj]
									)
									
								2: instanceReplace objArray[idx_obj] objArray[idx_last]
							)
						)
					)
				)
			)
			else(
				messagebox "Please select at least 2 objects"
			)
		)
	)
	
-- Group: Copy Properties=================================================================================================	
	-- Copy pivot from first selected object to other selected objects
	on copyPivotButton pressed do(
		objArray = selection as array

		undo "Aum Tools (Copy pivot)" on(
			if objArray.count > 1 then(
				idx_last = objArray.count
				case refBlockSetting.state of(
					1:(
						for idx_obj=2 to idx_last do(
							objArray[idx_obj].pivot = objArray[1].pivot
						)
					)
					2:(
						for idx_obj = idx_last - 1 to 1 by -1 do(
							objArray[idx_obj].pivot = objArray[idx_last].pivot
						)
					)
				)
			)
			else(
				messagebox "Please select at least 2 objects"
			)
		)
	)
	
	-- Copy pivot from first selected object to other selected objects (location is based on the distance between the center of mass
	on copyPivotCenterButton pressed do(
		objArray = selection as array

		undo "Aum Tools (Copy pivot)" on(
			if objArray.count > 1 then(
				idx_last = objArray.count
				case refBlockSetting.state of(
					1:(
						-- Find different between pivot and center to get shift position
						pivotshift = objArray[1].pivot-objArray[1].center 
						
						for idx_obj=2 to idx_last do(
							-- Set new pivot base on shift position and its own center
							objArray[idx_obj].pivot = objArray[idx_obj].center  + pivotshift
						)
					)
					2:(
						pivotshift = objArray[idx_last].pivot-objArray[idx_last].center 
						for idx_obj = idx_last-1 to 1 by -1 do(
							objArray[idx_obj].pivot = objArray[idx_obj].center  + pivotshift
						)
					)
				)
			)
			else(
				messagebox "Please select at least 2 objects"
			)
		)
	)	
	
	on copyPosButton pressed do(
		objArray = selection as array
		undo "Aum Tools (Copy Position)" on(
			if objArray.count > 1 then(
				idx_last = objArray.count
				case refBlockSetting.state of(
					1:(
						for idx_obj=2 to idx_last do(
							objArray[idx_obj].pos = objArray[1].pos
						)
					)
					2:(
						for idx_obj=idx_last-1 to 1 by -1 do(
							objArray[idx_obj].pos = objArray[idx_last].pos
						)
					)
				)
			)
			else(
				messagebox "Please select at least 2 objects"
			)
		)
	)
	
	on copyRotButton pressed do(
		objArray = selection as array
		undo "Aum Tools (Copy Rotation)" on(
			if objArray.count > 1 then(
				idx_last = objArray.count
				case refBlockSetting.state of(
					1:(
						for idx_obj=2 to idx_last do(
							positionTemp = objArray[idx_obj].pos
							objArray[idx_obj].rotation = objArray[1].rotation
							objArray[idx_obj].pos = positionTemp
						)
					)
					2:(
						for idx_obj=idx_last-1 to 1 by -1 do(
							positionTemp = objArray[idx_obj].pos
							objArray[idx_obj].rotation = objArray[idx_last].rotation
							objArray[idx_obj].pos = positionTemp
						)
					)
				)
			)
			else(
				messagebox "Please select at least 2 objects"
			)
		)
	)
	
	on copyScaleButton pressed do(
		objArray = selection as array
		undo "Aum Tools (Copy Scale)" on(
			if objArray.count > 1 then(
				idx_last = objArray.count
				case refBlockSetting.state of(
					1:(
						for idx_obj=2 to idx_last do(
							objArray[idx_obj].scale = objArray[1].scale
						)
					)
					2:(
						for idx_obj=idx_last-1 to 1 by -1 do(
							objArray[idx_obj].scale = objArray[idx_last].scale
						)
					)
				)
			)
			else(
				messagebox "Please select at least 2 objects"
			)
		)
	)
	
	on copyColButton pressed do(
		objArray = selection as array
		undo "Aum Tools (Copy Color)" on(
			if objArray.count > 1 then(
				idx_last = objArray.count
				case refBlockSetting.state of(
					1:(
						for idx_obj=2 to idx_last do(
							objArray[idx_obj].wirecolor = objArray[1].wirecolor
						)
					)
					2:(
						for idx_obj=idx_last-1 to 1 by -1 do(
							objArray[idx_obj].wirecolor = objArray[idx_last].wirecolor
						)
					)
				)
			)
			else(
				messagebox "Please select at least 2 objects"
			)
		)
	)
	
-- Group: Export individual fbx=================================================================================================	
	on exportBtn pressed do(
		folderNameDefault = "exportMdl"
		folderPathDefault = maxFilePath
		
		folderName = folderNameTxt.text
		fileNamePrefix = filePrefixTxt.text
		folderPath = pathTxt.text
		
		FileCounter = 0
		
		if folderName == "" then(
			folderName = folderNameDefault
		)
		
		if folderPath == "" then (
			folderPath = folderPathDefault
		)
		else(
			folderPath = folderPath + "\\"
		)

		outputPath = folderPath + folderName + "\\"
		flagMakeDir = makeDir outputPath
		
		if flagMakeDir then (
			objArray = selection as array
			if objArray.count != 0 then(
				for obj in objArray do(
					select obj
					if fileNamePrefix == "" then (
						outputFile =(outputPath + obj.name) + ".fbx"
					)
					else(
						outputFile =(outputPath + fileNamePrefix + "_" + obj.name) + ".fbx"
					)
					print outputFile
					
					if exportPopUpCheckbox.state then(
						exportfile outputFile selectedOnly:true
					)
					else(
						exportfile outputFile #noPrompt selectedOnly:true
					)
					FileCounter = FileCounter+1
				)
				messagebox ("Export completed!\nOutput path: '"+outputPath + "'\n" +"Total file: " + (FileCounter as string))
			)
			else(
				messagebox "Please select at least one object to export"
			)
		)
		else(
			errMsg = "Invalid output path: " + outputPath
			messagebox errMsg
		)
	)
	
	
-- Group: select object by name=================================================================================================	
	on selectObjButton pressed do(
		undo "Aum Tools (Select objects by name)" on(
			keywordName = objNameTxt.text
			if keywordName != "" then(
				count = 1
				if holdSelectCheckBox.state then(
					objArray = selection as array
					count = count+objArray.count
				)
				else(
					objArray=#()
					clearSelection()
				)
			
				allObj = $*
				for obj in allObj do(
					objName = obj.name
					case stringCmpType.state of(
						1: selectCondition = (findString objName keywordName != undefined)
						2: selectCondition = (objName == keywordName)
						3: selectCondition = (matchPattern objName pattern: keywordName)
					)	
					if selectCondition then(
						objArray[count] = obj
						count = count+1
					)
				)
				
				if objArray.count > 0 then(
					select objArray
				)
				else(
					errMsg = "Cannot find object in the scene that has name matching the keyword '" + keywordName + "'"
					messagebox errMsg
				)
			)
			else(
				messagebox "Please enter keyword of object name in the textbox."
			)
		)
	)
	
	on selectInstanceButton pressed do(
		undo "Aum Tools (Select instance)" on(
			--objArray = selection as array
			macros.run "Selection" "SelectInstances"
		)
	)

-- Group: Generate Block=================================================================================================
	on genBlockButton pressed do(
		undo "Aum Tools (Gen block)" on(
			blockLength = execute blockLengthSetting.selected
			blockWidth = execute blockWidthSetting.selected
			blockHeight = execute blockHeightSetting.selected
			
			newbox = box length:blockLength width:blockWidth height:blockHeight
			select newbox
		)
	)

	
	-- Gen reference human figure block at (0, 0 ,0)
	on genPeopleButton pressed do(
		undo "Aum Tools (Gen block)" on(
			humanBox = box length:64 width:64 height:192
			humanBox.name = "HumanBlock"
			
			humanBox.pivot = [humanBox.min.x, humanBox.min.y, humanBox.min.z]
			humanBox.pos =  [0, 0, 0]
			select humanBox
		)
	)
	
-- Group: UV=================================================================================================	
	on uvResizeBtn pressed do(
		minSizeSetting = minSizeTxt.text
		channelSetting = channelTxt.text
		msg = ""
		errMsg = ""
		objArray = selection as array
		
		undo "Aum Tools (Set UV Size)" on(
			if objArray.count != 0 then(
				for obj in objArray do(
			
					if minSizeSetting != "" then(
						if minSizeSetting != "0" then(
							if (trimLeft minSizeSetting "0123456789./*-+").count == 0 and (trimLeft minSizeSetting "./*-+").count != 0  then(
								
								UVTileSetting = 1.0/(execute minSizeSetting as float)
								msg = ("MinSize = " + minSizeSetting as string + " --> UVtile is set to '" + UVTileSetting as string + "'" )
									
								if (trimLeft channelSetting "0123456789").count == 0 then(
									addModifier obj (UVW_Xform())
									obj.modifiers[#UVW_Xform].U_Tile = UVTileSetting
									obj.modifiers[#UVW_Xform].V_Tile = UVTileSetting
									
									if channelSetting == "" then(
										msg = msg + "\n" + "Map Channel = 1 (default)"
									)
									else if channelSetting == "0" then(
										msg = msg + "\n" + "Map Channel = 1 (The lowest channel is 1. Can't be 0)"
									)
									else(
										obj.modifiers[#UVW_Xform].Map_Channel = channelSetting as integer
										msg = msg + "\n" + "Map Channel = " + channelSetting
									)
								)
								else(
									errMsg = "Input 'Channel = " + (channelSetting as string) + "' is invalid. \n" + "Please re-enter the value. Channel must be number or empty (default = 1)."
								)
							)
							
							else(
								errMsg = "Input 'MinSize = " + (minSizeSetting as string) + "' is invalid. \n" + "Please re-enter the value. MinSize must be number or formula." +"\n" + "Eg. '1', '1.5', '256', '1+2+3'"
							)
						)
						else(
							errMsg = "Please re-enter the MinSize value. Input MinSize cannot be 0"
						)
					)
					else(
						errMsg = "Please set 'MinSize' to specify the size to scale UV of the selected objects down to 1:1."
					)
				)
			)
			else(
				errMsg = "Please select at least one object to resize UV."
			)
		)
		
		if errMsg == "" then(
			completeMsg = "UV Resize completed!!!" + "\n"
			msg = completeMsg + msg + "\n" +"\n" + "Note: If value in modifier appears different from the pop up message, don't forget to change precision to '8' decimals (Customize > Preferences)."
			messagebox msg
		)
		else(
			messagebox errMsg
		)
	)
	
)
createdialog maxscriptseries
)