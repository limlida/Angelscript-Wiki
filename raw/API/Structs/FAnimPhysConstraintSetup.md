### FAnimPhysConstraintSetup


Constraint setup struct, holds data required to build a physics constraint

**属性**:

- `AnimPhysAngularConstraintType AngularConstraintType [Method to use when constraining angular motion]`
- `FVector AngularLimitsMax []`
- `FVector AngularLimitsMin []`
- `FVector AngularTarget [The axis to align the angular spring constraint to in the animation pose.
This typically points down the bone - so values of (1.0, 0.0, 0.0) are common,
but you can pick other values to align the spring to a different direction.
Note: This is affected by the Angular Spring Constant.]`
- `AnimPhysTwistAxis AngularTargetAxis [The axis in the simulation pose to align to the Angular Target.
This is typically the axis pointing along the bone.
Note: This is affected by the Angular Spring Constant.]`
- `float32 ConeAngle [Angle to use when constraining using a cone]`
- `FVector LinearAxesMax [Maximum linear movement per-axis (Set zero here and in the min limit to lock)]`
- `FVector LinearAxesMin [Minimum linear movement per-axis (Set zero here and in the max limit to lock)]`
- `AnimPhysLinearConstraintType LinearXLimitType [Whether to limit the linear X axis]`
- `AnimPhysLinearConstraintType LinearYLimitType [Whether to limit the linear Y axis]`
- `AnimPhysLinearConstraintType LinearZLimitType [Whether to limit the linear Z axis]`
- `AnimPhysTwistAxis TwistAxis [Axis to consider for twist when constraining angular motion (forward axis)]`


**方法**:

- `FAnimPhysConstraintSetup& opAssign(FAnimPhysConstraintSetup Other)`

---

