### FRigUnit_TwoBoneIKSimpleVectors


Solves the two bone IK given positions
Note: This node operates in world space!

**属性**:

- `float32 BoneALength [The length of the first bone.
If set to 0.0 it will be determined by the hierarchy]`
- `float32 BoneBLength [The length of the second  bone.
If set to 0.0 it will be determined by the hierarchy]`
- `FVector Effector [The position of the effector]`
- `FVector Elbow [The resulting elbow position]`
- `FVector PoleVector [The position of the pole of the triangle]`
- `FVector Root [The position of the root of the triangle]`
- `float32 StretchMaximumRatio [The maximum allowed stretch ratio]`
- `float32 StretchStartRatio [The ratio where the stretch starts]`
- `bool bEnableStretch [If set to true the stretch feature of the solver will be enabled]`


**方法**:

- `FRigUnit_TwoBoneIKSimpleVectors& opAssign(FRigUnit_TwoBoneIKSimpleVectors Other)`

---

