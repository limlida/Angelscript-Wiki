### UPanelWidget


The base class for all UMG panel widgets.  Panel widgets layout a collection of child widgets.

**方法**:

- `UPanelSlot AddChild(UWidget Content)`  
  Adds a new child widget to the container.  Returns the base slot type,
requires casting to turn it into the type specific to the container.
- `ClearChildren()`  
  Remove all child widgets from the panel widget.
- `TArray<UWidget> GetAllChildren() const`  
  Gets all widgets in the container
- `UWidget GetChildAt(int Index) const`  
  Gets the widget at an index.
@param Index The index of the widget.
@return The widget at the given index, or nothing if there is no widget there.
- `int GetChildIndex(const UWidget Content) const`  
  Gets the index of a specific child widget
- `int GetChildrenCount() const`  
  Gets number of child widgets in the container.
- `bool HasAnyChildren() const`  
  Returns true if there are any child widgets in the panel
- `bool HasChild(UWidget Content) const`  
  Returns true if panel contains this widget
- `bool RemoveChild(UWidget Content)`  
  Removes a specific widget from the container.
@return true if the widget was found and removed.
- `bool RemoveChildAt(int Index)`  
  Removes a child by it's index.

---

