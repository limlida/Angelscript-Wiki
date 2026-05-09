### FRigUnit_SetControlVector


SetControlVector is used to perform a change in the hierarchy by setting a single control's Vector value.

**属性**:

- `FName Control [The name of the Control to set the transform for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `ERigVMTransformSpace Space [Defines if the bone's transform should be set
in local or global space.]`
- `FVector Vector [The transform value to set for the given Control.]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_SetControlVector& opAssign(FRigUnit_SetControlVector Other)`

---

