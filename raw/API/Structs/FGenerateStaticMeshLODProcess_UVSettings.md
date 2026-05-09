### FGenerateStaticMeshLODProcess_UVSettings


**属性**:

- `float32 MaxAngleDeviation [UV islands will not be merged if their average face normals deviate by larger than this amount]`
- `float32 MergingThreshold [Distortion/Stretching Threshold for island merging - larger values increase the allowable UV stretching]`
- `int NumInitialPatches [Number of initial patches mesh will be split into before computing island merging]`
- `int NumUVAtlasCharts [Maximum number of charts to create in UVAtlas]`
- `FGenerateStaticMeshLODProcess_UVSettings_PatchBuilder PatchBuilder []`
- `EGenerateStaticMeshLODProcess_AutoUVMethod UVMethod []`


**方法**:

- `FGenerateStaticMeshLODProcess_UVSettings& opAssign(FGenerateStaticMeshLODProcess_UVSettings Other)`

---

