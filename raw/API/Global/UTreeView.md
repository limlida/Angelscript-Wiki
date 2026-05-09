### UTreeView


Similar to ListView, but can display a hierarchical tree of elements.
The base items source for the tree identifies the root items, each of which can have n associated child items.
There is no hard limit to the nesting - child items can have children and so on

To make a widget usable as an entry in a TreeView, it must inherit from the IUserObjectListEntry interface.

**属性**:

- `FOnGetItemChildrenDynamic BP_OnGetItemChildren [Called to get the list of children (if any) that correspond to the given item. Only called if the native C++ version of the event is not bound.]`
- `FOnItemExpansionChangedDynamic BP_OnItemExpansionChanged`


**方法**:

- `CollapseAll()`  
  Collapses all currently expanded items
- `ExpandAll()`  
  Expands all items with children
- `SetItemExpansion(UObject Item, bool bExpandItem)`  
  Attempts to expand/collapse the given item (only relevant if the item has children)

---

