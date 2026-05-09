### UDisplaceMeshCommonProperties


The basic set of properties shared by (more or less) all DisplacementTypes.

**属性**:

- `float32 DisplaceIntensity [Displacement intensity]`
- `EDisplaceMeshToolDisplaceType DisplacementType [Displacement type]`
- `int RandomSeed [Seed for randomization]`
- `EDisplaceMeshToolSubdivisionType SubdivisionType [Type of the  mesh subdivision.]`
- `int Subdivisions [Number of times to subdivide the mesh before displacing it.]`
- `FName WeightMap [Select vertex weight map. If configured, the weight map value will be sampled to modulate displacement intensity.]`
- `bool bDisableSizeWarning []`
- `bool bInvertWeightMap []`
- `bool bShowWireframe []`

---

