### FRigUnit_SetBoneRotation


SetBoneRotation is used to perform a change in the hierarchy by setting a single bone's rotation.

**属性**:

- `FName Bone [The name of the Bone to set the rotation for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FQuat Rotation [The rotation value to set for the given Bone.]`
- `ERigVMTransformSpace Space [Defines if the bone's rotation should be set
in local or global space.]`
- `float32 Weight [The weight of the change - how much the change should be applied]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_SetBoneRotation& opAssign(FRigUnit_SetBoneRotation Other)`

---

