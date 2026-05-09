### UToolMenus


**属性**:

- `TMap<FName,FName> MenuSubstitutionsDuringGenerate [Allow substituting one menu for another during generate but not during find or extend]`


**方法**:

- `UToolMenu ExtendMenu(FName Name)`  
  Extends a menu without registering the menu or claiming ownership of it. Ok to call even if menu does not exist yet.
@param       Name    Name of the menu to extend
@return      ToolMenu        Menu object
- `UToolMenu FindMenu(FName Name)`  
  Finds an existing menu that has been registered or extended.
@param       Name    Name of the menu to find.
@return      ToolMenu        Menu object. Returns null if not found.
- `bool IsMenuRegistered(FName Name) const`  
  Determines if a menu has already been registered.
@param       Name    Name of the menu to find.
@return      bool    True if menu has already been registered.
- `RefreshAllWidgets()`  
  Rebuilds all currently generated widgets next tick.
- `bool RefreshMenuWidget(FName Name)`  
  Rebuilds all widgets generated from a specific menu.
- `UToolMenu RegisterMenu(FName Name, FName Parent = NAME_None, EMultiBoxType Type = EMultiBoxType :: Menu, bool bWarnIfAlreadyRegistered = true)`  
  Registers a menu by name
@param       Parent  Optional name of a menu to layer on top of.
@param       Type    Type of menu that will be generated such as: ToolBar, VerticalToolBar, etc..
@param       bWarnIfAlreadyRegistered        Display warning if already registered
@return      ToolMenu        Menu object
- `RemoveEntry(FName MenuName, FName Section, FName Name)`  
  Removes a menu entry from a given menu and section
- `RemoveMenu(FName MenuName)`  
  Unregisters a menu by name
- `RemoveSection(FName MenuName, FName Section)`  
  Removes a section from a given menu
- `SetSectionLabel(FName MenuName, FName SectionName, FText Label)`  
  Sets a section's displayed label text.
- `SetSectionPosition(FName MenuName, FName SectionName, FName OtherSectionName, EToolMenuInsertType PositionType)`  
  Sets where to insert a section into a menu when generating relative to other section names.
- `UnregisterOwnerByName(FName InOwnerName)`  
  Removes all entries that were registered under a specific owner name

---

