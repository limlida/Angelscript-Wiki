### UVolumetricCloudComponent


A component that represents a participating media material around a planet, e.g. clouds.

**属性**:

- `float32 AerialPespectiveMieScatteringFadeDistance [Specify the distance over which the Rayleigh scattering will linearly ramp up to full effect. (kilometers)]`
- `float32 AerialPespectiveMieScatteringStartDistance [Specify the aerial perspective start distance on cloud for Mie scattering only. (kilometers)]`
- `float32 AerialPespectiveRayleighScatteringFadeDistance [Specify the distance over which the Rayleigh scattering will linearly ramp up to full effect. (kilometers)]`
- `float32 AerialPespectiveRayleighScatteringStartDistance [Specify the aerial perspective start distance on cloud for Rayleigh scattering only. (kilometers)]`
- `FColor GroundAlbedo [The ground albedo used to light the cloud from below with respect to the sun light and sky atmosphere.
This is only used by the cloud material when the 'Volumetric Advanced' node have GroundContribution enabled.]`
- `float32 LayerBottomAltitude [The altitude at which the cloud layer starts. (kilometers above the ground)]`
- `float32 LayerHeight [The height of the the cloud layer. (kilometers above the layer bottom altitude)]`
- `TSoftObjectPtr<UMaterialInterface> Material [The material describing the cloud volume. It must be a Volume domain material.]`
- `float32 PlanetRadius [The planet radius used when there is not SkyAtmosphere component present in the scene.]`
- `float32 ReflectionViewSampleCountScaleValue [Scale the tracing sample count in reflection views. Quality level scalability CVARs affect the maximum range.
The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.ReflectionRaySampleMaxCount'.]`
- `float32 ShadowReflectionViewSampleCountScaleValue [Scale the shadow tracing sample count in reflection views, only used with Advanced Output ray marched shadows. Quality level scalability CVARs affect the maximum range.
The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.Shadow.ReflectionRaySampleMaxCount'.]`
- `float32 ShadowTracingDistance [The shadow tracing distance in kilometers, only used with Advanced Output ray marched shadows.]`
- `float32 ShadowViewSampleCountScale [Scale the shadow tracing sample count in primary views, only used with Advanced Output ray marched shadows. Quality level scalability CVARs affect the maximum range.
The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.Shadow.ViewRaySampleMaxCount'.]`
- `float32 SkyLightCloudBottomOcclusion [Occlude the sky light contribution at the bottom of the cloud layer. This is a fast approximation to sky lighting being occluded by cloud without having to trace rays or sample AO texture. Ignored if the cloud material explicitely sets the ambient occlusion value.]`
- `float32 StopTracingTransmittanceThreshold [When the mean transmittance is below this threshold, we stop tracing. This is a good way to reduce the ray marched sample count, and thus to increase performance.]`
- `float32 TracingMaxDistance [The maximum distance that will be traced inside the cloud layer. (kilometers)]`
- `EVolumetricCloudTracingMaxDistanceMode TracingMaxDistanceMode [Mode to select how the tracing max distance should be interpreted. DistanceFromPointOfView is useful to avoid the top of the cloud layer to be clipped when TracingMaxDistance is shorten for performance.]`
- `float32 TracingStartDistanceFromCamera [The distance from which the tracing will start. This is useful when the camera for instance is inside the layer of cloud. (kilometers)]`
- `float32 TracingStartMaxDistance [The maximum distance of the volumetric surface, i.e. cloud layer upper and lower bound, before which we will accept to start tracing. (kilometers)]`
- `float32 ViewSampleCountScale [Scale the tracing sample count in primary views. Quality level scalability CVARs affect the maximum range.
The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.ViewRaySampleCountMax'.]`
- `bool bHoldout [If this is True, this primitive will render black with an alpha of 0, but all secondary effects (shadows, reflections, indirect lighting) remain. This feature requires activating the project setting(s) "Alpha Output", and "Support Primitive Alpha Holdout" if using the deferred renderer.]`
- `bool bRenderInMainPass [If true, this component will be rendered in the main pass (basepass, transparency)]`
- `bool bUsePerSampleAtmosphericLightTransmittance [Whether to apply atmosphere transmittance per sample, instead of using the light global transmittance.]`
- `bool bVisibleInRealTimeSkyCaptures [If true, this component will be visible in real-time sky light reflection captures.]`


**方法**:

- `SetbUsePerSampleAtmosphericLightTransmittance(bool NewValue)`
- `SetGroundAlbedo(FColor NewValue)`
- `SetHoldout(bool bNewHoldout)`
- `SetLayerBottomAltitude(float32 NewValue)`
- `SetLayerHeight(float32 NewValue)`
- `SetMaterial(UMaterialInterface NewValue)`
- `SetPlanetRadius(float32 NewValue)`
- `SetReflectionViewSampleCountScale(float32 NewValue)`
- `SetRenderInMainPass(bool bValue)`
- `SetShadowReflectionViewSampleCountScale(float32 NewValue)`
- `SetShadowTracingDistance(float32 NewValue)`
- `SetShadowViewSampleCountScale(float32 NewValue)`
- `SetSkyLightCloudBottomOcclusion(float32 NewValue)`
- `SetStopTracingTransmittanceThreshold(float32 NewValue)`
- `SetTracingMaxDistance(float32 NewValue)`
- `SetTracingStartDistanceFromCamera(float32 NewValue)`
- `SetTracingStartMaxDistance(float32 NewValue)`
- `SetViewSampleCountScale(float32 NewValue)`
- `SetVisibleInRealTimeSkyCaptures(bool bValue)`

---

