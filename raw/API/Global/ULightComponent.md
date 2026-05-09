### ULightComponent


**属性**:

- `float32 BloomMaxBrightness [After exposure is applied, scene color brightness larger than BloomMaxBrightness will be rescaled down to BloomMaxBrightness.]`
- `float32 BloomScale [Scales the additive color.]`
- `float32 BloomThreshold [Scene color must be larger than this to create bloom in the light shafts.]`
- `FColor BloomTint [Multiplies against scene color to create the bloom color.]`
- `bool CastTranslucentShadows [Whether the light is allowed to cast dynamic shadows from translucency.]`
- `float32 ContactShadowCastingIntensity [Intensity of the shadows cast by primitives with "cast contact shadow" enabled. 0 = no shadow, 1 (default) = fully shadowed.]`
- `float32 ContactShadowLength [Length of screen space ray trace for sharp contact shadows. Zero is disabled.]`
- `bool ContactShadowLengthInWS [Where Length of screen space ray trace for sharp contact shadows is in world space units or in screen space units.]`
- `float32 ContactShadowNonCastingIntensity [Intensity of the shadows cast by primitives with "cast contact shadow" disabled. 0 (default) = no shadow, 1 = fully shadowed.]`
- `float32 DiffuseScale [Multiplier on diffuse lighting. Use only with great care! Any value besides 1 is not physical!]`
- `float32 DisabledBrightness [Brightness factor applied to the light when the light function is specified but disabled, for example in scene captures that use SceneCapView_LitNoShadows.
This should be set to the average brightness of the light function material's emissive input, which should be between 0 and 1.]`
- `float32 IESBrightnessScale [Global scale for IES brightness contribution. Only available when "Use IES Brightness" is selected, and a valid IES profile texture is set]`
- `UTextureLightProfile IESTexture [IES texture (light profiles from real world measured data)]`
- `float32 LightFunctionFadeDistance [Distance at which the light function should be completely faded to DisabledBrightness.
This is useful for hiding aliasing from light functions applied in the distance.]`
- `UMaterialInterface LightFunctionMaterial [The light function material to be applied to this light.
Note that only non-lightmapped lights (UseDirectLightMap=False) can have a light function.
Light functions are supported within VolumetricFog, but only for Directional, Point and Spot lights. Rect lights are not supported.]`
- `FVector LightFunctionScale [Scales the light function projection.  X and Y scale in the directions perpendicular to the light's direction, Z scales along the light direction.]`
- `FLightingChannels LightingChannels [Channels that this light should affect.
These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.
Lighting channels are only supported on translucent materials using forward shading (i.e. when not using the translucency lighting volume).]`
- `float32 MaxDistanceFadeRange [Fade the light out as it approaches MaxDrawDistance. The fading starts when the light is MaxDistanceFadeRange distance away from MaxDrawDistance, where it ends up at 0 for a smooth fade-out without popping. Requires MaxDrawDistance to be set.]`
- `float32 MaxDrawDistance [World distance to where the light stops rendering (lighting & shadows). 0.0 or less means no max draw distance. This can be controlled via a global scalar scalability setting r.LightMaxDrawDistanceScale as well]`
- `EMegaLightsShadowMethod MegaLightsShadowMethod [Selects which shadowing method should MegaLights use for this light.
RayTracing - Preferred method, which guarantees fixed MegaLights cost and correct area shadows, but is dependent on the BVH representation quality.
VirtualShadowMap - Has a significant per light cost, but can cast shadows directly from the Nanite geometry using rasterization.]`
- `float32 RayEndBias`
- `float32 RayStartOffsetDepthScale [Controls how large of an offset ray traced shadows have from the receiving surface as the camera gets further away.
This can be useful to hide self-shadowing artifacts from low resolution distance fields on huge static meshes.]`
- `float32 ShadowBias [Controls how accurate self shadowing of whole scene shadows from this light are.
At 0, shadows will start at the their caster surface, but there will be many self shadowing artifacts.
larger values, shadows will start further from their caster, and there won't be self shadowing artifacts but object might appear to fly.
around 0.5 seems to be a good tradeoff. This also affects the soft transition of shadows]`
- `float32 ShadowResolutionScale [Scales the resolution of shadowmaps used to shadow this light.  By default shadowmap resolution is chosen based on screen size of the caster.
Setting the scale to zero disables shadow maps, but does not disable, e.g., contact shadows.
Note: shadowmap resolution is still clamped by 'r.Shadow.MaxResolution']`
- `float32 ShadowSharpen [Amount to sharpen shadow filtering]`
- `float32 ShadowSlopeBias [Controls how accurate self shadowing of whole scene shadows from this light are. This works in addition to shadow bias, by increasing the
amount of bias depending on the slope of a surface.
At 0, shadows will start at the their caster surface, but there will be many self shadowing artifacts.
larger values, shadows will start further from their caster, and there won't be self shadowing artifacts but object might appear to fly.
around 0.5 seems to be a good tradeoff. This also affects the soft transition of shadows]`
- `float32 SpecularScale [Multiplier on specular highlights. Use only with great care! Any value besides 1 is not physical!
Can be used to artistically remove highlights mimicking polarizing filters or photo touch up.]`
- `float32 Temperature [Color temperature in Kelvin of the blackbody illuminant.
White (D65) is 6500K.]`
- `FViewLightingChannels ViewLightingChannels [View / light masking support.  Controls which views this light should affect.]`
- `bool bAllowMegaLights [Whether to allow this light to use MegaLights, if it is enabled in the project settings or Post Process Volume.
When disabled, the renderer will no longer use stochastic sampling to solve this light's lighting, and will fall back to other shadowing methods, adding significant GPU cost.]`
- `bool bCastShadowsFromCinematicObjectsOnly [Whether the light should only cast shadows from components marked as bCastCinematicShadows.
This is useful for setting up cinematic Movable spotlights aimed at characters and avoiding the shadow depth rendering costs of the background.
Note: this only works with dynamic shadow maps, not with static shadowing or Ray Traced Distance Field shadows.]`
- `bool bEnableLightShaftBloom [Whether to render light shaft bloom from this light.
For directional lights, the color around the light direction will be blurred radially and added back to the scene.
for point lights, the color on pixels closer than the light's SourceRadius will be blurred radially and added back to the scene.]`
- `bool bForceCachedShadowsForMovablePrimitives [Enables cached shadows for movable primitives for this light even if r.shadow.cachedshadowscastfrommovableprimitives is 0]`
- `bool bOverrideRayEndBias`
- `bool bUseIESBrightness [true: take light brightness from IES profile, false: use the light brightness - the maximum light in one direction is used to define no masking. Use with InverseSquareFalloff. Will be disabled if a valid IES profile texture is not supplied.]`
- `bool bUseRayTracedDistanceFieldShadows [Whether to use ray traced distance field area shadows.  The project setting bGenerateMeshDistanceFields must be enabled for this to have effect.
Distance field shadows support area lights so they create soft shadows with sharp contacts.
They have less aliasing artifacts than standard shadowmaps, but inherit all the limitations of distance field representations (only uniform scale, no deformation).
These shadows have a low per-object cost (and don't depend on triangle count) so they are effective for distant shadows from a dynamic sun.]`
- `bool bUseTemperature [false: use white (D65) as illuminant.]`


**方法**:

- `SetAffectTranslucentLighting(bool bNewValue)`
- `SetBloomMaxBrightness(float32 NewValue)`
- `SetBloomScale(float32 NewValue)`
- `SetBloomThreshold(float32 NewValue)`
- `SetBloomTint(FColor NewValue)`
- `SetDiffuseScale(float32 NewValue)`
- `SetEnableLightShaftBloom(bool bNewValue)`
- `SetForceCachedShadowsForMovablePrimitives(bool bNewValue)`
- `SetIESBrightnessScale(float32 NewValue)`
- `SetIESTexture(UTextureLightProfile NewValue)`
- `SetIndirectLightingIntensity(float32 NewIntensity)`
- `SetIntensity(float32 NewIntensity)`  
  Set intensity of the light
- `SetLightColor(FLinearColor NewLightColor, bool bSRGB = true)`  
  Set color of the light
- `SetLightFunctionDisabledBrightness(float32 NewValue)`
- `SetLightFunctionFadeDistance(float32 NewLightFunctionFadeDistance)`
- `SetLightFunctionMaterial(UMaterialInterface NewLightFunctionMaterial)`
- `SetLightFunctionScale(FVector NewLightFunctionScale)`
- `SetLightingChannels(bool bChannel0, bool bChannel1, bool bChannel2)`
- `SetMaxDistanceFadeRange(float32 NewValue)`
- `SetMaxDrawDistance(float32 NewValue)`
- `SetShadowBias(float32 NewValue)`
- `SetShadowSlopeBias(float32 NewValue)`
- `SetSpecularScale(float32 NewValue)`
- `SetTemperature(float32 NewTemperature)`
- `SetTransmission(bool bNewValue)`
- `SetUseIESBrightness(bool bNewValue)`
- `SetUseRayTracedDistanceFieldShadows(bool bNewValue)`
- `SetUseTemperature(bool bNewValue)`
- `SetVolumetricScatteringIntensity(float32 NewIntensity)`

---

