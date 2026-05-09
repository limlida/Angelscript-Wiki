### FRigUnit_AddBoneTransform


Offset Transform is used to perform a change in the hierarchy by setting a single bone's transform.

**属性**:

- `FName Bone [The name of the Bone to set the transform for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FTransform Transform [The transform value to set for the given Bone.]`
- `float32 Weight [The weight of the change - how much the change should be applied]`
- `bool bPostMultiply [If set to true the transform will be post multiplied, otherwise pre multiplied.
Post multiplying means that the transform is understood as a parent space change,
while pre multiplying means that the transform is understood as a child space change.]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_AddBoneTransform& opAssign(FRigUnit_AddBoneTransform Other)`

---

