### FLightmassDirectionalLightSettings


Directional light settings for Lightmass

**属性**:

- `float32 IndirectLightingSaturation [0 will be completely desaturated, 1 will be unchanged]`
- `float32 LightSourceAngle [Angle that the directional light's emissive surface extends relative to a receiver, affects penumbra sizes.]`
- `float32 ShadowExponent [Controls the falloff of shadow penumbras]`
- `bool bUseAreaShadowsForStationaryLight [Whether to use area shadows for stationary light precomputed shadowmaps.
Area shadows get softer the further they are from shadow casters, but require higher lightmap resolution to get the same quality where the shadow is sharp.]`


**方法**:

- `FLightmassDirectionalLightSettings& opAssign(FLightmassDirectionalLightSettings Other)`

---

