### FRotationRetargetingInfo


The FRotationRetargetingInfo is used to provide all of the
settings required to perform rotational retargeting on a single
transform.

**属性**:

- `FRuntimeFloatCurve CustomCurve [Custom curve mapping to apply if bApplyCustomCurve is true]`
- `EEasingFuncType EasingType [The easing to use - pick linear if you don't want to apply any easing]`
- `float32 EasingWeight [The amount of easing to apply (value should be 0.0 to 1.0)]`
- `ERotationComponent RotationComponent [The rotation component to perform retargeting with]`
- `FTransform Source [The source transform of the frame of reference. The rotation is made relative to this space]`
- `float32 SourceMaximum [The maximum value of the source angle in degrees]`
- `float32 SourceMinimum [The minimum value of the source angle in degrees]`
- `FTransform Target [The target transform to project the rotation. In most cases this is the same as Source]`
- `float32 TargetMaximum [The target value of the target angle in degrees (can be the same as SourceMaximum)]`
- `float32 TargetMinimum [The minimum value of the target angle in degrees (can be the same as SourceMinimum)]`
- `FVector TwistAxis [In case the rotation component is SwingAngle or TwistAngle this vector is used as the twist axis]`
- `bool bClamp [If set to true the value for the easing will be clamped between 0.0 and 1.0]`
- `bool bEnabled [Set to true this enables retargeting]`
- `bool bFlipEasing [If set to true the interpolation value for the easing will be flipped (1.0 - Value)]`
- `bool bUseAbsoluteAngle [If set to true the angle will be always positive, thus resulting in mirrored rotation both ways]`


**方法**:

- `FRotationRetargetingInfo& opAssign(FRotationRetargetingInfo Other)`

---

