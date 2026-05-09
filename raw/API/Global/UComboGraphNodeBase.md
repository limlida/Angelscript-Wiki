### UComboGraphNodeBase


Base Class for all Combo Graph nodes (Edges, Anim based and conduit)

Holds information and API related to debug states.

**属性**:

- `TArray<TObjectPtr<UComboGraphNodeBase>> ChildrenNodes []`
- `FText ContextMenuName [ContextMenuName is used in Combo Graph to generate context menu items (upon right click in the graph to add new nodes)

Split up ContextMenuName by "|" to create a top category if there is more than one level.

You can leave this empty to exclude this class from being considered when Combo Graph generates a context menu.]`
- `TMap<TObjectPtr<UComboGraphNodeBase>,TObjectPtr<UComboGraphEdge>> Edges []`
- `FText NodeTitle [When not empty, will draw title with specified value instead of using Animation Asset name (Montage or Sequence)]`
- `TArray<TObjectPtr<UComboGraphNodeBase>> ParentNodes []`
- `bool bIncludeClassNameInContextMenu [Set it to false to prevent context menu in graph to include the BP Class name]`


**方法**:

- `UComboGraphEdge GetEdge(UComboGraphNodeBase ChildNode)`
- `bool IsLeafNode() const`

---

