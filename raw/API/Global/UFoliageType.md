### UFoliageType


**属性**:

- `float32 AlignMaxAngle [The maximum angle in degrees that foliage instances will be adjusted away from the vertical]`
- `bool AlignToNormal [Whether foliage instances should have their angle adjusted away from vertical to match the normal of the surface they're painted on
If AlignToNormal is enabled and RandomYaw is disabled, the instance will be rotated so that the +X axis points down-slope]`
- `bool AverageNormal [Will average normal based on Foliage Type base radius (this as a cost as it will do extra line traces)]`
- `int AverageNormalSampleCount [Line trace count to use around hit location when averaging normal]`
- `bool AverageNormalSingleComponent [Whether to discard normals originating from other hit components or not when averaging normals]`
- `float32 AverageSpreadDistance [The average distance between the spreading instance and its seeds. For example, a tree with an AverageSpreadDistance 10 will ensure the average distance between the tree and its seeds is 10cm]`
- `FBodyInstance BodyInstance [Custom collision for foliage]`
- `bool CastShadow [Controls whether the foliage should cast a shadow or not.]`
- `float32 CollisionRadius [The CollisionRadius determines when two instances overlap. When two instances overlap a winner will be picked based on rules and priority.]`
- `FVector CollisionScale [The foliage instance's collision bounding box will be scaled by the specified amount before performing the overlap check]`
- `bool CollisionWithWorld [If checked, an overlap test with existing world geometry is performed before each instance is placed]`
- `FInt32Interval CullDistance [The distance where instances will begin to fade out if using a PerInstanceFadeAmount material node. 0 disables.
When the entire cluster is beyond this distance, the cluster is completely culled and not rendered at all.]`
- `int CustomDepthStencilValue [Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)]`
- `ERendererStencilMask CustomDepthStencilWriteMask [Mask used for stencil buffer writes.]`
- `EHasCustomNavigableGeometry CustomNavigableGeometry [Force navmesh]`
- `float32 Density [Foliage instances will be placed at this density, specified in instances per 1000x1000 unit area]`
- `float32 DensityAdjustmentFactor [The factor by which to adjust the density of instances. Values >1 will increase density while values <1 will decrease it.]`
- `FFoliageDensityFalloff DensityFalloff []`
- `int DistributionSeed [The seed that determines placement of initial seeds.]`
- `TArray<FName> ExclusionLandscapeLayers [If layer names are specified, painting on landscape will exclude the foliage to areas of landscape without the specified layers painted]`
- `FFloatInterval GroundSlopeAngle [Foliage instances will only be placed on surfaces sloping in the specified angle range from the horizontal]`
- `FFloatInterval Height [The valid altitude range where foliage instances will be placed, specified using minimum and maximum world coordinate Z values]`
- `float32 InitialSeedDensity [Specifies the number of seeds to populate along 10 meters. The number is implicitly squared to cover a 10m x 10m area]`
- `TArray<FName> LandscapeLayers [If layer names are specified, painting on landscape will limit the foliage to areas of landscape with the specified layers painted]`
- `FLightingChannels LightingChannels [Lighting channels that placed foliage will be assigned. Lights with matching channels will affect the foliage.
These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.]`
- `ELightmapType LightmapType [Controls the type of lightmap used for this component.]`
- `float32 MaxAge [Specifies the oldest a seed can be. After reaching this age the instance will still spread seeds, but will not get any older]`
- `float32 MaxInitialAge [Allows a new seed to be older than 0 when created. New seeds will be randomly assigned an age in the range [0,MaxInitialAge]]`
- `float32 MaxInitialSeedOffset [The max seed used to compute global offset.]`
- `float32 MinimumExclusionLayerWeight [Specifies the minimum value above which the landscape exclusion layer weight value must be, in order for foliage instances to be excluded in a specific area]`
- `float32 MinimumLayerWeight [Specifies the minimum value above which the landscape layer weight value must be, in order for foliage instances to be placed in a specific area]`
- `EComponentMobility Mobility [Mobility property to apply to foliage components]`
- `int NumSteps [The number of times we age the species and spread its seeds.]`
- `float32 OverlapPriority [When two instances overlap we must determine which instance to remove.
The instance with a lower OverlapPriority will be removed.
In the case where OverlapPriority is the same regular simulation rules apply.]`
- `int OverriddenLightMapRes [Overrides the lightmap resolution defined in the static mesh]`
- `FFloatInterval ProceduralScale [The scale range of this type when being procedurally generated. Configured with the Scale Curve.]`
- `float32 Radius [The minimum distance between foliage instances]`
- `float32 RandomPitchAngle [A random pitch adjustment can be applied to each instance, up to the specified angle in degrees, from the original vertical]`
- `bool RandomYaw [If selected, foliage instances will have a random yaw rotation around their vertical axis applied]`
- `bool ReapplyAlignToNormal [If checked, foliage instances will have their normal alignment adjusted by the Reapply tool]`
- `bool ReapplyCollisionWithWorld [If checked, foliage instances will have an overlap test with the world reapplied, and overlapping instances will be removed by the Reapply tool]`
- `bool ReapplyDensity [If checked, the density of foliage instances already placed will be adjusted by the density adjustment factor.]`
- `bool ReapplyGroundSlope [If checked, foliage instances not meeting the ground slope condition will be removed by the Reapply too]`
- `bool ReapplyHeight [If checked, foliage instances not meeting the valid Z height condition will be removed by the Reapply tool]`
- `bool ReapplyLandscapeLayers [If checked, foliage instances painted on areas that do not have the appropriate landscape layer painted will be removed by the Reapply tool]`
- `bool ReapplyRadius [If checked, foliage instances not meeting the new Radius constraint will be removed]`
- `bool ReapplyRandomPitchAngle [If checked, foliage instances will have their pitch adjusted by the Reapply tool]`
- `bool ReapplyRandomYaw [If checked, foliage instances will have their yaw adjusted by the Reapply tool]`
- `bool ReapplyScaleX [If checked, foliage instances will have their X scale adjusted by the Reapply tool]`
- `bool ReapplyScaleY [If checked, foliage instances will have their Y scale adjusted by the Reapply tool]`
- `bool ReapplyScaleZ [If checked, foliage instances will have their Z scale adjusted by the Reapply tool]`
- `bool ReapplyScaling [If checked, foliage instances will have their scale adjusted to fit the specified scaling behavior by the Reapply tool]`
- `bool ReapplyVertexColorMask [If checked, foliage instances no longer matching the vertex color constraint will be removed by the Reapply too]`
- `bool ReapplyZOffset [If checked, foliage instances will have their Z offset adjusted by the Reapply tool]`
- `TArray<TObjectPtr<URuntimeVirtualTexture>> RuntimeVirtualTextures [Array of runtime virtual textures into which we draw the instances.
The mesh material also needs to be set up to output to a virtual texture.]`
- `FRuntimeFloatCurve ScaleCurve [Instance scale factor as a function of normalized age (i.e. Current Age / Max Age).
X = 0 corresponds to Age = 0, X = 1 corresponds to Age = Max Age.
Y = 0 corresponds to Min Scale, Y = 1 corresponds to Max Scale.]`
- `FFloatInterval ScaleX [Specifies the range of scale, from minimum to maximum, to apply to a foliage instance's X Scale property]`
- `FFloatInterval ScaleY [Specifies the range of scale, from minimum to maximum, to apply to a foliage instance's Y Scale property]`
- `FFloatInterval ScaleZ [Specifies the range of scale, from minimum to maximum, to apply to a foliage instance's Z Scale property]`
- `EFoliageScaling Scaling [Specifies foliage instance scaling behavior when painting.]`
- `int SeedsPerStep [The number of seeds an instance will spread in a single step of the simulation.]`
- `float32 ShadeRadius [The ShadeRadius determines when two instances overlap. If an instance can grow in the shade this radius is ignored.]`
- `EShadowCacheInvalidationBehavior ShadowCacheInvalidationBehavior [Control shadow invalidation behavior, in particular with respect to Virtual Shadow Maps and material effects like World Position Offset.]`
- `float32 SingleInstanceModeRadius [The radius used in single instance mode to detect collision with other instances]`
- `float32 SpreadVariance [Specifies how much seed distance varies from the average. For example, a tree with an AverageSpreadDistance 10 and a SpreadVariance 1 will produce seeds with an average distance of 10cm plus or minus 1cm]`
- `int TranslucencySortPriority [Translucent objects with a lower sort priority draw behind objects with a higher priority.
Translucent objects with the same priority are rendered from back-to-front based on their bounds origin.
This setting is also used to sort objects being drawn into a runtime virtual texture.

Ignored if the object is not translucent.  The default priority is zero.
Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly.
It is especially problematic on dynamic gameplay effects.]`
- `FFoliageVertexColorChannelMask VertexColorMaskByChannel []`
- `int VirtualTextureCullMips [Number of lower mips in the runtime virtual texture to skip for rendering this primitive.
Larger values reduce the effective draw distance in the runtime virtual texture.
This culling method doesn't take into account primitive size or virtual texture size.]`
- `ERuntimeVirtualTextureMainPassType VirtualTextureRenderPassType [Controls if this component draws in the main pass as well as in the virtual texture.]`
- `int WorldPositionOffsetDisableDistance`
- `FFloatInterval ZOffset [Specifies a range from minimum to maximum of the offset to apply to a foliage instance's Z location]`
- `bool bAffectDistanceFieldLighting [Controls whether the primitive should affect dynamic distance field lighting methods.  This flag is only used if CastShadow is true.]`
- `bool bAffectDynamicIndirectLighting [Controls whether the foliage should inject light into the Light Propagation Volume.  This flag is only used if CastShadow is true.]`
- `bool bCanGrowInShade [If true, seeds of this type will ignore shade radius during overlap tests with other types.]`
- `bool bCastContactShadow [Whether the object should cast contact shadows. This flag is only used if CastShadow is true.]`
- `bool bCastDynamicShadow [Controls whether the foliage should cast shadows in the case of non precomputed shadowing.  This flag is only used if CastShadow is true.]`
- `bool bCastShadowAsTwoSided [Whether this foliage should cast dynamic shadows as if it were a two sided material.]`
- `bool bCastStaticShadow [Whether the foliage should cast a static shadow from shadow casting lights.  This flag is only used if CastShadow is true.]`
- `bool bEnableCullDistanceScaling [* Whether this foliage type should be affected by the Engine's "foliage.CullDistanceScale" setting]`
- `bool bEnableDensityScaling [Whether this foliage type should be affected by the Engine Scalability system's Foliage scalability setting.
Enable for detail meshes that don't really affect the game. Disable for anything important.
Typically, this will be enabled for small meshes without collision (e.g. grass) and disabled for large meshes with collision (e.g. trees)]`
- `bool bEnableDiscardOnLoad [Whether this foliage type should be discarded when CVarFoliageDiscardDataOnLoad is enabled.]`
- `bool bEvaluateWorldPositionOffset`
- `bool bIncludeInHLOD`
- `bool bOverrideLightMapRes [Whether to override the lightmap resolution defined in the static mesh.]`
- `bool bReceivesDecals [Whether the foliage receives decals.]`
- `bool bRenderCustomDepth [If true, the foliage will be rendered in the CustomDepth pass (usually used for outlines)]`
- `bool bSingleInstanceModeOverrideRadius [Option to override radius used to detect collision with other instances when painting in single instance mode]`
- `bool bSpawnsInShade [Whether new seeds are spawned exclusively in shade. Occurs in a second pass after all types that do not spawn in shade have been simulated.
Only valid when CanGrowInShade is true.]`
- `bool bUseAsOccluder [If enabled, foliage will render a pre-pass which allows it to occlude other primitives, and also allows
it to correctly receive DBuffer decals. Enabling this setting may have a negative performance impact.]`
- `bool bVisibleInRayTracing`

---

