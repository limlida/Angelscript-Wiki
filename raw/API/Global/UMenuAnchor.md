### UMenuAnchor


The Menu Anchor allows you to specify an location that a popup menu should be anchored to,
and should be summoned from.
* Single Child
* Popup

**属性**:

- `TSubclassOf<UUserWidget> MenuClass [The widget class to spawn when the menu is required.  Creates the widget freshly each time.
If you want to customize the creation of the popup, you should bind a function to OnGetMenuContentEvent
instead.]`
- `FGetWidget__Widget OnGetMenuContentEvent []`
- `FGetUserWidget__MenuAnchor OnGetUserMenuContentEvent [Called when the menu content is requested to allow a more customized handling over what to display]`
- `FOnMenuOpenChangedEvent OnMenuOpenChanged [Called when the opened state of the menu changes]`
- `EMenuPlacement Placement [The placement location of the summoned widget.]`
- `bool ShouldDeferPaintingAfterWindowContent`
- `bool ShouldFitInWindow [Should the menu anchor attempt to fit the menu inside the window.]`
- `bool ShowMenuBackground [For menus using the application menu stack, should the window background be visible?]`
- `bool UseApplicationMenuStack [Does this menu behave like a normal stacked menu? Set it to false to control the menu's lifetime yourself.]`
- `bool bFitInWindow [Should the menu anchor attempt to fit the menu inside the window.]`


**方法**:

- `Close()`  
  Closes the menu if it is currently open.
- `FitInWindow(bool bFit)`
- `FVector2D GetMenuPosition() const`  
  Returns the current menu position
- `bool HasOpenSubMenus() const`  
  Returns whether this menu has open submenus
- `bool IsOpen() const`  
  Returns true if the popup is open; false otherwise.
- `Open(bool bFocusMenu)`  
  Opens the menu if it is not already open
- `SetPlacement(EMenuPlacement InPlacement)`  
  TODO UMG Add Set MenuClass
- `bool ShouldOpenDueToClick() const`  
  Returns true if we should open the menu due to a click. Sometimes we should not, if
the same MouseDownEvent that just closed the menu is about to re-open it because it
happens to land on the button.
- `ToggleOpen(bool bFocusOnOpen)`  
  Toggles the menus open state.

@param bFocusOnOpen  Should we focus the popup as soon as it opens?

---

