### FLiveLinkLightFrameData


Dynamic data for light.

**属性**:

- `float32 AttenuationRadius [Light visible influence. Works for Pointlight and Spotlight.]`
- `float32 InnerConeAngle [Inner cone angle in degrees for a Spotlight.]`
- `float32 Intensity [Total energy that the light emits in lux.]`
- `FColor LightColor [Filter color of the light.]`
- `FLiveLinkMetaData MetaData [Frame's metadata.]`
- `float32 OuterConeAngle [Outer cone angle in degrees for a Spotlight.]`
- `TArray<float32> PropertyValues [Values of the properties defined in the static structure. Use FLiveLinkBaseStaticData.FindPropertyValue to evaluate.]`
- `float32 SoftSourceRadius [Soft radius of light source shape. Works for Pointlight and Spotlight.]`
- `float32 SourceLength [Length of light source shape. Works for Pointlight and Spotlight.]`
- `float32 SourceRadius [Radius of light source shape. Works for Pointlight and Spotlight.]`
- `float32 Temperature [Color temperature in Kelvin of the blackbody illuminant]`
- `FTransform Transform [Transform of the frame]`


**方法**:

- `FLiveLinkLightFrameData& opAssign(FLiveLinkLightFrameData Other)`

---

