### UScriptEditorMenuExtension


**属性**:

- `EScriptEditorMenuExtensionLocation ExtensionMenu []`
- `EScriptEditorMenuExtensionOrder ExtensionOrder []`
- `FName ExtensionPoint []`
- `FText MenuSectionHeader []`
- `FName ToolMenuInsertPosition [For tool menus, which element to insert relative to]`
- `EToolMenuInsertType ToolMenuInsertType [For tool menus, the position within the section to insert]`
- `EToolMenuSectionAlign ToolMenuSectionAlign [For tool menus, the alignment of the section within the parent]`
- `bool bAddSeparatorAfterOptions []`
- `bool bAddSeparatorBeforeOptions []`


**方法**:

- `UObject GetToolMenuContext(TSubclassOf<UObject> ContextClass) const`  
  If the extender is part of a ToolMenu, retrieve part of that tool menu's context.
Will return null if not a ToolMenu.
- `bool ShouldExtend() const`

---

