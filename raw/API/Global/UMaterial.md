### UMaterial


A Material is an asset which can be applied to a mesh to control the visual look of the scene.
When light from the scene hits the surface, the shading model of the material is used to calculate how that light interacts with the surface.

Warning: Creating new materials directly increases shader compile times!  Consider creating a Material Instance off of an existing material instead.

**属性**:

- `bool AllowTranslucentCustomDepthWrites [Allows a translucent material to be used with custom depth writing by compiling additional shaders.]`
- `EBlendMode BlendMode [Determines how the material's color is blended with background colors.]`
- `EBlendableLocation BlendableLocation [Where the node is inserted in the (post processing) graph, only used if domain is PostProcess]`
- `bool BlendableOutputAlpha [If this is enabled, the blendable will output alpha]`
- `int BlendablePriority [If multiple nodes with the same  type are inserted at the same point, this defined order and if they get combined, only used if domain is PostProcess]`
- `FDisplacementFadeRange DisplacementFadeRange`
- `FDisplacementScaling DisplacementScaling`
- `bool DitherOpacityMask [Dither opacity mask. When combined with Temporal AA this can be used as a form of limited translucency which supports all lighting features.]`
- `bool DitheredLODTransition [Whether meshes rendered with the material should support dithered LOD transitions.]`
- `EMaterialFloatPrecisionMode FloatPrecisionMode [How to use full (highp) precision in the pixel shader.
highp is slower than the default (mediump) but can be used to work around precision-related rendering errors.
Use 'Full-precision for MaterialExpressions only' if you still want to keep the precision of the halfs in .ush/.usf
This setting has no effect on older mobile devices that do not support high precision.]`
- `EMaterialDecalResponse MaterialDecalResponse [Defines how the material reacts on DBuffer decals (Affects look, performance and texture/sample usage).
Non DBuffer Decals can be disabled on the primitive (e.g. static mesh)]`
- `EMaterialDomain MaterialDomain [The domain that the material's attributes will be evaluated in.
Certain pieces of material functionality are only valid in certain domains, for example vertex normal is only valid on a surface.]`
- `float32 MaxWorldPositionOffsetDisplacement [Specifies the max world position offset of the material. Use this value to resolve issues with culling and self-occlusion caused by
World Position Offset, and/or to restrict how much offset is permitted (i.e. values are clamped on each axis).
NOTE: A value of 0.0 effectively means "no maximum", and will not clamp the offsets, however it will also not extend culling bounds.]`
- `FMaterialOverrideNanite NaniteOverrideMaterial [An override material which will be used instead of this one when rendering with Nanite.]`
- `int8 NeuralProfileId [Set by reference object cannot be modified.]`
- `int NumCustomizedUVs [Number of customized UV inputs to display.  Unconnected customized UV inputs will just pass through the vertex UVs.]`
- `float32 OpacityMaskClipValue [If BlendMode is BLEND_Masked, the surface is not rendered where OpacityMask < OpacityMaskClipValue.
If BlendMode is BLEND_Translucent, BLEND_Additive, or BLEND_Modulate, and "Output Depth and Velocity" is enabled,
the object velocity is not rendered where Opacity < OpacityMaskClipValue.]`
- `UPhysicalMaterial PhysMaterial [Physical material to use for this graphics material. Used for sounds, effects etc.]`
- `UPhysicalMaterialMask PhysMaterialMask [Physical material mask to use for this graphics material. Used for sounds, effects etc.]`
- `UPhysicalMaterial PhysicalMaterialMap [Physical material mask map to use for this graphics material. Used for sounds, effects etc.]`
- `EPixelDepthOffsetMode PixelDepthOffsetMode [Controls whether refraction takes into account the material surface coverage, or not.]`
- `uint16 PreshaderGap [If non-zero, overrides r.Material.PreshaderGapInterval for this material.  Workaround for a platform specific register overflow bug.]`
- `ERefractionCoverageMode RefractionCoverageMode [Controls whether refraction takes into account the material surface coverage, or not. This is only for when substrate FrontMaterial is plugged in, not legacy root node material for the sake of compatibility.]`
- `float32 RefractionDepthBias [This is the refraction depth bias, larger values offset distortion to prevent closer objects from rendering into the distorted surface at acute viewing angles but increases the disconnect between surface and where the refraction starts.]`
- `ERefractionMode RefractionMethod [Controls how the Refraction input is interpreted and how the refraction offset into scene color is computed for this material.]`
- `FName ResolutionRelativeToInput [Set output resolution relative to the given User Scene Texture input.  Negative User Texture Divisors upsample (clamped at full resolution).]`
- `EMaterialShadingModel ShadingModel [Determines how inputs are combined to create the material's final color.]`
- `EMaterialShadingRate ShadingRate [Select what shading rate to apply, on platforms that support variable rate shading.
Non-1x1 rates will reduce the rasterization fidelity for the material; they will not super-sample the material.
This can save GPU performance on materials where reduced fidelity is acceptable.]`
- `EMaterialStencilCompare StencilCompare []`
- `uint8 StencilRefValue []`
- `float32 TranslucencyDirectionalLightingIntensity [Useful for artificially increasing the influence of the normal on the lighting result for translucency.
A value larger than 1 increases the influence of the normal, a value smaller than 1 makes the lighting more ambient.]`
- `ETranslucencyLightingMode TranslucencyLightingMode [Sets the lighting mode that will be used on this material if it is translucent.]`
- `EMaterialTranslucencyPass TranslucencyPass [Specifies the separate pass in which to render translucency.
This can be used to avoid artifacts caused by certain post processing effects.]`
- `float32 TranslucentBackscatteringExponent [Controls how diffuse the material's backscattering is when using the MSM_Subsurface shading model.
Larger exponents give a less diffuse look (smaller, brighter backscattering highlight).
This is only used when the object is casting a volumetric translucent shadow from a directional light.]`
- `float32 TranslucentDirectionalLightShadowQuality [Set directional light shadow quality received by translucent material.]`
- `float32 TranslucentLocalLightShadowQuality [Set local light shadow quality received by translucent material.]`
- `FLinearColor TranslucentMultipleScatteringExtinction [Colored extinction factor used to approximate multiple scattering in dense volumes.
This is only used when the object is casting a volumetric translucent shadow.]`
- `float32 TranslucentSelfShadowDensityScale [Scale used to make translucent self-shadowing more or less opaque than the material's shadow on other objects.
This is only used when the object is casting a volumetric translucent shadow.]`
- `float32 TranslucentSelfShadowSecondDensityScale [Used to make a second self shadow gradient, to add interesting shading in the shadow of the first.]`
- `float32 TranslucentSelfShadowSecondOpacity [Controls the strength of the second self shadow gradient.]`
- `float32 TranslucentShadowDensityScale [Scale used to make translucent shadows more or less opaque than the material's actual opacity.]`
- `float32 TranslucentShadowStartOffset [Local space distance to bias the translucent shadow.  Positive values move the shadow away from the light.]`
- `bool TwoSided [Indicates that the material should be rendered without backface culling and the normal should be flipped for backfaces.]`
- `FName UserSceneTexture [Specify a user generated scene texture as output, overriding the default output implied by "Blendable Location", only used if domain is PostProcess]`
- `FIntPoint UserTextureDivisor [A divisor for the resolution of the User Scene Texture above, allowing an intermediate with reduced resolution]`
- `bool Wireframe [Enables a wireframe view of the mesh the material is applied to.]`
- `bool bAllowFrontLayerTranslucency [Allows a translucent material to be used with Front Layer Translucency by compiling additional shaders. Useful for controlling what should be included in Front Layer Translucency.]`
- `bool bAllowNegativeEmissiveColor [Whether the material should allow outputting negative emissive color values.  Only allowed on unlit materials.]`
- `bool bAllowTranslucentLocalLightShadow [Allows a translucent material to receive local light shadows.]`
- `bool bAllowVariableRateShading [Allows the use of variable rate shading when evaluating this material. This will only apply to the base/translucency pass.]`
- `bool bAlwaysEvaluateWorldPositionOffset [Forces World Position Offset to always be evaluated for this material, even if the primitive it's applied to has disabled it
via "Evaluate World Position Offset" or "World Position Offset Disable Distance".]`
- `bool bApplyCloudFogging [When true, translucent materials receive cloud contribution as part of the fog evaluation, per vertex or per pixel according to the other selected options. This is a rough approximation but can help in some cases. Defaults to false. Fog is applied on clouds, so Apply Fogging must be true to use this feature.]`
- `bool bAutomaticallySetUsageInEditor [Whether to automatically set usage flags based on what the material is applied to in the editor.
It can be useful to disable this on a base material with many instances, where adding another usage flag accidentally (eg bUsedWithSkeletalMeshes) can add a lot of shader permutations.]`
- `bool bCastDynamicShadowAsMasked [Whether the material should cast shadows as masked even though it has a translucent blend mode.]`
- `bool bCastRayTracedShadows [when true, the material casts ray tracing shadows.]`
- `bool bCompatibleWithLumenCardSharing [When true, allows to share Lumen Cards between different instances even when material uses world position or per instance data, which may change material look per instance. All materials on a component needs this flag set for sharing to work.]`
- `bool bComputeFogPerPixel [When true, translucent materials have fog computed for every pixel, which costs more but fixes artifacts due to low tessellation.]`
- `bool bContactShadows [Contact shadows on translucency]`
- `bool bDisableDepthTest [Whether to draw on top of opaque pixels even if behind them. This only has meaning for translucency.]`
- `bool bDisablePreExposureScale [Disable pre-exposure scale in post process materials (multiply by View.OneOverPreExposure on inputs, View.PreExposure on output).  Useful for
materials that don't care about the absolute intensity of SceneColor (for example, a blur), simplifying custom HLSL and saving some performance.
Or useful for non-color UserSceneTextures (for example, mask, matte, modulation, offset, or ID textures), where pre-exposure scale is
undesirable.  Pre-exposure scale can be manually reapplied via custom HLSL if needed on specific inputs or the output.]`
- `bool bEnableDisplacementFade [Enables fading out and disabling of dynamic displacement in the distance, as displacement becomes unnoticeable]`
- `bool bEnableExecWire`
- `bool bEnableMobileSeparateTranslucency [Indicates that the translucent material should not be affected by bloom or DOF. (Note: Depth testing is not available)]`
- `bool bEnableNewHLSLGenerator`
- `bool bEnableResponsiveAA [Indicates that the material should be rendered using responsive anti-aliasing. Improves sharpness of small moving particles such as sparks.
Only use for small moving features because it will cause aliasing of the background.]`
- `bool bEnableStencilTest [Selectively execute post process material only for pixels that pass the stencil test against the Custom Depth/Stencil buffer.
Pixels that fail the stencil test are filled with the previous post process material output or scene color.]`
- `bool bEnableTessellation [Whether tessellation is enabled on the material. NOTE: Required for displacement to work.]`
- `bool bForceCompatibleWithLightFunctionAtlas [Indicates that this material is safe to use with the light function atlas:
 - texture coordinates are manipulated in a way that works.
 - world position and depth are not used in the graph or do work with the atlas.
Forces all deferred lights to go the fast batched lighting code path (no screen shadow mask).]`
- `bool bForwardBlendsSkyLightCubemaps [* Enables blending of sky light cubemap textures. When disabled, the secondary cubemap is only visible when the blend factor is 1.]`
- `bool bForwardRenderUsePreintegratedGFForSimpleIBL [Forward (including mobile) renderer: use preintegrated GF lut for simple IBL, but will use one more sampler.]`
- `bool bFullyRough [Forces the material to be completely rough. Saves a number of instructions and one sampler.]`
- `bool bGenerateSphericalParticleNormals [Whether to generate spherical normals for particles that use this material.]`
- `bool bHasPixelAnimation [Whether the opaque material has any pixel animations happening, that isn't included in the geometric velocities.
This allows to disable renderer's heuristics that assumes animation is fully described with motion vector, such as TSR's anti-flickering heuristic.]`
- `bool bIsBlendable [Allows blendability to be turned off, only used if domain is PostProcess]`
- `bool bIsSky [Unlit and Opaque materials can be used as sky material on a sky dome mesh. When IsSky is true, these meshes will not receive any contribution from the aerial perspective. Height and Volumetric fog effects will still be applied.]`
- `bool bIsThinSurface [Indicates that the material should be rendered as a thin surface (i.e., without inner volume). Only used by Substrate materials. Enabling ThinSurface will disable subsurface profiles.]`
- `bool bIsTranslucencyVelocityFromDepth [When true, translucent materials that write velocity will calculate it only based on the written depth and camera movement.
This can be useful for translucent volume raycasts which write pixel depth offset and want to calculate velocity based on the output depth.]`
- `bool bNormalCurvatureToRoughness [Reduce roughness based on screen space normal changes.]`
- `bool bOutputTranslucentVelocity [When true, translucent materials will output motion vectors and write to depth buffer in velocity pass.]`
- `bool bRelaxRuntimeVirtualTextureRestrictions [Relax restrictions on Runtime Virtual Texture output compilation.
Normally we give a compilation error whenever a Runtime Virtual Texture Output reads from a Virtual Texture.
This is because there is no feedback from Runtime Virtual Texture Output passes and no guarantee that Virtual Textures will be ready.
If allowed then Runtime Virtual Texture pages can contain stale low resolution data that is not evicted until the pages are flushed.]`
- `bool bScreenSpaceReflections [SSR on translucency]`
- `bool bSubstrateRoughnessTracking [This can be used to disable roughness tracking. When this is done, top layers roughness will no longer impact bottom layer roughness.]`
- `bool bTangentSpaceNormal [Whether the material takes a tangent space normal or a world space normal as input.
(TangentSpace requires extra instructions but is often more convenient).]`
- `bool bUseAlphaToCoverage [Use alpha to coverage for masked material on mobile, make sure MSAA is enabled as well.]`
- `bool bUseEmissiveForDynamicAreaLighting [If enabled, the material's emissive colour is injected into the LightPropagationVolume]`
- `bool bUseHQForwardReflections [* Forward renderer: enables multiple parallax-corrected reflection captures that blend together.]`
- `bool bUseLightmapDirectionality [Use lightmap directionality and per pixel normals. If disabled, lighting from lightmaps will be flat but cheaper.]`
- `bool bUseMaterialAttributes [when true, the material attributes pin is used instead of the regular pins.]`
- `bool bUsePlanarForwardReflections [Enables planar reflection when using the forward renderer or mobile. Enabling this setting reduces the number of samplers available to the material as one more sampler will be used for the planar reflection.]`
- `bool bUseTranslucencyVertexFog [When true, translucent materials are fogged. Defaults to true.]`
- `bool bUsedWithBeamTrails [Indicates that the material and its instances can be used with beam trails
This will result in the shaders required to support beam trails being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithClothing [Indicates that the material and its instances can be used with clothing
This will result in the shaders required to support clothing being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithEditorCompositing [Indicates that the material and its instances can be used with editor compositing
This will result in the shaders required to support editor compositing being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithGeometryCache`
- `bool bUsedWithGeometryCollections [Indicates that the material and its instances can be use with geometry collections
This will result in the shaders required to support geometry collections being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithHairStrands [Indicates that the material and its instances can be use with hair strands
This will result in the shaders required to support hair strands geometries being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithHeterogeneousVolumes [Indicates that the material and its instances with heterogeneous volumes. Without that flag, it can only be used on volumetric fog.
This will result in the shaders required to support Heterogeneous Volumes rendering being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithInstancedStaticMeshes [Indicates that the material and its instances can be used with instanced static meshes
This will result in the shaders required to support instanced static meshes being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithLidarPointCloud [Indicates that the material and its instances can be use with LiDAR Point Clouds
This will result in the shaders required to support LiDAR Point Cloud geometries being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithMeshParticles [Indicates that the material and its instances can be used with mesh particles
This will result in the shaders required to support mesh particles being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithMorphTargets [Indicates that the material and its instances can be used with morph targets
This will result in the shaders required to support morph targets being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithNanite [Indicates that the material and its instances can be used with Nanite meshes.
This will result in the shaders required to support Nanite geometries being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithNeuralNetworks [Indicates that the material and its instances can be used with neural network engine.
This will result in the shaders required to support neural network engine being compiled which will increase shader compile time and memory usage.
In addition, an additional pass will run before the postprocess pass for neural network engine, which will increase the rendering cost due to
buffer copy and inference.]`
- `bool bUsedWithNiagaraMeshParticles`
- `bool bUsedWithNiagaraRibbons`
- `bool bUsedWithNiagaraSprites [Indicates that the material and its instances can be used with Niagara sprites (meshes and ribbons, respectively)
This will result in the shaders required to support Niagara sprites being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithParticleSprites [Indicates that the material and its instances can be used with particle sprites
This will result in the shaders required to support particle sprites being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithSkeletalMesh [Indicates that the material and its instances can be used with skeletal meshes.
This will result in the shaders required to support skeletal meshes being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithSplineMeshes [Indicates that the material and its instances can be used with spline meshes
This will result in the shaders required to support spline meshes being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithStaticLighting [Indicates that the material and its instances can be used with static lighting
This will result in the shaders required to support static lighting being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithStaticMesh [Indicates that the material and its instances can be used on StaticMeshes, which is true by default on all Materials
This can be used to remove shaders which are not required, reducing shader compile time and memory usage]`
- `bool bUsedWithVirtualHeightfieldMesh [Indicates that the material and its instances can be used with Virtual Heightfield Mesh.
This will result in the shaders required to support Virtual Heightfield Mesh geometries being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithVolumetricCloud [Indicates that the material and its instances with volumetric cloud. Without that flag, it can only be used on volumetric fog.
This will result in the shaders required to support Volumetric Cloud rendering being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithVoxels [Indicates that the material and its instances can be used with Nanite voxel meshes.
This will result in the shaders required to support Nanite voxels being compiled which will increase shader compile time and memory usage.]`
- `bool bUsedWithWater [Indicates that the material and its instances can be use with water
This will result in the shaders required to support water meshes being compiled which will increase shader compile time and memory usage.]`
- `bool bWriteOnlyAlpha [Whether the transluency pass should write its alpha, and only the alpha, into the framebuffer]`

---

