### UAnimBoneCompressionCodec_ACL


Uses the open source Animation Compression Library with default settings suitable for general purpose animations.

**属性**:

- `FPerPlatformFloat KeyframeStrippingProportion [The minimum proportion of keyframes that should be stripped.]`
- `FPerPlatformFloat KeyframeStrippingThreshold [The error threshold below which to strip keyframes. If a keyframe can be reconstructed with an error below the threshold, it is stripped.]`
- `TArray<TObjectPtr<USkeletalMesh>> OptimizationTargets [The skeletal meshes used to estimate the skinning deformation during compression.]`

---

