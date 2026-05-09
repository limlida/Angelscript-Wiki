### USkyAtmosphereComponent


A component that represents a planet atmosphere material and simulates sky and light scattering within it.
@see https://docs.unrealengine.com/en-US/Engine/Actors/FogEffects/SkyAtmosphere/index.html

**属性**:

- `float32 AerialPerspectiveStartDepth [The distance (kilometers) at which we start evaluating the aerial perspective. Having the aerial perspective starts away from the camera can help with performance: pixels not affected by the aerial perspective will have their computation skipped using early depth test.]`
- `float32 AerialPespectiveViewDistanceScale [Makes the aerial perspective look thicker by scaling distances from view to surfaces (opaque and translucent).]`
- `float32 AtmosphereHeight [The height of the atmosphere layer above the ground in kilometers.]`
- `float32 BottomRadius [The radius in kilometers from the center of the planet to the ground level.]`
- `FColor GroundAlbedo [The ground albedo that will tint the atmosphere when the sun light will bounce on it. Only taken into account when MultiScattering>0.0.]`
- `float32 HeightFogContribution [Scale the sky and atmosphere lights contribution to the height fog when SupportSkyAtmosphereAffectsHeightFog project setting is true.]`
- `FLinearColor MieAbsorption [The Mie absorption coefficients resulting from particles in the air at an altitude of 0 kilometer. As it becomes higher, light will be absorbed more.]`
- `float32 MieAbsorptionScale [Mie absorption coefficient scale.]`
- `float32 MieAnisotropy [A value of 0 mean light is uniformly scattered. A value closer to 1 means lights will scatter more forward, resulting in halos around light sources.]`
- `float32 MieExponentialDistribution [The altitude in kilometer at which Mie effects are reduced to 40%.]`
- `FLinearColor MieScattering [The Mie scattering coefficients resulting from particles in the air at an altitude of 0 kilometer. As it becomes higher, light will be scattered more.]`
- `float32 MieScatteringScale [Mie scattering coefficient scale.]`
- `float32 MultiScatteringFactor [Factor applied to multiple scattering only (after the sun light has bounced around in the atmosphere at least once).
Multiple scattering is evaluated using a dual scattering approach.
A value of 2 is recommended to better represent default atmosphere when r.SkyAtmosphere.MultiScatteringLUT.HighQuality=0.]`
- `FLinearColor OtherAbsorption [Absorption coefficients for another atmosphere layer. Density increase from 0 to 1 between 10 to 25km and decreases from 1 to 0 between 25 to 40km. The default values represents ozone molecules absorption in the Earth atmosphere.]`
- `float32 OtherAbsorptionScale [Absorption coefficients for another atmosphere layer. Density increase from 0 to 1 between 10 to 25km and decreases from 1 to 0 between 25 to 40km. This approximates ozone molecules distribution in the Earth atmosphere.]`
- `FTentDistribution OtherTentDistribution [Represents the altitude based tent distribution of absorption particles in the atmosphere.]`
- `float32 RayleighExponentialDistribution [The altitude in kilometer at which Rayleigh scattering effect is reduced to 40%.]`
- `FLinearColor RayleighScattering [The Rayleigh scattering coefficients resulting from molecules in the air at an altitude of 0 kilometer.]`
- `float32 RayleighScatteringScale [Rayleigh scattering coefficient scale.]`
- `FLinearColor SkyAndAerialPerspectiveLuminanceFactor [Scales the luminance of pixels representing the sky and the aerial perspective. This will impact the captured sky light.]`
- `FLinearColor SkyLuminanceFactor [Scales the luminance of pixels representing the sky. This will impact the captured sky light.]`
- `float32 TraceSampleCountScale [Scale the atmosphere tracing sample count. Quality level scalability
The sample count is still clamped according to scalability setting to 'r.SkyAtmosphere.SampleCountMax' when 'r.SkyAtmosphere.FastSkyLUT' is 0.
The sample count is still clamped according to scalability setting to 'r.SkyAtmosphere.FastSkyLUT.SampleCountMax' when 'r.SkyAtmosphere.FastSkyLUT' is 1.
The sample count is still clamped for aerial perspective according to  'r.SkyAtmosphere.AerialPerspectiveLUT.SampleCountMaxPerSlice'.]`
- `ESkyAtmosphereTransformMode TransformMode [The ground albedo that will tint the atmosphere when the sun light will bounce on it. Only taken into account when MultiScattering>0.0.]`
- `float32 TransmittanceMinLightElevationAngle [The minimum elevation angle in degree that should be used to evaluate the sun transmittance to the ground. Useful to maintain a visible sun light and shadow on meshes even when the sun has started going below the horizon. This does not affect the aerial perspective.]`
- `bool bHoldout [If this is True, this primitive will render black with an alpha of 0, but all secondary effects (shadows, reflections, indirect lighting) remain. This feature requires activating the project setting(s) "Alpha Output", and "Support Primitive Alpha Holdout" if using the deferred renderer.]`
- `bool bRenderInMainPass [If true, this component will be rendered in the main pass (basepass, transparency)]`


**方法**:

- `FLinearColor GetAtmosphereTransmitanceOnGroundAtPlanetTop(UDirectionalLightComponent DirectionalLight)`
- `float32 GetAtmosphericLightToMatchIlluminanceOnGround(FVector LightDirection = FVector ( 0.000000 , 0.000000 , 1.000000 ), float32 IlluminanceOnGround = 1.000000)`  
  This function can be used for instance in order to evaluate a directional atmospheric light outer space illuminance for a desired illuminance on ground given a direction.
This is given for the position at the top of the virtual planet. Plus the output outer space illuminance into the light intensity.
- `FVector GetOverridenAtmosphereLightDirection(int AtmosphereLightIndex)`
- `bool IsAtmosphereLightDirectionOverriden(int AtmosphereLightIndex)`
- `OverrideAtmosphereLightDirection(int AtmosphereLightIndex, FVector LightDirection)`
- `ResetAtmosphereLightDirectionOverride(int AtmosphereLightIndex)`
- `SetAerialPerspectiveStartDepth(float32 NewValue)`
- `SetAerialPespectiveViewDistanceScale(float32 NewValue)`
- `SetAtmosphereHeight(float32 NewValue)`
- `SetBottomRadius(float32 NewValue)`
- `SetGroundAlbedo(FColor NewValue)`
- `SetHeightFogContribution(float32 NewValue)`
- `SetHoldout(bool bNewHoldout)`
- `SetMieAbsorption(FLinearColor NewValue)`
- `SetMieAbsorptionScale(float32 NewValue)`
- `SetMieAnisotropy(float32 NewValue)`
- `SetMieExponentialDistribution(float32 NewValue)`
- `SetMieScattering(FLinearColor NewValue)`
- `SetMieScatteringScale(float32 NewValue)`
- `SetMultiScatteringFactor(float32 NewValue)`
- `SetOtherAbsorption(FLinearColor NewValue)`
- `SetOtherAbsorptionScale(float32 NewValue)`
- `SetRayleighExponentialDistribution(float32 NewValue)`
- `SetRayleighScattering(FLinearColor NewValue)`
- `SetRayleighScatteringScale(float32 NewValue)`
- `SetRenderInMainPass(bool bValue)`
- `SetSkyAndAerialPerspectiveLuminanceFactor(FLinearColor NewValue)`
- `SetSkyLuminanceFactor(FLinearColor NewValue)`
- `SetTransmittanceMinLightElevationAngle(float32 NewValue)`

---

