### ALandscapeProxy


**属性**:

- `FBodyInstance BodyInstance [Collision profile settings for this landscape]`
- `bool CastShadow [Controls whether the primitive component should cast a shadow or not.]`
- `int CollisionMipLevel [Landscape LOD to use for collision tests. Higher numbers use less memory and process faster, but are much less accurate]`
- `int CustomDepthStencilValue [Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)]`
- `ERendererStencilMask CustomDepthStencilWriteMask [Mask used for stencil buffer writes.]`
- `UPhysicalMaterial DefaultPhysMaterial [Default physical material, used when no per-layer values physical materials]`
- `int ExportLOD [LOD level to use when exporting the landscape to obj or FBX]`
- `UMaterialInterface HLODMaterialOverride [Specify a custom HLOD material to apply to the HLOD mesh. Specifying an HLOD Material Override will result in no texture being baked for the HLOD mesh.]`
- `int HLODMeshSourceLOD [Specify which LOD to use for the HLOD mesh if HLODMeshSourceLODPolicy is set to SpecificLOD.]`
- `ELandscapeHLODMeshSourceLODPolicy HLODMeshSourceLODPolicy [Specify how to choose the LOD used as input for the HLOD mesh.]`
- `int HLODTextureSize [Specify the texture size to use for the HLOD mesh if HLODTextureSizePolicy is set to SpecificSize. Specifying an HLOD Material Override will disable this option as no texture will be baked.]`
- `ELandscapeHLODTextureSizePolicy HLODTextureSizePolicy [Specify how to choose the texture size of the resulting HLOD mesh. Specifying an HLOD Material Override will disable this option as no texture will be baked.]`
- `float32 LDMaxDrawDistance [Max draw distance exposed to LDs. The real max draw distance is the min (disregarding 0) of this and volumes affecting this object.]`
- `float32 LOD0DistributionSetting [The distribution setting used to change the LOD 0 generation, 1.25 is the normal distribution, numbers influence directly the LOD0 proportion on screen.]`
- `float32 LOD0ScreenSize [This is the starting screen size used to calculate the distribution. You can increase the value if you want less LOD0 component, and you use very large landscape component.]`
- `float32 LODBlendRange [This controls the area that blends LOD between neighboring sections. At 1.0 it blends across the entire section, and lower numbers reduce the blend region to be closer to the boundary.]`
- `float32 LODDistributionSetting [The distribution setting used to change the LOD generation, 3 is the normal distribution, small number mean you want your last LODs to take more screen space and big number mean you want your first LODs to take more screen space.]`
- `uint LODGroupKey [Specifies the LOD Group (Zero is No Group). All landscapes in the same group calculate their LOD together, allowing matching border LODs to fix geometry seams.]`
- `UMaterialInterface LandscapeHoleMaterial [Material used to render landscape components with holes. If not set, LandscapeMaterial will be used (blend mode will be overridden to Masked if it is set to Opaque)]`
- `UMaterialInterface LandscapeMaterial [Combined material used to render the landscape]`
- `FLightingChannels LightingChannels [Channels that this Landscape should be in.  Lights with matching channels will affect the Landscape.
These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.]`
- `FLightmassPrimitiveSettings LightmassSettings [The Lightmass settings for this object.]`
- `int MaxLODLevel [Max LOD level to use when rendering, -1 means the max available]`
- `int MaxPaintedLayersPerComponent []`
- `int NaniteLODIndex [LOD level of the landscape when generating the Nanite mesh. Mostly there for debug reasons, since Nanite is meant to allow high density meshes, we want to use 0 most of the times.]`
- `float32 NaniteMaxEdgeLengthFactor []`
- `int NanitePositionPrecision []`
- `float32 NaniteSkirtDepth []`
- `ENavDataGatheringMode NavigationGeometryGatheringMode []`
- `float32 NegativeZBoundsExtension [Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example
Extension value in the negative Z axis, positive value increases bound size
Note that this can also be overridden per-component when the component is selected with the component select tool]`
- `float32 NonNaniteVirtualShadowMapConstantDepthBias [Constant bias to handle the worst artifacts of the continuous LOD morphing when rendering to VSM.
Only applies when using non-Nanite landscape and VSM.]`
- `float32 NonNaniteVirtualShadowMapInvalidationHeightErrorThreshold [For non-Nanite landscape, cached VSM pages need to be invalidated when continuous LOD morphing introduces a height difference that is too large between the current landscape component's profile and the one that was used when the shadow was shadow was last cached.
This height threshold (in Unreal units) controls this invalidation rate (a smaller threshold will reduce the likeliness of shadow artifacts, but will make the invalidations occur more frequently, which is not desirable in terms of performance.
Disabled if 0.0.
Only applies when using non-Nanite landscape and VSM.]`
- `float32 NonNaniteVirtualShadowMapInvalidationScreenSizeLimit [Screen size under which VSM invalidation stops occurring.
As the height difference between 2 mip levels increases when the LOD level increases (because of undersampling), VSM pages tend to be invalidated more frequently even though it's getting less and less relevant to do so, since this will mean that the screen size of the landscape section decreases, thus the artifacts actually become less noticeable.
We therefore artificially attenuate the VSM invalidation rate as the screen size decreases, to avoid invalidating VSM pages too often, as it becomes less and less impactful.
A higher value will accentuate this attenuation (better performance but more artifacts) and vice versa.
If 0.0, the attenuation of the VSM invalidation rate will be disabled entirely.
Only applies when using non-Nanite landscape and VSM.]`
- `TArray<FLandscapePerLODMaterialOverride> PerLODOverrideMaterials []`
- `float32 PositiveZBoundsExtension [Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example
Extension value in the positive Z axis, positive value increases bound size
Note that this can also be overridden per-component when the component is selected with the component select tool]`
- `TArray<TObjectPtr<URuntimeVirtualTexture>> RuntimeVirtualTextures [Array of runtime virtual textures into which we draw this landscape.
The material also needs to be set up to output to a virtual texture.]`
- `FPerQualityLevelFloat ScalableLOD0DistributionSetting [Scalable (per-quality) version of 'LOD 0'.]`
- `FPerQualityLevelFloat ScalableLOD0ScreenSize [Scalable (per-quality) version of 'LOD 0 Screen Size'.]`
- `FPerQualityLevelFloat ScalableLODDistributionSetting [Scalable (per-quality) version of 'Other LODs'.]`
- `EShadowCacheInvalidationBehavior ShadowCacheInvalidationBehavior [Control shadow invalidation behavior, in particular with respect to Virtual Shadow Maps and material effects like World Position Offset.]`
- `int SimpleCollisionMipLevel [If set higher than the "Collision Mip Level", this specifies the Landscape LOD to use for "simple collision" tests, otherwise the "Collision Mip Level" is used for both simple and complex collision.]`
- `int StaticLightingLOD [LOD level to use when running lightmass (increase to 1 or 2 for large landscapes to stop lightmass crashing)]`
- `float32 StaticLightingResolution [The resolution to cache lighting at, in texels/quad in one axis
Total resolution would be changed by StaticLightingResolution*StaticLightingResolution
Automatically calculate proper value for removing seams]`
- `float32 StreamingDistanceMultiplier [Allows artists to adjust the distance where textures using UV 0 are streamed in/out.
1.0 is the default, whereas a higher value increases the streamed-in resolution.
Value can be < 0 (from legcay content, or code changes)]`
- `int VirtualTextureLodBias [Bias to the LOD selected for rendering to runtime virtual textures.
Higher values reduce vertex count when rendering to the runtime virtual texture.]`
- `int VirtualTextureNumLods [Number of mesh levels to use when rendering landscape into runtime virtual texture.
Lower values reduce vertex count when rendering to the runtime virtual texture but decrease accuracy when using values that require vertex interpolation.]`
- `ERuntimeVirtualTextureMainPassType VirtualTextureRenderPassType [Controls if this component draws in the main pass as well as in the virtual texture.]`
- `bool bAffectDistanceFieldLighting [Controls whether the primitive should affect dynamic distance field lighting methods.  This flag is only used if CastShadow is true. *]`
- `bool bAffectDynamicIndirectLighting [Controls whether the primitive should influence indirect lighting.]`
- `bool bAffectIndirectLightingWhileHidden [Controls whether the primitive should affect indirect lighting when hidden. This flag is only used if bAffectDynamicIndirectLighting is true.]`
- `bool bBakeMaterialPositionOffsetIntoCollision [Whether to bake the landscape material's vertical world position offset into the collision heightfield. Only z (vertical) offset is supported.]`
- `bool bCastContactShadow [Whether the object should cast contact shadows. This flag is only used if CastShadow is true.]`
- `bool bCastDynamicShadow [Controls whether the primitive should cast shadows in the case of non precomputed shadowing.  This flag is only used if CastShadow is true. *]`
- `bool bCastFarShadow [When enabled, the component will be rendering into the far shadow cascades(only for directional lights).  This flag is only used if CastShadow is true.]`
- `bool bCastHiddenShadow [If true, the primitive will cast shadows even if bHidden is true.  Controls whether the primitive should cast shadows when hidden.  This flag is only used if CastShadow is true.]`
- `bool bCastShadowAsTwoSided [Whether this primitive should cast dynamic shadows as if it were a two sided material.  This flag is only used if CastShadow is true.]`
- `bool bCastStaticShadow [Whether the object should cast a static shadow from shadow casting lights.  This flag is only used if CastShadow is true.]`
- `bool bEnableNanite [Use Nanite to render landscape as a mesh on supported platforms.]`
- `bool bFillCollisionUnderLandscapeForNavmesh [Set to true to prevent navmesh generation under the terrain geometry]`
- `bool bGenerateOverlapEvents [If true, Landscape will generate overlap events when other components are overlapping it (eg Begin Overlap).
Both the Landscape and the other component must have this flag enabled for overlap events to occur.

@see [Overlap Events](https://docs.unrealengine.com/InteractiveExperiences/Physics/Collision/Overview#overlapandgenerateoverlapevents)
@see UpdateOverlaps(), BeginComponentOverlap(), EndComponentOverlap()]`
- `bool bHoldout [If this is True, this primitive will render black with an alpha of 0, but all secondary effects (shadows, reflections, indirect lighting) remain. This feature requires the project settings "Alpha Output" and "Support Primitive Alpha Holdout".]`
- `bool bNaniteSkirtEnabled []`
- `bool bRenderCustomDepth [If true, the Landscape will be rendered in the CustomDepth pass (usually used for outlines)]`
- `bool bStripGrassWhenCookedClient [Strip Grass data when cooked for client]`
- `bool bStripGrassWhenCookedServer [Strip Grass data when cooked for server]`
- `bool bStripPhysicsWhenCookedClient [Strip Physics/collision components when cooked for client]`
- `bool bStripPhysicsWhenCookedServer [Strip Physics/collision components when cooked for server]`
- `bool bUseDynamicMaterialInstance [When set to true it will generate MaterialInstanceDynamic for each components, so material can be changed at runtime]`
- `bool bUseLandscapeForCullingInvisibleHLODVertices [Flag whether or not this Landscape's surface can be used for culling hidden triangles *]`
- `bool bUseMaterialPositionOffsetInStaticLighting [Whether to use the landscape material's vertical world position offset when calculating static lighting. Z (vertical) offset is supported]`
- `bool bUseScalableLODSettings [Allows to specify LOD distribution settings per quality level. Using this will ignore the r.LandscapeLOD0DistributionScale CVar.]`
- `bool bUsedForNavigation [Hints navigation system whether this landscape will ever be navigated on. true by default, but make sure to set it to false for faraway, background landscapes]`
- `bool bVirtualTextureRenderWithQuad [Use a single quad to render this landscape to runtime virtual texture pages.
This is the fastest path but it only gives correct results if the runtime virtual texture orientation is aligned with the landscape.
If the two are unaligned we need to render to the virtual texture using LODs with sufficient density.]`
- `bool bVirtualTextureRenderWithQuadHQ [Use highest quality heightmap interpolation when using a single quad to render this landscape to runtime virtual texture pages.
This also requires the project setting: r.VT.RVT.HighQualityPerPixelHeight.]`


**方法**:

- `bool GetHeightAtLocation(FVector Location, float32&out OutHeight) const`
- `DeleteUnusedLayers()`  
  Delete all unused layers in components. Warning: any update of the component could re-introduce them.
- `EditorApplySpline(USplineComponent InSplineComponent, float32 StartWidth = 200.000000, float32 EndWidth = 200.000000, float32 StartSideFalloff = 200.000000, float32 EndSideFalloff = 200.000000, float32 StartRoll = 0.000000, float32 EndRoll = 0.000000, int NumSubdivisions = 20, bool bRaiseHeights = true, bool bLowerHeights = true, ULandscapeLayerInfoObject PaintLayer = nullptr, FName EditLayerName = NAME_None)`  
  Deform landscape using a given spline
@param InSplineComponent - The component containing the spline data
@param StartWidth - Width of the spline at the start node, in Spline Component local space
@param EndWidth   - Width of the spline at the end node, in Spline Component local space
@param StartSideFalloff - Width of the falloff at either side of the spline at the start node, in Spline Component local space
@param EndSideFalloff - Width of the falloff at either side of the spline at the end node, in Spline Component local space
@param StartRoll - Roll applied to the spline at the start node, in degrees. 0 is flat
@param EndRoll - Roll applied to the spline at the end node, in degrees. 0 is flat
@param NumSubdivisions - Number of triangles to place along the spline when applying it to the landscape. Higher numbers give better results, but setting it too high will be slow and may cause artifacts
@param bRaiseHeights - Allow the landscape to be raised up to the level of the spline. If both bRaiseHeights and bLowerHeights are false, no height modification of the landscape will be performed
@param bLowerHeights - Allow the landscape to be lowered down to the level of the spline. If both bRaiseHeights and bLowerHeights are false, no height modification of the landscape will be performed
@param PaintLayer - LayerInfo to paint, or none to skip painting. The landscape must be configured with the same layer info in one of its layers or this will do nothing!
@param EditLayerName - Name of the landscape edit layer to affect (in Edit Layers mode)
- `EditorSetLandscapeMaterial(UMaterialInterface NewLandscapeMaterial)`  
  Setter for LandscapeMaterial. Has no effect outside the editor.
- `ALandscape GetLandscapeActor()`
- `bool LandscapeExportHeightmapToRenderTarget(UTextureRenderTarget2D InRenderTarget, bool InExportHeightIntoRGChannel = false, bool InExportLandscapeProxies = true)`  
  Output a landscape heightmap to a render target
@param InRenderTarget - Valid render target with a format of RTF_RGBA16f, RTF_RGBA32f or RTF_RGBA8
@param InExportHeightIntoRGChannel - Tell us if we should export the height that is internally stored as R & G (for 16 bits) to a single R channel of the render target (the format need to be RTF_RGBA16f or RTF_RGBA32f)
                                                                         Note that using RTF_RGBA16f with InExportHeightIntoRGChannel == false, could have precision loss.
@param InExportLandscapeProxies - Option to also export components of all proxies of Landscape actor (if LandscapeProxy is the Landscape Actor)
- `bool LandscapeImportHeightmapFromRenderTarget(UTextureRenderTarget2D InRenderTarget, bool InImportHeightFromRGChannel = false, int InEditLayerIndex = 0)`  
  Overwrites a landscape heightmap with render target data
@param InRenderTarget - Valid render target with a format of RTF_RGBA16f, RTF_RGBA32f or RTF_RGBA8
@param InImportHeightFromRGChannel - Only relevant when using format RTF_RGBA16f or RTF_RGBA32f, and will tell us if we should import the height data from the R channel only of the Render target or from R & G.
                                                                         Note that using RTF_RGBA16f with InImportHeightFromRGChannel == false, could have precision loss
Only works in the editor
- `bool LandscapeImportWeightmapFromRenderTarget(UTextureRenderTarget2D InRenderTarget, FName InLayerName, int InEditLayerIndex = 0)`  
  Overwrites a landscape weightmap with render target data
Only works in the editor
- `SetLandscapeMaterialScalarParameterValue(FName ParameterName, float32 Value)`  
  Set a MID scalar (float) parameter value for all landscape components.
- `SetLandscapeMaterialTextureParameterValue(FName ParameterName, UTexture Value)`  
  Set an MID texture parameter value for all landscape components.
- `SetLandscapeMaterialVectorParameterValue(FName ParameterName, FLinearColor Value)`  
  Set an MID vector parameter value for all landscape components.
- `SetVirtualTextureRenderPassType(ERuntimeVirtualTextureMainPassType InType)`

---

