### FRigUnit_HierarchyAddControlRotator


Adds a new control to the hierarchy
Note: This node only runs as part of the construction event.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRotator InitialValue [* The initial value of the new control]`
- `FRigElementKey Item [* The resulting item]`
- `FName Name [* The name of the new element to add]`
- `ERigVMTransformSpace OffsetSpace [* The space the offset is in]`
- `FTransform OffsetTransform [* The offset transform of the new control]`
- `FRigElementKey Parent [* The parent of the new element to add]`
- `FRigUnit_HierarchyAddControlRotator_Settings Settings [* The settings for the control]`


**方法**:

- `FRigUnit_HierarchyAddControlRotator& opAssign(FRigUnit_HierarchyAddControlRotator Other)`

---

