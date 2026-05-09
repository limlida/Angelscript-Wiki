### USkyLightComponent


**属性**:

- `float32 CloudAmbientOcclusionApertureScale [Controls the cone aperture angle over which the sky occlusion due to volumetric clouds is evaluated. A value of 1 means `take into account the entire hemisphere` resulting in blurry occlusion, while a value of 0 means `take into account a single up occlusion direction up` resulting in sharp occlusion.]`
- `float32 CloudAmbientOcclusionExtent [The world space radius of the cloud ambient occlusion map around the camera in kilometers.]`
- `float32 CloudAmbientOcclusionMapResolutionScale [Scale the cloud ambient occlusion map resolution, base resolution is 512. The resolution is still clamped to 'r.VolumetricCloud.SkyAO.MaxResolution'.]`
- `float32 CloudAmbientOcclusionStrength [The strength of the ambient occlusion, higher value will block more light.]`
- `float32 Contrast [Contrast S-curve applied to the computed AO.  A value of 0 means no contrast increase, 1 is a significant contrast increase.]`
- `UTextureCube Cubemap [Cubemap to use for sky lighting if SourceType is set to SLS_SpecifiedCubemap.]`
- `int CubemapResolution [Maximum resolution for the very top processed cubemap mip. Must be a power of 2.]`
- `FLinearColor LowerHemisphereColor`
- `float32 MinOcclusion [Controls the darkest that a fully occluded area can get.  This tends to destroy contact shadows, use Contrast or OcclusionExponent instead.]`
- `EOcclusionCombineMode OcclusionCombineMode [Controls how occlusion from Distance Field Ambient Occlusion is combined with Screen Space Ambient Occlusion.]`
- `float32 OcclusionExponent [Exponent applied to the computed AO.  Values lower than 1 brighten occlusion overall without losing contact shadows.]`
- `float32 OcclusionMaxDistance [Max distance that the occlusion of one point will affect another.
Higher values increase the cost of Distance Field AO exponentially.]`
- `FColor OcclusionTint [Tint color on occluded areas, artistic control.]`
- `float32 SkyDistanceThreshold [Distance from the sky light at which any geometry should be treated as part of the sky.
This is also used by reflection captures, so update reflection captures to see the impact.]`
- `float32 SourceCubemapAngle [Angle to rotate the source cubemap when SourceType is set to SLS_SpecifiedCubemap.]`
- `ESkyLightSourceType SourceType [Indicates where to get the light contribution from.]`
- `bool bCaptureEmissiveOnly [Only capture emissive materials. Skips all lighting making the capture cheaper. Recomended when using CaptureEveryFrame]`
- `bool bCloudAmbientOcclusion [Whether the cloud should occlude sky contribution within the atmosphere (progressively fading multiple scattering out) or not.]`
- `bool bLowerHemisphereIsBlack [Whether all distant lighting from the lower hemisphere should be set to LowerHemisphereColor.
Enabling this is accurate when lighting a scene on a planet where the ground blocks the sky,
However disabling it can be useful to approximate skylight bounce lighting (eg Movable light).]`
- `bool bRealTimeCapture [When enabled, the sky will be captured and convolved to achieve dynamic diffuse and specular environment lighting.
SkyAtmosphere, VolumetricCloud Components as well as sky domes with Sky materials are taken into account.]`


**方法**:

- `RecaptureSky()`  
  Recaptures the scene for the skylight.
This is useful for making sure the sky light is up to date after changing something in the world that it would capture.
Warning: this is very costly and will definitely cause a hitch.
- `SetCubemap(UTextureCube NewCubemap)`  
  Sets the cubemap used when SourceType is set to SpecifiedCubemap, and causes a skylight update on the next tick.
- `SetCubemapBlend(UTextureCube SourceCubemap, UTextureCube DestinationCubemap, float32 InBlendFraction)`  
  Creates sky lighting from a blend between two cubemaps, which is only valid when SourceType is set to SpecifiedCubemap.
This can be used to seamlessly transition sky lighting between different times of day.
The caller should continue to update the blend until BlendFraction is 0 or 1 to reduce rendering cost.
The caller is responsible for avoiding pops due to changing the source or destination.
- `SetIndirectLightingIntensity(float32 NewIntensity)`
- `SetIntensity(float32 NewIntensity)`
- `SetLightColor(FLinearColor NewLightColor)`  
  Set color of the light
- `SetLowerHemisphereColor(FLinearColor InLowerHemisphereColor)`
- `SetMinOcclusion(float32 InMinOcclusion)`
- `SetOcclusionContrast(float32 InOcclusionContrast)`
- `SetOcclusionExponent(float32 InOcclusionExponent)`
- `SetOcclusionTint(FColor InTint)`
- `SetRealTimeCapture(bool bInRealTimeCapture)`
- `SetSourceCubemapAngle(float32 NewValue)`  
  Sets the angle of the cubemap used when SourceType is set to SpecifiedCubemap and it is non static. It will cause the skylight to update on the next tick.
- `SetVolumetricScatteringIntensity(float32 NewIntensity)`

---

