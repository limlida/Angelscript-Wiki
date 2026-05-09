### FRigUnit_DistributeRotation


Distributes rotations provided along a chain.
Each rotation is expressed by a quaternion and a ratio, where the ratio is between 0.0 and 1.0
Note: This node adds rotation in local space of each bone!

**属性**:

- `FName EndBone [The name of the last bone to align]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `ERigVMAnimEasingType RotationEaseType [The easing to use between to rotations.]`
- `TArray<FRigUnit_DistributeRotation_Rotation> Rotations [The list of rotations to be applied]`
- `FName StartBone [The name of the first bone to align]`
- `float32 Weight [The weight of the solver - how much the rotation should be applied]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_DistributeRotation& opAssign(FRigUnit_DistributeRotation Other)`

---

