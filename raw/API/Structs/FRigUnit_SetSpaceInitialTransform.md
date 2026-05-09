### FRigUnit_SetSpaceInitialTransform


SetSpaceInitialTransform is used to perform a change in the hierarchy by setting a single space's initial transform.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FTransform Result [The transform value result (after weighting)]`
- `ERigVMTransformSpace Space [Defines if the bone's transform should be set
in local or global space.]`
- `FName SpaceName [The name of the Space to set the transform for.]`
- `FTransform Transform [The transform value to set for the given space.]`


**方法**:

- `FRigUnit_SetSpaceInitialTransform& opAssign(FRigUnit_SetSpaceInitialTransform Other)`

---

