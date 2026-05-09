### UDragDropOperation


This class is the base drag drop operation for UMG, extend it to add additional data and add new functionality.

**属性**:

- `UWidget DefaultDragVisual [The Drag Visual is the widget to display when dragging the item.  Normally people create a new widget to represent the
temporary drag.]`
- `FVector2D Offset [A percentage offset (-1..+1) from the Pivot location, the percentage is of the desired size of the dragged visual.]`
- `FOnDragDropMulticast OnDragCancelled`
- `FOnDragDropMulticast OnDragged`
- `FOnDragDropMulticast OnDrop`
- `UObject Payload [The payload of the drag operation.  This can be any UObject that you want to pass along as dragged data.  If you
were building an inventory screen this would be the UObject representing the item being moved to another slot.]`
- `EDragPivot Pivot [Controls where the drag widget visual will appear when dragged relative to the pointer performing
the drag operation.]`
- `FString Tag [A simple string tag you can optionally use to provide extra metadata about the operation.]`


**方法**:

- `DragCancelled(FPointerEvent PointerEvent)`
- `Dragged(FPointerEvent PointerEvent)`
- `Drop(FPointerEvent PointerEvent)`

---

