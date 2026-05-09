### FToolMenuEntry


Represents entries in menus such as buttons, checkboxes, and sub-menus.

Many entries are created for you via the methods of FToolMenuSection, such as FToolMenuSection::AddMenuEntry.

**属性**:

- `FToolMenuInsert InsertPosition`
- `FName Name`
- `FToolMenuOwner Owner`
- `UToolMenuEntryScript ScriptObject`
- `FName StyleNameOverride`
- `FName TutorialHighlightName`
- `EMultiBlockType Type`
- `EUserInterfaceActionType UserInterfaceActionType`
- `bool bShouldCloseWindowAfterMenuSelection`


**方法**:

- `FText GetLabel() const`
- `FText GetToolTip() const`
- `SetIcon(FName StyleSetName, FName StyleName = NAME_None, FName SmallStyleName = NAME_None)`
- `SetLabel(FText Label)`
- `SetStringCommand(EToolMenuStringCommandType Type, FName CustomType, FString String)`
- `SetToolTip(FText ToolTip)`
- `FToolMenuEntry& opAssign(FToolMenuEntry Other)`

---

