### UUserListEntry


**方法**:

- `OnEndEntryDropOperation(bool bSuccess)`  
  Called when this entry accepts a drag and drop operation
- `OnEntryDragged(UDragDropOperation Operation)`  
  Called when this entry is dragged
- `OnEntryDragOverChanged(bool bIsDraggingOver)`  
  Called when the the entry is dragged over
- `OnEntryDropped(UDragDropOperation Operation)`  
  Called when this entry is dropped
- `OnEntryReleased()`  
  Called when this entry is released from the owning table and no longer represents any list item
- `OnItemExpansionChanged(bool bIsExpanded)`  
  Called when the expansion state of the item represented by this entry changes. Tree view entries only.
- `OnItemSelectionChanged(bool bIsSelected)`  
  Called when the selection state of the item represented by this entry changes.
- `OnUpdateEntryDropIndicator(EUMGItemDropZone DropZone)`  
  Called when the drop zone indicator is changed for this entry

---

