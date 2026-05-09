### FRigUnit_GetRelativeTransformForItem


GetRelativeTransform is used to retrieve a single transform from a hierarchy in the space of another transform

**属性**:

- `FRigElementKey Child [The child item to retrieve the transform for]`
- `FRigElementKey Parent [The parent item to use.
The child transform will be retrieve in the space of the parent.]`
- `FTransform RelativeTransform [The transform of the given child item relative to the provided parent]`
- `bool bChildInitial [Defines if the child's transform should be retrieved as current (false) or initial (true).
Initial transforms for bones and other elements in the hierarchy represent the reference pose's value.]`
- `bool bParentInitial [Defines if the parent's transform should be retrieved as current (false) or initial (true).
Initial transforms for bones and other elements in the hierarchy represent the reference pose's value.]`


**方法**:

- `FRigUnit_GetRelativeTransformForItem& opAssign(FRigUnit_GetRelativeTransformForItem Other)`

---

