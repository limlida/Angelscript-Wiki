### FPoseSearchAssetSamplerInput


**属性**:

- `const UAnimationAsset Animation [Animation to sample]`
- `float32 AnimationTime [Sampling time for Animation]`
- `FVector BlendParameters [blend parameters if Animation is a blend space]`
- `const UMirrorDataTable MirrorDataTable`
- `FTransform RootTransformOrigin [origin used to start sampling Animation at time of zero]`
- `int RootTransformSamplingRate [frequency of sampling while sampling the root transform of blend spaces]`
- `bool bMirrored`


**方法**:

- `FPoseSearchAssetSamplerInput& opAssign(FPoseSearchAssetSamplerInput Other)`

---

