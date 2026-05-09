### UCanvasPanelSlot


**属性**:

- `FAnchorData LayoutData [The anchoring information for the slot]`
- `bool bAutoSize [When AutoSize is true we use the widget's desired size]`


**方法**:

- `FVector2D GetAlignment() const`  
  Gets the alignment on the slot
- `FAnchors GetAnchors() const`  
  Gets the anchors on the slot
- `bool GetAutoSize() const`  
  Gets if the slot to be auto-sized
- `FAnchorData GetLayout() const`  
  Gets the layout data of the slot
- `FMargin GetOffsets() const`  
  Gets the offset data of the slot, which could be position and size, or margins depending on the anchor points
- `FVector2D GetPosition() const`  
  Gets the position of the slot
- `FVector2D GetSize() const`  
  Gets the size of the slot
- `int GetZOrder() const`  
  Gets the z-order on the slot
- `SetAlignment(FVector2D InAlignment)`  
  Sets the alignment on the slot
- `SetAnchors(FAnchors InAnchors)`  
  Sets the anchors on the slot
- `SetAutoSize(bool InbAutoSize)`  
  Sets if the slot to be auto-sized
- `SetLayout(FAnchorData InLayoutData)`  
  Sets the layout data of the slot
- `SetOffsets(FMargin InOffset)`  
  Sets the offset data of the slot, which could be position and size, or margins depending on the anchor points
- `SetPosition(FVector2D InPosition)`  
  Sets the position of the slot
- `SetSize(FVector2D InSize)`  
  Sets the size of the slot
- `SetZOrder(int InZOrder)`  
  Sets the z-order on the slot

---

