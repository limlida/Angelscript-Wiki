### FRigUnit_SetRelativeTransformForItem


SetRelativeTransform is used to set a single transform from a hierarchy in the space of another item

**属性**:

- `FRigElementKey Child [The child item to set the transform for]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Parent [The parent item to use.
The child transform will be set in the space of the parent.]`
- `FTransform Value [The transform of the child item relative to the provided parent]`
- `float32 Weight [Defines how much the change will be applied]`
- `bool bParentInitial [Defines if the parent's transform should be determined as current (false) or initial (true).
Initial transforms for bones and other elements in the hierarchy represent the reference pose's value.]`
- `bool bPropagateToChildren [If set to true children of affected items in the hierarchy
will follow the transform change - otherwise only the parent will move.]`


**方法**:

- `FRigUnit_SetRelativeTransformForItem& opAssign(FRigUnit_SetRelativeTransformForItem Other)`

---

