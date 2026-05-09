### FRigUnit_CollectionChildrenArray


Creates an item array based on the direct or recursive children
of a provided parent item. Returns an empty array for an invalid parent item.

**属性**:

- `TArray<FRigElementKey> Items []`
- `FRigElementKey Parent`
- `ERigElementType TypeToSearch`
- `bool bDefaultChildren [When true, it will return all children, regardless of whether the parent is active or not.
When false, will return only the children which are influenced by this parent]`
- `bool bIncludeParent`
- `bool bRecursive`


**方法**:

- `FRigUnit_CollectionChildrenArray& opAssign(FRigUnit_CollectionChildrenArray Other)`

---

