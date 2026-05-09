### FAnimLegIKDefinition


Per foot definitions

**属性**:

- `FBoneReference FKFootBone []`
- `EAxis FootBoneForwardAxis [Forward Axis for Foot bone.]`
- `EAxis HingeRotationAxis [Hinge Bones Rotation Axis. This is essentially the plane normal for (hip - knee - foot).]`
- `FBoneReference IKFootBone []`
- `float32 MinRotationAngle [Only used if bEnableRotationLimit is enabled. Prevents the leg from folding onto itself,
and forces at least this angle between Parent and Child bone.]`
- `int NumBonesInLimb []`
- `FName TwistOffsetCurveName [Name of the curve to use as the twist offset angle(in degrees).
This is useful for injecting knee motion, while keeping the IK chain's goal/hand and root/hip locked in place.
Reasonable values are usually between -+15 degrees, although this is depends on how far in/out the knee is in the original pose.]`
- `bool bEnableKneeTwistCorrection [Enable Knee Twist correction, by comparing Foot FK with Foot IK orientation.]`
- `bool bEnableRotationLimit [If enabled, we prevent the leg from bending backwards and enforce a min compression angle]`


**方法**:

- `FAnimLegIKDefinition& opAssign(FAnimLegIKDefinition Other)`

---

