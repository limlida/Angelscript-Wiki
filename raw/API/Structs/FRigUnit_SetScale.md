### FRigUnit_SetScale


SetScale is used to set a single scale on hierarchy.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Item [The item to set the scale for]`
- `FVector Scale [The new scale of the given item]`
- `ERigVMTransformSpace Space [Defines if the scale should be set in local or global space]`
- `float32 Weight [Defines how much the change will be applied]`
- `bool bInitial [Defines if the transform should be set as current (false) or initial (true).
Initial transforms for bones and other elements in the hierarchy represent the reference pose's value.]`
- `bool bPropagateToChildren [If set to true children of affected items in the hierarchy
will follow the transform change - otherwise only the parent will move.]`


**方法**:

- `FRigUnit_SetScale& opAssign(FRigUnit_SetScale Other)`

---

