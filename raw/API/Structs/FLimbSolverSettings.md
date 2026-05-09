### FLimbSolverSettings


**属性**:

- `EAxis EndBoneForwardAxis [Forward Axis for Foot bone.]`
- `EAxis HingeRotationAxis [Hinge Bones Rotation Axis. This is essentially the plane normal for (hip - knee - foot).]`
- `int MaxIterations [Number of Max Iterations to reach the target]`
- `float32 MinRotationAngle [Only used if bEnableRotationLimit is enabled. Prevents the leg from folding onto itself,
and forces at least this angle between Parent and Child bone.]`
- `float32 PullDistribution [Re-position limb to distribute pull: 0 = foot, 0.5 = balanced, 1.f = hip]`
- `float32 ReachPrecision [Precision (distance to the target)]`
- `float32 ReachStepAlpha [Move end effector towards target. If we are compressing the chain, limit displacement.]`
- `bool bAveragePull [Pull averaging only has a visual impact when we have more than 2 bones (3 links).]`
- `bool bEnableLimit [Enable/Disable rotational limits]`
- `bool bEnableTwistCorrection [Enable Knee Twist correction, by comparing Foot FK with Foot IK orientation.]`


**方法**:

- `FLimbSolverSettings& opAssign(FLimbSolverSettings Other)`

---

