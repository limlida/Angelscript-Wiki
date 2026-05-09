### FRigUnit_SetBoneTranslation


SetBoneTranslation is used to perform a change in the hierarchy by setting a single bone's Translation.

**属性**:

- `FName Bone [The name of the Bone to set the Translation for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `ERigVMTransformSpace Space [Defines if the bone's Translation should be set
in local or global space.]`
- `FVector Translation [The Translation value to set for the given Bone.]`
- `float32 Weight [The weight of the change - how much the change should be applied]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_SetBoneTranslation& opAssign(FRigUnit_SetBoneTranslation Other)`

---

