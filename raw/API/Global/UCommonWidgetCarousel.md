### UCommonWidgetCarousel


A widget switcher is like a tab control, but without tabs. At most one widget is visible at time.

**属性**:

- `int ActiveWidgetIndex [The slot index to display]`
- `FOnCurrentPageIndexChanged OnCurrentPageIndexChanged`
- `bool bCacheChildren [Whether we should cache children to prevent them from being destroyed when not visible. Enable this to avoid ConstructWidget costs when changing index, disable to save memory]`


**方法**:

- `BeginAutoScrolling(float32 ScrollInterval = 10.000000)`
- `EndAutoScrolling()`
- `int GetActiveWidgetIndex() const`  
  Gets the slot index of the currently active widget
- `bool GetCacheChildren() const`  
  Gets the current caching behavior.
- `float32 GetMoveSpeed() const`  
  Gets the Move Speed.
- `UWidget GetWidgetAtIndex(int Index) const`  
  Get a widget at the provided index
- `NextPage()`
- `PreviousPage()`
- `SetActiveWidget(UWidget Widget)`  
  Activates the widget and makes it the active index.
- `SetActiveWidgetIndex(int Index)`  
  Activates the widget at the specified index.
- `SetCacheChildren(bool InCacheChildren)`  
  Sets the current caching behavior.
- `SetMoveSpeed(float32 InMoveSpeed)`  
  Sets the Move Speed.

---

