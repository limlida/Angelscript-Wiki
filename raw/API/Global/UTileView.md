### UTileView


A ListView that presents the contents as a set of tiles all uniformly sized.

To make a widget usable as an entry in a TileView, it must inherit from the IUserObjectListEntry interface.

**属性**:

- `float32 EntryHeight [The height of each tile]`
- `float32 EntryWidth [The width of each tile]`
- `ESlateVisibility ScrollbarDisabledVisibility [Set the visibility of the Scrollbar when it's not needed]`
- `EListItemAlignment TileAlignment [The method by which to align the tile entries in the available space for the tile view]`
- `bool bEntrySizeIncludesEntrySpacing [True if entry dimensions should be the sum of the entry widget dimensions and the spacing.
This means the size of the entry widget will be adjusted so that the summation of the widget size and entry spacing always equals entry size.]`
- `bool bWrapHorizontalNavigation [True to allow left/right navigation to wrap back to the tile on the opposite edge]`


**方法**:

- `float32 GetEntryHeight() const`  
  Gets the height of tile entries
- `float32 GetEntryWidth() const`  
  Gets the width of tile entries
- `SetEntryHeight(float32 NewHeight)`  
  Sets the height of every tile entry
- `SetEntryWidth(float32 NewWidth)`  
  Sets the width of every tile entry

---

