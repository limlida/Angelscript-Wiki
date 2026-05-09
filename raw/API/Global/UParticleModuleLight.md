### UParticleModuleLight


**属性**:

- `FRawDistributionFloat BrightnessOverLife [Brightness scale for the light, which can be setup as a curve over the particle's lifetime.]`
- `FRawDistributionVector ColorScaleOverLife [Scale that is applied to the particle's color to calculate the light's color, and can be setup as a curve over the particle's lifetime.]`
- `float32 InverseExposureBlend [Blend Factor used to blend between Intensity and Intensity/Exposure.
This is useful for gameplay lights that should have constant brighness on screen independent of current exposure.
This feature can cause issues with exposure particularly when used on the primary light on a scene, as such it's usage should be limited.]`
- `FRawDistributionFloat LightExponent [Provides the light's exponent when inverse squared falloff is disabled.]`
- `FLightingChannels LightingChannels [Channels that this light should affect.
Only affect high quality lights
These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.]`
- `FRawDistributionFloat RadiusScale [Scales the particle's radius, to calculate the light's radius.]`
- `float32 SpawnFraction [Fraction of particles in this emitter to create lights on.]`
- `float32 VolumetricScatteringIntensity [Intensity of the volumetric scattering from this light.  This scales Intensity and LightColor.]`
- `bool bAffectsTranslucency [Whether lights from this module should affect translucency.
Use with caution.  Modules enabling this should only make a few particle lights at most, and the smaller they are, the less they will cost.]`
- `bool bHighQualityLights [Converts the particle lights into high quality lights as if they came from a PointLightComponent.  High quality lights cost significantly more on both CPU and GPU.]`
- `bool bOverrideInverseExposureBlend [When enabled we will override the project default setting with our local setting.]`
- `bool bPreviewLightRadius [Will draw wireframe spheres to preview the light radius if enabled.
Note: this is intended for previewing and the value will not be saved, it will always revert to disabled.]`
- `bool bShadowCastingLights [Whether to cast shadows from the particle lights.  Requires High Quality Lights to be enabled.
Warning: This can be incredibly expensive on the GPU - use with caution.]`
- `bool bUseInverseSquaredFalloff [Whether to use physically based inverse squared falloff from the light.  If unchecked, the LightExponent distribution will be used instead.]`

---

