### FRigUnit_SetControlOffset


SetControlOffset is used to perform a change in the hierarchy by setting a single control's transform.
This is typically only used during the Construction Event.

**属性**:

- `FName Control [The name of the Control to set the transform for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FTransform Offset [The offset transform to set on the control]`
- `ERigVMTransformSpace Space [Defines if the control's transform should be set
in local or global space.]`


**方法**:

- `FRigUnit_SetControlOffset& opAssign(FRigUnit_SetControlOffset Other)`

---

