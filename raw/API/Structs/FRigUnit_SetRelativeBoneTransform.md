### FRigUnit_SetRelativeBoneTransform


SetRelativeBoneTransform is used to perform a change in the hierarchy by setting a single bone's transform.

**属性**:

- `FName Bone [The name of the Bone to set the transform for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FName Space [The name of the Bone to set the transform relative within.]`
- `FTransform Transform [The transform value to set for the given Bone.]`
- `float32 Weight [The weight of the change - how much the change should be applied]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_SetRelativeBoneTransform& opAssign(FRigUnit_SetRelativeBoneTransform Other)`

---

