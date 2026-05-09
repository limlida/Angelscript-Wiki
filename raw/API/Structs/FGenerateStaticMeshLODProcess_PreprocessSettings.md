### FGenerateStaticMeshLODProcess_PreprocessSettings


**属性**:

- `FName FilterGroupLayer [Group layer to use for filtering out detail before processing]`
- `float32 ThickenAmount [Amount to thicken the mesh prior to Solidifying. The thicken weight map values are multiplied by this value.
Thickening is primarily intended to repair shape erosion that can occur when using the Solidify Mesh Generators.]`
- `FName ThickenWeightMapName [Weight map used during mesh thickening]`


**方法**:

- `FGenerateStaticMeshLODProcess_PreprocessSettings& opAssign(FGenerateStaticMeshLODProcess_PreprocessSettings Other)`

---

