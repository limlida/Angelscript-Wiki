### URootMotionModifier_PrecomputedWarp


(Experimental) Precomputed warp computes the full path to alignment on the first frame of execution and then on following frames just applies that root motion.  Only Suitable for stationary targets.

**属性**:

- `FTransform AlignOffset [Offset from Root (or AlignBone) to Align to the target transform]`
- `FName Disable [Bool variable which will disable this notify]`
- `FPrecomputedWarpCurve RotationWarpingCurve []`
- `FPrecomputedWarpSteeringSettings SteeringSettings []`
- `FPrecomputedWarpCurve TranslationWarpingCurve []`
- `FPrecomputedWarpCurve TranslationWarpingCurve_InMovementDirection [curve for warping translation in direction of movement]`
- `FPrecomputedWarpCurve TranslationWarpingCurve_OutOfMovementDirection []`
- `EPrecomputedWarpUpdateMode UpdateMode []`
- `bool bEnableSteering [Steering will rotate the character based on the difference between the animated movement direction and the warped movement direction, to keep the character facing their direction of movement]`
- `bool bForceTargetTransformUpright [only allow Yaw in the target transform (remove other rotations before warping)]`
- `bool bSeparateTranslationCurves []`


**方法**:

- `SetAlignOffset(FTransform NewTransform)`  
  For automating setting the AlignOffset at the end of the NotifyState

---

