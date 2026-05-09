### FMassVisualizationLODParameters


**属性**:

- `float32 BaseLODDistance [Distances where each LOD becomes relevant]`
- `float32 BufferHysteresisOnDistancePercentage []`
- `float32 DistanceToFrustum [Entities within this distance from frustum will be considered visible. Expressed in Unreal Units.]`
- `float32 DistanceToFrustumHysteresis [Once an entity is visible how far away from frustum does it need to get to lose "visible" state.
Expressed in Unreal Units and is added to DistanceToFrustum to arrive at the final value to be used for testing.]`
- `UScriptStruct FilterTag [Filter these settings with specified tag]`
- `int LODMaxCount [Maximum limit for each entity per LOD]`
- `float32 VisibleLODDistance []`


**方法**:

- `FMassVisualizationLODParameters& opAssign(FMassVisualizationLODParameters Other)`

---

