### FRigUnit_OffsetTransformForItem


Offset Transform is used to add an offset to an existing transform in the hierarchy. The offset is post multiplied.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Item [The item to offset the transform for]`
- `FTransform OffsetTransform [The transform of the item relative to its previous transform]`
- `float32 Weight [Defines how much the change will be applied]`
- `bool bPropagateToChildren [If set to true children of affected items in the hierarchy
will follow the transform change - otherwise only the parent will move.]`


**方法**:

- `FRigUnit_OffsetTransformForItem& opAssign(FRigUnit_OffsetTransformForItem Other)`

---

