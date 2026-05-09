### UListViewBase


Bare-bones base class to make creating custom UListView widgets easier.
Child classes should also inherit from ITypedUMGListView<T> to get a basic public ListView API for free.

Child classes will own the actual SListView<T> widgets, but this provides some boilerplate functionality for generating entries.
To generate a row for the child list, use GenerateTypedRow with the appropriate SObjectTableRow<T> type for your list

Additionally, the entry widget class can be filtered for a particular class and interface with the EntryClass and EntryInterface metadata arguments
This can be specified either on the class directly (see below) or on any BindWidget FProperty

Example:
class UMyUserWidget : public UUserWidget
{
            UPROPERTY(BindWidget, meta = (EntryClass = MyListEntryWidget))
            UListView* ListView_InventoryItems;
}

**属性**:

- `bool AllowOverscroll [Disable to stop scrollbars from activating inertial overscrolling]`
- `FOnListEntriesGeneratedDynamic BP_OnEntriesGenerated [Called when all row widgets are generated for all list items]`
- `FOnListEntryGeneratedDynamic BP_OnEntryGenerated [Called when a row widget is generated for a list item]`
- `FOnListEntryReleasedDynamic BP_OnEntryReleased [Called when a row widget is released by the list (i.e. when it no longer represents a list item)]`
- `TSubclassOf<UDragDropOperation> DragDropOperationClass [The drag drop operation class for this listview - if this is not specified, drag drop operations will not be created.]`
- `TSubclassOf<UUserWidget> DragDropVisualEntryClass [The class which will be used to generate the drag drop visual.  If none is specified, the EntryWidgetClass will be used.]`
- `FVector2D DragDropVisualOffset [A percentage offset (-1..+1) from the Pivot location, the percentage is of the desired size of the dragged visual.]`
- `EDragPivot DragDropVisualPivot [Controls where the drag widget visual will appear when dragged relative to the pointer performing
the drag operation.]`
- `UWidget DragVisualWidget [This is the actual drag visual widget that will be used by the drag drop operation.This can be set in blueprint via override of CreateDragDropOperation(should call parent)]`
- `TSubclassOf<UUserWidget> EntryWidgetClass [The type of widget to create for each entry displayed in the list.]`
- `float32 FixedLineScrollOffset [Optional fixed offset (in lines) to always apply to the top/left (depending on orientation) of the list.
If provided, all non-inertial means of scrolling will settle with exactly this offset of the topmost entry.
Ex: A value of 0.25 would cause the topmost full entry to be offset down by a quarter length of the preceeding entry.]`
- `int NumDesignerPreviewEntries [The number of dummy item entry widgets to preview in the widget designer]`
- `float32 ScrollingAnimationInterpolationSpeed [The speed to apply when lerping in the scroll animation.]`
- `float32 WheelScrollMultiplier [The multiplier to apply when wheel scrolling]`
- `bool bAllowDragDrop [Allow drag and drop operations to be performed on the list.]`
- `bool bAllowDragging [True to allow dragging of row widgets in the list]`
- `bool bAllowKeepPreselectedItems [If true, when selecting an item via mouse button, we allow pre-selected items to remain selected (applicable to "Multi" Selection Mode only).]`
- `bool bEnableFixedLineOffset []`
- `bool bEnableRightClickScrolling [True to allow right click drag scrolling.]`
- `bool bEnableScrollAnimation [True to enable lerped animation when scrolling through the list]`
- `bool bEnableTouchScrolling [True to allow scrolling using touch input.]`
- `bool bInEnableTouchAnimatedScrolling [True to enable lerped animation when scrolling through the list with touch]`
- `bool bIsDragging [This indicates whether the ListViewBase is currently in a dragging state]`
- `bool bIsGamepadScrollingEnabled [Enable/Disable scrolling using Gamepad.]`
- `bool bIsPointerScrollingEnabled [Enable/Disable scrolling using Touch or Mouse.]`
- `bool bSelectItemOnNavigation [If true, items will be "selected" (in addition to focused) when navigating to them. If false, they will only be focused.]`


**方法**:

- `CancelListViewDragDrop()`  
  Cancels the drag drop operation if one is in progress
- `EndInertialScrolling()`  
  Stops the scroll inertia
- `TArray<UUserWidget> GetDisplayedEntryWidgets() const`  
  Gets all of the list entry widgets currently being displayed by the list
- `bool GetIsDraggingListItem() const`  
  Gets whether or not a drag operation is in progress.
- `float32 GetScrollOffset() const`  
  Get the scroll offset of this view (in items)
- `RegenerateAllEntries()`  
  Full regeneration of all entries in the list. Note that the entry UWidget instances will not be destroyed, but they will be released and re-generated.
In other words, entry widgets will not receive Destruct/Construct events. They will receive OnEntryReleased and IUserObjectListEntry implementations will receive OnListItemObjectSet.
- `RequestRefresh()`  
  Sets the list to refresh on the next tick.

Note that refreshing, from a list perspective, is limited to accounting for discrepancies between items and entries.
In other words, it will only release entries that no longer have items and generate entries for new items (or newly visible items).

It does NOT account for changes within existing items - that is up to the item to announce and an entry to listen to as needed.
This can be onerous to set up for simple cases, so it's also reasonable (though not ideal) to call RegenerateAllEntries when changes within N list items need to be reflected.
- `ScrollToBottom()`  
  Scroll the entire list down to the bottom-most item
- `ScrollToTop()`  
  Scroll the entire list up to the first item
- `SetAllowOverScroll(bool NewAllowOverscroll)`
- `SetIsGamepadScrollingEnabled(bool bInIsGamepadScrollingEnabled)`  
  Enable/Disable the ability of the list to scroll via gamepad.
- `SetIsPointerScrollingEnabled(bool bInIsPointerScrollingEnabled)`  
  Enable/Disable the ability of the list to scroll. This should be use as a temporary disable.
- `SetScrollbarVisibility(ESlateVisibility InVisibility)`
- `SetScrollOffset(float32 InScrollOffset)`  
  Set the scroll offset of this view (in items)
- `SetWheelScrollMultiplier(float32 NewWheelScrollMultiplier)`

---

