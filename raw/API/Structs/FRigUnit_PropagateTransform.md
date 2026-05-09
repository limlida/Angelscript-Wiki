### FRigUnit_PropagateTransform


Propagate Transform can be used to force a recalculation of a bone's global transform
from its local - as well as propagating that change onto the children.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Item [The item to offset the transform for]`
- `bool bApplyToChildren [If set to true the direct children of this item will be recomputed as well.
Combined with bRecursive all children will be affected recursively.]`
- `bool bRecomputeGlobal [If set to true the item's global transform will be recomputed from
its parent's transform and its local.]`
- `bool bRecursive [If set to true and with bApplyToChildren enabled
all children will be affected recursively.]`


**方法**:

- `FRigUnit_PropagateTransform& opAssign(FRigUnit_PropagateTransform Other)`

---

