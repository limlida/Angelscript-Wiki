### FRigUnit_SetControlVector2D


SetControlVector2D is used to perform a change in the hierarchy by setting a single control's Vector2D value.

**属性**:

- `FName Control [The name of the Control to set the transform for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FVector2D Vector [The transform value to set for the given Control.]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_SetControlVector2D& opAssign(FRigUnit_SetControlVector2D Other)`

---

