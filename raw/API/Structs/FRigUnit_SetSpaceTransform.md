### FRigUnit_SetSpaceTransform


SetSpaceTransform is used to perform a change in the hierarchy by setting a single space's transform.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FName Space [The name of the Space to set the transform for.]`
- `ERigVMTransformSpace SpaceType [Defines if the bone's transform should be set
in local or global space.]`
- `FTransform Transform [The transform value to set for the given Space.]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_SetSpaceTransform& opAssign(FRigUnit_SetSpaceTransform Other)`

---

