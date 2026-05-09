### UWidgetSwitcher


A widget switcher is like a tab control, but without tabs. At most one widget is visible at time.

**方法**:

- `UWidget GetActiveWidget() const`  
  Get the reference of the currently active widget
- `int GetActiveWidgetIndex() const`  
  Gets the slot index of the currently active widget
- `int GetNumWidgets() const`  
  Gets the number of widgets that this switcher manages.
- `UWidget GetWidgetAtIndex(int Index) const`  
  Get a widget at the provided index
- `SetActiveWidget(UWidget Widget)`  
  Activates the widget and makes it the active index.
- `SetActiveWidgetIndex(int Index)`  
  Activates the widget at the specified index.

---

