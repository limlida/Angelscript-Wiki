### FLightmassPrimitiveSettings


Per-object settings for Lightmass

**属性**:

- `float32 DiffuseBoost [Scales the diffuse contribution of all materials applied to this object.]`
- `float32 EmissiveBoost [Scales the emissive contribution of all materials applied to this object.]`
- `float32 FullyOccludedSamplesFraction [Fraction of samples taken that must be occluded in order to reach full occlusion.]`
- `bool bShadowIndirectOnly [If true, this object will only shadow indirect lighting.]`
- `bool bUseEmissiveForStaticLighting [If true, allow using the emissive for static lighting.]`
- `bool bUseTwoSidedLighting [If true, this object will be lit as if it receives light from both sides of its polygons.]`
- `bool bUseVertexNormalForHemisphereGather [Typically the triangle normal is used for hemisphere gathering which prevents incorrect self-shadowing from artist-tweaked vertex normals.
However in the case of foliage whose vertex normal has been setup to match the underlying terrain, gathering in the direction of the vertex normal is desired.]`


**方法**:

- `FLightmassPrimitiveSettings& opAssign(FLightmassPrimitiveSettings Other)`

---

