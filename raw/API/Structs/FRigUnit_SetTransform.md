### FRigUnit_SetTransform


SetTransform is used to set a single transform on hierarchy.

Note: For Controls when setting the initial transform this node
actually sets the Control's offset transform and resets the local
values to (0, 0, 0).

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Item [The item to set the transform for]`
- `ERigVMTransformSpace Space [Defines if the transform should be set in local or global space]`
- `FTransform Value [The new transform of the given item]`
- `float32 Weight [Defines how much the change will be applied]`
- `bool bInitial [Defines if the transform should be set as current (false) or initial (true).
Initial transforms for bones and other elements in the hierarchy represent the reference pose's value.]`
- `bool bPropagateToChildren [If set to true children of affected items in the hierarchy
will follow the transform change - otherwise only the parent will move.]`


**方法**:

- `FRigUnit_SetTransform& opAssign(FRigUnit_SetTransform Other)`

---

