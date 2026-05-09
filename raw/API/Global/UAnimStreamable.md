### UAnimStreamable


**属性**:

- `UAnimBoneCompressionSettings BoneCompressionSettings [The bone compression settings used to compress bones in this sequence.]`
- `UAnimCurveCompressionSettings CurveCompressionSettings [The curve compression settings used to compress curves in this sequence.]`
- `EAnimInterpolationType Interpolation [This defines how values between keys are calculated *]`
- `FName RetargetSource [Base pose to use when retargeting]`
- `ERootMotionRootLock RootMotionRootLock [Root Bone will be locked to that position when extracting root motion.*]`
- `UVariableFrameStrippingSettings VariableFrameStrippingSettings [The settings used to control whether or not to use variable frame stripping and its amount]`
- `bool bEnableRootMotion [If this is on, it will allow extracting of root motion *]`
- `bool bForceRootLock [Force Root Bone Lock even if Root Motion is not enabled]`
- `bool bUseNormalizedRootMotionScale [If this is on, it will use a normalized scale value for the root motion extracted: FVector(1.0, 1.0, 1.0) *]`

---

