### ULightComponentBase


**属性**:

- `bool CastDynamicShadows [Whether the light should cast shadows from dynamic objects.  Also requires Cast Shadows to be set to True.]`
- `ECastRayTracedShadow CastRaytracedShadow`
- `bool CastShadows [Whether the light should cast any shadows.]`
- `bool CastStaticShadows [Whether the light should cast shadows from static objects.  Also requires Cast Shadows to be set to True.]`
- `float32 DeepShadowLayerDistribution [Change the deep shadow layers distribution 0:linear distribution (uniform layer distribution), 1:exponential (more details on near small details).]`
- `float32 IndirectLightingIntensity [Scales the indirect lighting contribution from this light.
A value of 0 disables any GI from this light. Default is 1.]`
- `float32 Intensity [Total energy that the light emits.]`
- `FColor LightColor [Filter color of the light.
Note that this can change the light's effective intensity.]`
- `int SamplesPerPixel [Samples per pixel for ray tracing]`
- `float32 VolumetricScatteringIntensity [Intensity of the volumetric scattering from this light.  This scales Intensity and LightColor.]`
- `bool bAffectGlobalIllumination [Whether the light affects global illumination, when ray-traced global illumination is enabled.]`
- `bool bAffectReflection [Whether the light affects objects in reflections, when ray-traced reflection is enabled.]`
- `bool bAffectTranslucentLighting [Whether the light affects translucency or not.  Disabling this can save GPU time when there are many small lights.]`
- `bool bAffectsWorld [Whether the light can affect the world, or whether it is disabled.
A disabled light will not contribute to the scene in any way.  This setting cannot be changed at runtime and unbuilds lighting when changed.
Setting this to false has the same effect as deleting the light, so it is useful for non-destructive experiments.]`
- `bool bCastDeepShadow [Whether the light should cast high quality hair-strands self-shadowing. When this option is enabled, an extra GPU cost for this light.]`
- `bool bCastVolumetricShadow [Whether the light shadows volumetric fog.  Disabling this can save GPU time.]`
- `bool bTransmission [Whether light from this light transmits through surfaces with subsurface scattering profiles. Requires light to be movable.]`


**方法**:

- `FLinearColor GetLightColor() const`  
  Gets the light color as a linear color
- `SetAffectGlobalIllumination(bool bNewValue)`
- `SetAffectReflection(bool bNewValue)`
- `SetCastDeepShadow(bool bNewValue)`
- `SetCastRaytracedShadows(ECastRayTracedShadow bNewValue)`
- `SetCastShadows(bool bNewValue)`  
  Sets whether this light casts shadows
- `SetCastVolumetricShadow(bool bNewValue)`
- `SetSamplesPerPixel(int NewValue)`

---

