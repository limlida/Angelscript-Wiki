### UOptimusNode


**方法**:

- `FText GetDisplayName() const`  
  Returns the display name to use on the graphical node in the graph editor.
@return The display name to show to the user.
- `FVector2D GetGraphPosition() const`  
  Returns the position in the graph UI where the node is shown.
@return The coordinates of the node's position.
- `FName GetNodeCategory() const`  
  Returns the node class category. This is used for categorizing the node for display.
@return The node class category.
- `FName GetNodeName() const`  
  Returns the node class name. This name is immutable for the given node class.
@return The node class name.
- `bool SetGraphPosition(FVector2D InPosition)`  
  Sets the position in the graph UI that the node should be shown at.
@param InPosition The coordinates of the node's position.
@return true if setting the position was successful.

---

