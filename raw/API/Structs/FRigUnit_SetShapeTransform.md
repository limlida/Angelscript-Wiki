### FRigUnit_SetShapeTransform


SetShapeTransform is used to perform a change in the hierarchy by setting a single control's shape transform.
This is typically only used during the Construction Event.

**属性**:

- `FName Control [The name of the Control to set the transform for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FTransform Transform [The shape transform to set for the control]`


**方法**:

- `FRigUnit_SetShapeTransform& opAssign(FRigUnit_SetShapeTransform Other)`

---

