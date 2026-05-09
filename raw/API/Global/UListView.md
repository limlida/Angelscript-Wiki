### UListView


* A virtualized list that allows up to thousands of items to be displayed.
*
* An important distinction to keep in mind here is "Item" vs. "Entry"
* The list itself is based on a list of n items, but only creates as many entry widgets as can fit on screen.
* For example, a scrolling ListView of 200 items with 5 currently visible will only have created 5 entry widgets.
*
* To make a widget usable as an entry in a ListView, it must inherit from the IUserObjectListEntry interface.

**属性**:

- `FOnListEntryInitializedDynamic BP_OnEntryInitialized [Called when a row widget is generated for a list item]`
- `FOnIsItemSelectableOrNavigableDynamic BP_OnIsItemSelectableOrNavigable []`
- `FOnItemZoneMulticastDynamic BP_OnItemAcceptDrop`
- `FSimpleListItemEventDynamic BP_OnItemClicked`
- `FSimpleListItemEventDynamic BP_OnItemDoubleClicked`
- `FOnItemDragCancelledDynamic BP_OnItemDragCancelled`
- `FOnItemGeometryMulticastDynamic BP_OnItemDragDetected`
- `FOnItemDragDropMulticastDynamic BP_OnItemDragEnter`
- `FOnItemDragDropMulticastDynamic BP_OnItemDragLeave`
- `FOnItemIsHoveredChangedDynamic BP_OnItemIsHoveredChanged`
- `FOnListItemScrolledIntoViewDynamic BP_OnItemScrolledIntoView`
- `FOnListItemSelectionChangedDynamic BP_OnItemSelectionChanged`
- `FOnListViewDraggingStateChangedDynamic BP_OnListViewDraggingStateChanged`
- `FOnListViewFinishedScrollingDynamic BP_OnListViewFinishedScrolling`
- `FOnListViewScrolledDynamic BP_OnListViewScrolled`
- `EConsumeMouseWheel ConsumeMouseWheel`
- `float32 EntrySpacing [This deprecated property was originally BlueprintReadOnly. To satisfy the compiler requirment to have a BlueprintGetter for this property,
it relies on the newly added UFunction GetHorizontalEntrySpacing() to act as its BlueprintGetter.]`
- `float32 HorizontalEntrySpacing`
- `EOrientation Orientation [The scroll & layout orientation of the list. ListView and TileView only.
Vertical will scroll vertically and arrange tiles into rows.
Horizontal will scroll horizontally and arrange tiles into columns.]`
- `FMargin ScrollBarPadding`
- `FScrollBarStyle ScrollBarStyle`
- `EScrollIntoViewAlignment ScrollIntoViewAlignment [Sets where to scroll a widget to when using explicit navigation]`
- `ESelectionMode SelectionMode`
- `FScrollBoxStyle ShadowBrushStyle`
- `float32 VerticalEntrySpacing`
- `FTableViewStyle WidgetStyle`
- `bool bClearScrollVelocityOnSelection`
- `bool bClearSelectionOnClick`
- `bool bEnableShadowBrush`
- `bool bIsFocusable`
- `bool bReturnFocusToSelection`


**方法**:

- `AddItem(UObject Item)`  
  Adds an the item to the list
- `CancelScrollIntoView()`  
  Cancels a previous request to scroll and item into view.
- `ClearSelection()`  
  Clear selection
- `int GetNumItemsSelected() const`  
  Gets the number of items currently selected in the list
- `UObject GetSelectedItem() const`  
  Gets the first selected item, if any; recommended that you only use this for single selection lists.
- `bool GetSelectedItems(TArray<UObject>& Items) const`  
  Gets a list of all the currently selected items
- `bool IsItemVisible(UObject Item) const`  
  Gets whether the entry for the given object is currently visible in the list
- `NavigateToItem(UObject Item)`  
  Requests that the given item is navigated to, scrolling it into view if needed.
- `ScrollItemIntoView(UObject Item)`  
  Requests that the given item is scrolled into view
- `SetItemSelection(UObject Item, bool bSelected)`  
  Sets whether the given item is selected.
- `SetListItems(TArray<UObject> InListItems)`  
  Sets the array of objects to display rows for in the list
- `SetSelectedItem(UObject Item)`  
  Sets the given item as the sole selected item.
- `ClearListItems()`  
  Removes all items from the list
- `float32 GetHorizontalEntrySpacing() const`  
  Get the horizontal spacing between entries.
- `int GetIndexForItem(const UObject Item) const`  
  Returns the index that the specified item is at. Will return the first found, or -1 for not found
- `UObject GetItemAt(int Index) const`  
  Returns the item at the given index
- `TArray<UObject> GetListItems() const`  
  Gets the list of all items in the list.
Note that each of these items only has a corresponding entry widget when visible. Use GetDisplayedEntryWidgets to get the currently displayed widgets.
- `int GetNumItems() const`  
  Returns the total number of items
- `float32 GetVerticalEntrySpacing() const`  
  Get the vertical spacing between entries.
- `bool IsRefreshPending() const`  
  Returns true if a refresh is pending and the list will be rebuilt on the next tick
- `NavigateToIndex(int Index)`  
  Requests that the item at the given index navigated to, scrolling it into view if needed.
- `RemoveItem(UObject Item)`  
  Removes an the item from the list
- `ScrollIndexIntoView(int Index)`  
  Requests that the item at the given index is scrolled into view
- `SetScrollIntoViewAlignment(EScrollIntoViewAlignment NewScrollIntoViewAlignment)`  
  Sets ScrollIntoViewAlignment which allows to stick the selected item to either side or center
- `SetSelectedIndex(int Index)`  
  Sets the item at the given index as the sole selected item.
- `SetSelectionMode(ESelectionMode SelectionMode)`  
  Sets the new selection mode, preserving the current selection where possible.

---

