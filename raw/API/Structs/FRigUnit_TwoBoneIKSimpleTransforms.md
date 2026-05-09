### FRigUnit_TwoBoneIKSimpleTransforms


Solves the two bone IK given transforms
Note: This node operates in world space!

**属性**:

- `float32 BoneALength [The length of the first bone.
If set to 0.0 it will be determined by the hierarchy]`
- `float32 BoneBLength [The length of the second  bone.
If set to 0.0 it will be determined by the hierarchy]`
- `FTransform Effector [The transform of the effector]`
- `FTransform Elbow [The resulting elbow transform]`
- `FVector PoleVector [The position of the pole of the triangle]`
- `FVector PrimaryAxis [The major axis being aligned - along the bone]`
- `FTransform Root [The transform of the root of the triangle]`
- `FVector SecondaryAxis [The minor axis being aligned - towards the polevector]`
- `float32 SecondaryAxisWeight [Determines how much the secondary axis roll is being applied]`
- `float32 StretchMaximumRatio [The maximum allowed stretch ratio]`
- `float32 StretchStartRatio [The ratio where the stretch starts]`
- `bool bEnableStretch [If set to true the stretch feature of the solver will be enabled]`


**方法**:

- `FRigUnit_TwoBoneIKSimpleTransforms& opAssign(FRigUnit_TwoBoneIKSimpleTransforms Other)`

---

