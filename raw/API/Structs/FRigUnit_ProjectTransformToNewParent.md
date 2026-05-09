### FRigUnit_ProjectTransformToNewParent


Gets the relative offset between the child and the old parent, then multiplies by new parent's transform.

**属性**:

- `FRigElementKey Child [The element to project between parents]`
- `FRigElementKey NewParent [The new parent of the child.]`
- `FRigElementKey OldParent [The original parent of the child.
Can be an actual parent in the hierarchy or any other
item you want to use to compute to offset against.]`
- `FTransform Transform [The resulting transform]`
- `bool bChildInitial [If set to true the child will be retrieved in its initial transform]`
- `bool bNewParentInitial [If set to true the new parent will be retrieved in its initial transform]`
- `bool bOldParentInitial [If set to true the old parent will be retrieved in its initial transform]`


**方法**:

- `FRigUnit_ProjectTransformToNewParent& opAssign(FRigUnit_ProjectTransformToNewParent Other)`

---

