### FGrassVariety


**属性**:

- `bool AlignToSurface [Whether the grass instances should be tilted to the normal of the landscape (true), or always vertical (false)]`
- `FFloatInterval AllowedDensityRange [Specifies the density range where the grass variety is allowed to be spawned ([0,1] represents the entire range).]`
- `FPerPlatformInt EndCullDistance [The distance where instances will have completely faded out when using a PerInstanceFadeAmount material node. 0 disables.
When the entire cluster is beyond this distance, the cluster is completely culled and not rendered at all.]`
- `FPerQualityLevelInt EndCullDistanceQuality`
- `FPerPlatformFloat GrassDensity [Instances per 10 square meters.]`
- `FPerQualityLevelFloat GrassDensityQuality`
- `UStaticMesh GrassMesh`
- `uint InstanceWorldPositionOffsetDisableDistance [Distance at which to grass instances should disable WPO for performance reasons]`
- `FLightingChannels LightingChannels [Lighting channels that the grass will be assigned. Lights with matching channels will affect the grass.
These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.]`
- `float32 MaxScaleWeightAttenuation [Modulate the scale of the instances based on weight (normalized density). The weight range (ScaleWeightAttenuation, 1.0) maps to (scaleMin, scaleMax), weight values less than ScaleWeightAttenuation are set to minScale]`
- `int MinLOD [Specifies the smallest LOD that will be used for this component.
If -1 (default), the MinLOD of the static mesh asset will be used instead.]`
- `TArray<TObjectPtr<UMaterialInterface>> OverrideMaterials [Material Overrides.]`
- `float32 PlacementJitter`
- `bool RandomRotation [Whether the grass instances should be placed at random rotation (true) or all at the same rotation (false)]`
- `FFloatInterval ScaleX [Specifies the range of scale, from minimum to maximum, to apply to a grass instance's X Scale property]`
- `FFloatInterval ScaleY [Specifies the range of scale, from minimum to maximum, to apply to a grass instance's Y Scale property]`
- `FFloatInterval ScaleZ [Specifies the range of scale, from minimum to maximum, to apply to a grass instance's Z Scale property]`
- `EGrassScaling Scaling [Specifies grass instance scaling type]`
- `EShadowCacheInvalidationBehavior ShadowCacheInvalidationBehavior [Control shadow invalidation behavior, in particular with respect to Virtual Shadow Maps and material effects like World Position Offset.]`
- `FPerPlatformInt StartCullDistance [The distance where instances will begin to fade out if using a PerInstanceFadeAmount material node. 0 disables.]`
- `FPerQualityLevelInt StartCullDistanceQuality`
- `bool bAffectDistanceFieldLighting [Controls whether the primitive should affect dynamic distance field lighting methods.]`
- `bool bAlignToTriangleNormals [When aligning to the surface when using grid mode, whether we should align to triangle normal (true) or a smooth grid-based normal (false).  Halton always uses triangle normal.]`
- `bool bCastContactShadow [Whether the grass should cast contact shadows. *]`
- `bool bCastDynamicShadow [Whether the grass should cast shadows when using non-precomputed shadowing. *]`
- `bool bKeepInstanceBufferCPUCopy [Whether we should keep a cpu copy of the instance buffer. This should be set to true if you plan on using GetOverlappingXXXXCount functions of the component otherwise it won't return any data.*]`
- `bool bReceivesDecals [Whether the grass instances should receive decals.]`
- `bool bUseGrid [If true, use a jittered grid sequence for placement, otherwise use a halton sequence.]`
- `bool bUseLandscapeLightmap [Whether to use the landscape's lightmap when rendering the grass.]`
- `bool bWeightAttenuatesMaxScale [If enabled the the scale of instances is reduced as the weight (density) decreases]`


**方法**:

- `FGrassVariety& opAssign(FGrassVariety Other)`

---

