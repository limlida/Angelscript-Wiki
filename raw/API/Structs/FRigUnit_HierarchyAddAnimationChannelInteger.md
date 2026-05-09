### FRigUnit_HierarchyAddAnimationChannelInteger


Adds a new animation channel to the hierarchy
Note: This node only runs as part of the construction event.

**属性**:

- `UEnum ControlEnum [* The enum to use to find valid values]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `int InitialValue [* The initial value of the new animation channel]`
- `FRigElementKey Item [* The resulting item]`
- `FRigUnit_HierarchyAddAnimationChannelSingleLimitSettings LimitsEnabled [* The enable settings for the limits]`
- `int MaximumValue [* The maximum value for the animation channel]`
- `int MinimumValue [* The initial value of the new animation channel]`
- `FName Name [* The name of the new element to add]`
- `FRigElementKey Parent [* The parent of the new element to add]`


**方法**:

- `FRigUnit_HierarchyAddAnimationChannelInteger& opAssign(FRigUnit_HierarchyAddAnimationChannelInteger Other)`

---

