### URootMotionModifier_Warp


**属性**:

- `UCurveFloat AddTranslationEasingCurve [Custom curve used to add translation when there is none to warp. Only relevant when AddTranslationEasingFunc is set to Custom]`
- `EAlphaBlendOption AddTranslationEasingFunc [Easing function used when adding translation. Only relevant when there is no translation in the animation]`
- `EMotionWarpRotationMethod RotationMethod [The method of rotation to use]`
- `EMotionWarpRotationType RotationType [Whether rotation should be warp to match the rotation of the sync point or to face the sync point]`
- `float32 WarpMaxRotationRate [Maximum rotation rate in degrees/sec. Will be the value used in constant rotation rate]`
- `FName WarpPointAnimBoneName [@TODO: Hide from the UI when Target != Bone]`
- `EWarpPointAnimProvider WarpPointAnimProvider`
- `FTransform WarpPointAnimTransform [@TODO: Hide from the UI when Target != Static]`
- `float32 WarpRotationTimeMultiplier [Allow to modify how fast the rotation is warped.
e.g if the window duration is 2sec and this is 0.5, the target rotation will be reached in 1sec instead of 2sec]`
- `FName WarpTargetName [Name used to find the warp target for this modifier]`
- `bool bIgnoreZAxis [Whether to ignore the Z component of the translation. Z motion will remain untouched]`
- `bool bSubtractRemainingRootMotion [Should root motion after this notify state be subtracted from warp target transform.
      This means actor will arrive at warp target transform when the animation finishes, not when the notify ends]`
- `bool bWarpRotation [Whether to warp the rotation component of the root motion]`
- `bool bWarpToFeetLocation [Whether we warp the actors location or their foot location to the warp target]`
- `bool bWarpTranslation [Whether to warp the translation component of the root motion]`

---

