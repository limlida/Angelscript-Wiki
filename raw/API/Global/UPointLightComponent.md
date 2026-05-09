### UPointLightComponent


A light component which emits light from a single point equally in all directions.

**属性**:

- `float32 LightFalloffExponent [Controls the radial falloff of the light when UseInverseSquaredFalloff is disabled.
2 is almost linear and very unrealistic and around 8 it looks reasonable.
With large exponents, the light has contribution to only a small area of its influence radius but still costs the same as low exponents.]`
- `float32 SoftSourceRadius [Soft radius of light source shape.
Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.]`
- `float32 SourceLength [Length of light source shape.
Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.]`
- `float32 SourceRadius [Radius of light source shape.
Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.]`
- `bool bUseInverseSquaredFalloff [Whether to use physically based inverse squared distance falloff, where AttenuationRadius is only clamping the light's contribution.
Disabling inverse squared falloff can be useful when placing fill lights (don't want a super bright spot near the light).
When enabled, the light's Intensity is in units of lumens, where 1700 lumens is a 100W lightbulb.
When disabled, the light's Intensity is a brightness scale.]`


**方法**:

- `SetInverseExposureBlend(float32 NewInverseExposureBlend)`
- `SetLightFalloffExponent(float32 NewLightFalloffExponent)`
- `SetSoftSourceRadius(float32 bNewValue)`
- `SetSourceLength(float32 NewValue)`
- `SetSourceRadius(float32 bNewValue)`
- `SetUseInverseSquaredFalloff(bool bNewValue)`

---

