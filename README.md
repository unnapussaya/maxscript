==================== How to install =========================
1. Open 3dsmax
2. Scripting >> Run script >> aumTools_macro.ms
3. Customize >> Customize user interface >> Keyboard >> search for "AumTools" in Main UI and add Hotkey
4. Execute hotkey to run the tool

==================== How to uninstall ========================
1. Go to location:
C:\Users\[username]\AppData\Local\Autodesk\3dsMax\2016 - 64bit\ENU\usermacros
**replace [username] by yours
For example: C:\Users\Unna Pussayapaiboon\AppData\Local\Autodesk\3dsMax\2016 - 64bit\ENU\usermacros

2. Delete the file "toolBox_custom-AumToolsMacro"

==============================================================
Update log

[2019/01/20] v2.00.03
- Fix bug in 'Select objects by name' (hold current selection)
- Fix typo on UI

[2018/12/22] v2.00.02
- Move 'Crease Set Init' to the top (next to 'Set Pos to Zero')
- Add UV Resize Feature
	Note:
	- MinSize must be number but can't be 0. Support formula that contains +-*/. Can't contain letters or leave as empty
	- Channel can leave as empty where default value is '1'. Channel must be number only. The lowest channel value is 1.

[2018/09/10] v2.00.01
- Add export individual fbx feature

[2018/08/16] v2.00.00
- Reorganize UI
- Add Custom pivot set
- Add setting for ref block (can be first or last selection)
- Add copy position function (equivalent to align position)
- Add select object by name function (contain, perfect match, RegExp) can hold current selection
*Note contain is not case-sensitive but perfect match is case sensitive
- Add select object by instance function (This one just execute 'select instance' tool in max)
- Add generate reference block function. Size are power of 2 start from 32 to 2048

[2018/07/21] v1.00.01
- Set position to zero
- Pivot set (center bottom, center, bottom right, align to world)
- Generate human ref block
- Replace object by first selection (copy/instance)
- Attach object to first selection
- Detach selected object (element/face)
- Copy properties based on first selection (pivot position, pivot position from center, rotation, scale)
- Set initial crease set