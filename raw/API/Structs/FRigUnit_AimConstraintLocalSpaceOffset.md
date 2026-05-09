### FRigUnit_AimConstraintLocalSpaceOffset


Orients an item such that its aim axis points towards a global target.
Note: This node operates in global space!

**属性**:

- `FRigUnit_AimConstraint_AdvancedSettings AdvancedSettings`
- `FVector AimAxis [Child is rotated so that its AimAxis points to the parents]`
- `FRigElementKey Child [The name of the item to apply aim]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FFilterOptionPerAxis Filter [Filters the final rotation by axes based on the euler rotation order defined in the node's advanced settings
If flipping is observed, try adjusting the rotation order]`
- `TArray<FConstraintParent> Parents`
- `FVector UpAxis [Child is rotated around the AimAxis so that its UpAxis points to/Aligns with the WorldUp target]`
- `float32 Weight`
- `FRigUnit_AimConstraint_WorldUp WorldUp [Defines how Child should rotate around the AimAxis. This is the aim target for the UpAxis]`
- `bool bMaintainOffset [Maintains the offset between child and weighted average of parents based on initial transforms]`


**方法**:

- `FRigUnit_AimConstraintLocalSpaceOffset& opAssign(FRigUnit_AimConstraintLocalSpaceOffset Other)`

---

