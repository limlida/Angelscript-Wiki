### FHairGroupDesc


Note: If a new field is added to this struct, think to update GroomComponentDestailsCustomization.cpp to handle override flags

**属性**:

- `float32 HairLengthScale [When enabled, Length Scale allow to scale the length of the hair.]`
- `bool HairLengthScale_Override`
- `float32 HairRaytracingRadiusScale [Scale the hair geometry radius for ray tracing effects (e.g. shadow)]`
- `bool HairRaytracingRadiusScale_Override`
- `float32 HairRootScale [Scale the hair width at the root]`
- `bool HairRootScale_Override`
- `float32 HairShadowDensity [Override the hair shadow density factor (unit less).]`
- `bool HairShadowDensity_Override`
- `float32 HairTipScale [Scale the hair width at the tip]`
- `bool HairTipScale_Override`
- `float32 HairWidth [Hair width (in centimeters)]`
- `bool HairWidth_Override`
- `float32 LODBias [Bias the selected LOD. A value >0 will progressively select lower detailed lods. Used when r.HairStrands.Cluster.Culling = 1.]`
- `bool bScatterSceneLighting [Light hair with the scene color. This is used for vellus/short hair to bring light from the surrounding surface, like skin.]`
- `bool bScatterSceneLighting_Override`
- `bool bUseHairRaytracingGeometry [Enable hair strands geomtry for raytracing]`
- `bool bUseHairRaytracingGeometry_Override`
- `bool bUseStableRasterization [Insure the hair does not alias. When enable, group of hairs might appear thicker. Isolated hair should remain thin.]`
- `bool bUseStableRasterization_Override`


**方法**:

- `FHairGroupDesc& opAssign(FHairGroupDesc Other)`

---

