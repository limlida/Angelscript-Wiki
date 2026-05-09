### UAnimSequence


**属性**:

- `EAdditiveAnimationType AdditiveAnimType [Additive animation type. *]`
- `UAssetImportData AssetImportData [Importing data and options used for this mesh]`
- `UAnimBoneCompressionSettings BoneCompressionSettings [The bone compression settings used to compress bones in this sequence.]`
- `float32 CompressionErrorThresholdScale [Set a scale for error threshold on compression. This is useful if the animation will
be played back at a different scale (e.g. if you know the animation will be played
on an actor/component that is scaled up by a factor of 10, set this value to 10)]`
- `UAnimCurveCompressionSettings CurveCompressionSettings [The curve compression settings used to compress curves in this sequence.]`
- `EAnimInterpolationType Interpolation [This defines how values between keys are calculated *]`
- `int RefFrameIndex [Additve reference frame if RefPoseType == AnimFrame *]`
- `UAnimSequence RefPoseSeq [Additive reference animation if it's relevant - i.e. AnimScaled or AnimFrame *]`
- `EAdditiveBasePoseType RefPoseType [Additive refrerence pose type. Refer above enum type]`
- `FName RetargetSource [Base pose to use when retargeting]`
- `TSoftObjectPtr<USkeletalMesh> RetargetSourceAsset []`
- `ERootMotionRootLock RootMotionRootLock [Root Bone will be locked to that position when extracting root motion.*]`
- `EStripAnimDataOnDedicatedServerSettings StripAnimDataOnDedicatedServer [Enum used to decide whether we should strip animation data on dedicated server]`
- `UVariableFrameStrippingSettings VariableFrameStrippingSettings []`
- `bool bAllowFrameStripping [Allow frame stripping to be performed on this animation if the platform requests it
Can be disabled if animation has high frequency movements that are being lost.]`
- `bool bDoNotOverrideCompression [Do not attempt to override compression scheme when running CompressAnimations commandlet.
Some high frequency animations are too sensitive and shouldn't be changed.]`
- `bool bEnableRootMotion [If this is on, it will allow extracting of root motion *]`
- `bool bForceRootLock [Force Root Bone Lock even if Root Motion is not enabled]`
- `bool bUseNormalizedRootMotionScale [If this is on, it will use a normalized scale value for the root motion extracted: FVector(1.0, 1.0, 1.0) *]`


**方法**:

- `ClearRetargetSourceAsset()`  
  Resets the retarget source asset
- `TSoftObjectPtr<USkeletalMesh> GetRetargetSourceAsset() const`  
  Returns the retarget source asset soft object pointer.
- `SetRetargetSourceAsset(USkeletalMesh InRetargetSourceAsset)`  
  Assigns the passed skeletal mesh to the retarget source
- `UpdateRetargetSourceAssetData()`  
  Update the retarget data pose from the source, if it exist, else clears the retarget data pose saved in RetargetSourceAssetReferencePose.
Warning : This function calls LoadSynchronous at the retarget source asset soft object pointer, so it can not be used at PostLoad

---

