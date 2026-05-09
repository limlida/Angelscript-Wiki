### FRigUnit_SetControlInteger


SetControlInteger is used to perform a change in the hierarchy by setting a single control's int32 value.

**属性**:

- `FName Control [The name of the Control to set the transform for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `int IntegerValue [The transform value to set for the given Control.]`
- `int Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_SetControlInteger& opAssign(FRigUnit_SetControlInteger Other)`

---

