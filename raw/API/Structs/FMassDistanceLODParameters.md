### FMassDistanceLODParameters


Simplest version of LOD Calculation based strictly on Distance parameters
   Compared to FMassVisualizationLODParameters, we:
   * Only include a single set of LOD Distances (radial distance from viewer)
   * we do not care about distance to Frustum
   * we do not care about Max Count

**属性**:

- `float32 BufferHysteresisOnDistancePercentage []`
- `UScriptStruct FilterTag [Filter these settings with specified tag]`
- `float32 LODDistance [Distances where each LOD becomes relevant]`


**方法**:

- `FMassDistanceLODParameters& opAssign(FMassDistanceLODParameters Other)`

---

