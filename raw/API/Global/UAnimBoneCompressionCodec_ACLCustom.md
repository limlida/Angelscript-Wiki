### UAnimBoneCompressionCodec_ACLCustom


Uses the open source Animation Compression Library with custom settings suitable for debugging purposes.

**属性**:

- `FPerPlatformFloat KeyframeStrippingProportion [The minimum proportion of keyframes that should be stripped.]`
- `FPerPlatformFloat KeyframeStrippingThreshold [The error threshold below which to strip keyframes. If a keyframe can be reconstructed with an error below the threshold, it is stripped.]`
- `TArray<TObjectPtr<USkeletalMesh>> OptimizationTargets [The skeletal meshes used to estimate the skinning deformation during compression.]`
- `ACLRotationFormat RotationFormat [The rotation format to use.]`
- `ACLVectorFormat ScaleFormat [The scale format to use.]`
- `ACLVectorFormat TranslationFormat [The translation format to use.]`

---

