### FRigUnit_TwoBoneIKSimple


Solves the two bone IK given two bones.
Note: This node operates in world space!

**属性**:

- `FName BoneA [The name of first bone]`
- `float32 BoneALength [The length of the first bone.
If set to 0.0 it will be determined by the hierarchy]`
- `FName BoneB [The name of second bone]`
- `float32 BoneBLength [The length of the second  bone.
If set to 0.0 it will be determined by the hierarchy]`
- `FRigUnit_TwoBoneIKSimple_DebugSettings DebugSettings [The settings for debug drawing]`
- `FTransform Effector [The transform of the effector]`
- `FName EffectorBone [The name of the effector bone (if exists)]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FVector PoleVector [The polevector to use for the IK solver
This can be a location or direction.]`
- `EControlRigVectorKind PoleVectorKind [The kind of pole vector this is representing - can be a direction or a location]`
- `FName PoleVectorSpace [The space in which the pole vector is expressed]`
- `FVector PrimaryAxis [The major axis being aligned - along the bone]`
- `FVector SecondaryAxis [The minor axis being aligned - towards the polevector]`
- `float32 SecondaryAxisWeight [Determines how much the secondary axis roll is being applied]`
- `float32 StretchMaximumRatio [The maximum allowed stretch ratio]`
- `float32 StretchStartRatio [The ratio where the stretch starts]`
- `float32 Weight [The weight of the solver - how much the IK should be applied.]`
- `bool bEnableStretch [If set to true the stretch feature of the solver will be enabled]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_TwoBoneIKSimple& opAssign(FRigUnit_TwoBoneIKSimple Other)`

---

