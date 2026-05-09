### ULocalLightComponent


A light component which emits light from a single point equally in all directions.

**属性**:

- `float32 AttenuationRadius [Bounds the light's visible influence.
This clamping of the light's influence is not physically correct but very important for performance, larger lights cost more.]`
- `ELightUnits IntensityUnits [Units used for the intensity.
The peak luminous intensity is measured in candelas, while the luminous flux is measured in lumens.
When the units are set in Nits, the light's power is also determined by the size of the light source (larger sources will emit more light).]`
- `float32 InverseExposureBlend [Blend Factor used to blend between Intensity and Intensity/Exposure.
This is useful for gameplay lights that should have constant brighness on screen independent of current exposure.
This feature can cause issues with exposure particularly when used on the primary light on a scene, as such it's usage should be limited.]`
- `FLightmassPointLightSettings LightmassSettings [The Lightmass settings for this object.]`


**方法**:

- `SetAttenuationRadius(float32 NewRadius)`
- `SetIntensityUnits(ELightUnits NewIntensityUnits)`  
  Set the units used for the intensity of the light

---

