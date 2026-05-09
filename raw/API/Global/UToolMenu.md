### UToolMenu


Represents a menu in the ToolMenus system.

An instance of this class is returned by basic APIs such as UToolMenus::RegisterMenu and UToolMenus::ExtendMenu.

**属性**:

- `FName MenuName`
- `FToolMenuOwner MenuOwner`
- `FName MenuParent`
- `EMultiBoxType MenuType`
- `FName StyleName`
- `FName TutorialHighlightName`
- `TOptional<bool> bAllowToolBarWrapButton [Whether to (ever) allow the wrap button/overflow menu. Defauls to the style.]`
- `bool bCloseSelfOnly`
- `bool bPreventCustomization [Prevent menu from being customized]`
- `bool bSearchable`
- `bool bSeparateSections [Whether different sections should have separators automatically added between them.]`
- `bool bShouldCloseWindowAfterMenuSelection`
- `bool bToolBarForceSmallIcons`
- `bool bToolBarIsFocusable`


**方法**:

- `AddDynamicSection(FName SectionName, UToolMenuSectionDynamic Object)`
- `AddMenuEntry(FName SectionName, FToolMenuEntry Args)`
- `AddMenuEntryObject(UToolMenuEntryScript InObject)`
- `AddSection(FName SectionName, FText Label, FName InsertName = NAME_None, EToolMenuInsertType InsertType = EToolMenuInsertType :: Default, EToolMenuSectionAlign Alignment = EToolMenuSectionAlign :: Default)`
- `UToolMenu AddSubMenu(FName Owner, FName SectionName, FName Name, FText Label, FText ToolTip)`
- `InitMenu(FToolMenuOwner Owner, FName Name, FName Parent = NAME_None, EMultiBoxType Type = EMultiBoxType :: Menu)`
- `RemoveMenuEntryObject(UToolMenuEntryScript InObject)`

---

