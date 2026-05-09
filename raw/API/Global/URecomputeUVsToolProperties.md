### URecomputeUVsToolProperties


**属性**:

- `ERecomputeUVsToolOrientationMode AutoRotation [Type of automatic rotation applied to each UV island]`
- `ERecomputeUVsPropertiesIslandMode IslandGeneration [Generation method for initial UV islands.]`
- `ERecomputeUVsPropertiesLayoutType LayoutType [Uniformly scale and translate UV islands collectively to pack them into the unit square, i.e. fit between 0 and 1 with no overlap.]`
- `float32 MergingAngleThreshold [Threshold for the average face normal deviation below  which island merging is allowed. This is only enabled if the Unwrap Type is set to Island Merging.]`
- `float32 MergingDistortionThreshold [Threshold for stretching and distortion below which island merging is allowed; larger values increase the allowable UV distortion. This is only enabled if the Unwrap Type is set to Island Merging.]`
- `float32 NormalizeScale [Scaling factor used for UV island normalization/scaling. This is only enabled when the Layout Type is set to Normalize to Bounds or Normalize to World.]`
- `float32 SmoothingAlpha [Smoothing parameter; larger values result in faster smoothing in each step. This is only enabled if the Unwrap Type is set to ExpMap or Island Merging.]`
- `int SmoothingSteps [Number of smoothing steps to apply; this slightly increases distortion but produces more stable results. This is only enabled if the Unwrap Type is set to ExpMap or Island Merging.]`
- `int TextureResolution [Expected resolution of the output textures; this controls spacing left between UV islands to avoid interpolation artifacts. This is only enabled when the Layout Type is set to Repack.]`
- `ERecomputeUVsPropertiesUnwrapType UnwrapType [Type of UV flattening algorithm to use]`
- `bool bEnableUDIMLayout [Enable UDIM aware layout and keep islands within their originating UDIM tiles when laying out.]`
- `bool bPreserveIrregularity [If enabled, reduces distortion for meshes with triangles of vastly different sizes, This is only enabled if the Unwrap Type is set to Spectral Conformal.]`

---

