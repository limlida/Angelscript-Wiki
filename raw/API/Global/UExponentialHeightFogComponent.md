### UExponentialHeightFogComponent


Used to create fogging effects such as clouds but with a density that is related to the height of the fog.

**属性**:

- `float32 DirectionalInscatteringExponent [Controls the size of the directional inscattering cone, which is used to approximate inscattering from a directional light.
Note:
  - there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.
  - When r.SupportExpFogMatchesVolumetricFog = 1, this value is ignored and the volumetric fog Scattering Distribution is used instead.]`
- `FLinearColor DirectionalInscatteringLuminance [Controls the color of the directional inscattering, which is used to approximate inscattering from a directional light.
Note:
  - there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.
  - When r.SupportExpFogMatchesVolumetricFog = 1, this value is ignored.]`
- `float32 DirectionalInscatteringStartDistance [Controls the start distance from the viewer of the directional inscattering, which is used to approximate inscattering from a directional light.
Note:
  - There must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.
  - When r.SupportExpFogMatchesVolumetricFog = 1, this value is ignored.]`
- `float32 EndDistance [Distance from the camera, on the horizontal XY plane, that the fog will end integrating the lighting and transmittance. Disabled when 0.]`
- `float32 FogCutoffDistance [Scene elements past this distance will not have fog applied.  This is useful for excluding skyboxes which already have fog baked in.]`
- `float32 FogDensity [Global density factor.]`
- `float32 FogHeightFalloff [Height density factor, controls how the density increases as height decreases.
Smaller values make the visible transition larger.]`
- `FLinearColor FogInscatteringLuminance [Note: when r.SupportExpFogMatchesVolumetricFog = 1, this value is ignored and the volumetric fog Emissive is used instead.]`
- `float32 FogMaxOpacity [Maximum opacity of the fog.
A value of 1 means the fog can become fully opaque at a distance and replace scene color completely,
A value of 0 means the fog color will not be factored in at all.]`
- `float32 FullyDirectionalInscatteringColorDistance [Distance at which InscatteringColorCubemap should be used directly for the Inscattering Color.]`
- `UTextureCube InscatteringColorCubemap [Cubemap that can be specified for fog color, which is useful to make distant, heavily fogged scene elements match the sky.
When the cubemap is specified, FogInscatteringColor is ignored and Directional inscattering is disabled.]`
- `float32 InscatteringColorCubemapAngle [Angle to rotate the InscatteringColorCubemap around the Z axis.]`
- `FLinearColor InscatteringTextureTint [Tint color used when InscatteringColorCubemap is specified, for quick edits without having to reimport InscatteringColorCubemap.]`
- `float32 NonDirectionalInscatteringColorDistance [Distance at which only the average color of InscatteringColorCubemap should be used as Inscattering Color.]`
- `FExponentialHeightFogData SecondFogData [Settings for the second fog. Setting the density of this to 0 means it doesn't have any influence.]`
- `FLinearColor SkyAtmosphereAmbientContributionColorScale [Color used to modulate the SkyAtmosphere component contribution to the non directional component of the fog. Only effective when r.SupportSkyAtmosphereAffectsHeightFog>0]`
- `float32 StartDistance [Distance from the camera that the fog will start, in world units.]`
- `FColor VolumetricFogAlbedo [The height fog particle reflectiveness used by volumetric fog.
Water particles in air have an albedo near white, while dust has slightly darker value.]`
- `float32 VolumetricFogDistance [Distance over which volumetric fog should be computed, after the start distance.  Larger values extend the effect into the distance but expose under-sampling artifacts in details.]`
- `FLinearColor VolumetricFogEmissive [Light emitted by height fog.  This is a density so more light is emitted the further you are looking through the fog.
In most cases skylight is a better choice, however right now volumetric fog does not support precomputed lighting,
So stationary skylights are unshadowed and static skylights don't affect volumetric fog at all.]`
- `float32 VolumetricFogExtinctionScale [Scales the height fog particle extinction amount used by volumetric fog.  Values larger than 1 cause fog particles everywhere absorb more light.]`
- `float32 VolumetricFogNearFadeInDistance [Distance over which volumetric fog will fade in from the start distance.]`
- `float32 VolumetricFogScatteringDistribution [Controls the scattering phase function - how much incoming light scatters in various directions.
A distribution value of 0 scatters equally in all directions, while .9 scatters predominantly in the light direction.
In order to have visible volumetric fog light shafts from the side, the distribution will need to be closer to 0.]`
- `float32 VolumetricFogStartDistance [Distance from the camera that the volumetric fog will start, in world units.]`
- `float32 VolumetricFogStaticLightingScatteringIntensity`
- `bool bEnableVolumetricFog [Whether to enable Volumetric fog.  Scalability settings control the resolution of the fog simulation.
Note that Volumetric fog currently does not support StartDistance, FogMaxOpacity and FogCutoffDistance.
Volumetric fog also can't match exponential height fog in general as exponential height fog has non-physical behavior.]`
- `bool bHoldout [If this is True, this primitive will render black with an alpha of 0, but all secondary effects (shadows, reflections, indirect lighting) remain. This feature requires activating the project setting(s) "Alpha Output", and "Support Primitive Alpha Holdout" if using the deferred renderer.]`
- `bool bOverrideLightColorsWithFogInscatteringColors [Whether to use FogInscatteringColor for the Sky Light volumetric scattering color and DirectionalInscatteringColor for the Directional Light scattering color.
Make sure your directional light has 'Atmosphere Sun Light' enabled!
Enabling this allows Volumetric fog to better match Height fog in the distance, but produces non-physical volumetric lighting that may not match surface lighting.]`
- `bool bRenderInMainPass [If true, this component will be rendered in the main pass (basepass, transparency)]`
- `bool bVisibleInRealTimeSkyCaptures [If true, this component will be visible in real-time sky light reflection captures.]`
- `bool bVisibleInReflectionCaptures [If true, this component will be visible in reflection captures.]`


**方法**:

- `SetDirectionalInscatteringColor(FLinearColor Value)`
- `SetDirectionalInscatteringExponent(float32 Value)`
- `SetDirectionalInscatteringStartDistance(float32 Value)`
- `SetEndDistance(float32 Value)`
- `SetFogCutoffDistance(float32 Value)`
- `SetFogDensity(float32 Value)`
- `SetFogHeightFalloff(float32 Value)`
- `SetFogInscatteringColor(FLinearColor Value)`
- `SetFogMaxOpacity(float32 Value)`
- `SetFullyDirectionalInscatteringColorDistance(float32 Value)`
- `SetHoldout(bool bNewHoldout)`
- `SetInscatteringColorCubemap(UTextureCube Value)`
- `SetInscatteringColorCubemapAngle(float32 Value)`
- `SetInscatteringTextureTint(FLinearColor Value)`
- `SetNonDirectionalInscatteringColorDistance(float32 Value)`
- `SetRenderInMainPass(bool bValue)`
- `SetSecondFogData(FExponentialHeightFogData NewValue)`
- `SetSecondFogDensity(float32 Value)`
- `SetSecondFogHeightFalloff(float32 Value)`
- `SetSecondFogHeightOffset(float32 Value)`
- `SetSkyAtmosphereAmbientContributionColorScale(FLinearColor NewValue)`
- `SetStartDistance(float32 Value)`
- `SetVolumetricFog(bool bNewValue)`
- `SetVolumetricFogAlbedo(FColor NewValue)`
- `SetVolumetricFogDistance(float32 NewValue)`
- `SetVolumetricFogEmissive(FLinearColor NewValue)`
- `SetVolumetricFogExtinctionScale(float32 NewValue)`
- `SetVolumetricFogNearFadeInDistance(float32 NewValue)`
- `SetVolumetricFogScatteringDistribution(float32 NewValue)`
- `SetVolumetricFogStartDistance(float32 NewValue)`

---

