### FGenerateStaticMeshLODProcessSettings


**属性**:

- `float32 ClosureDistance [Offset distance in the Morpohological Closure operation]`
- `EGenerateStaticMeshLODProcess_MeshGeneratorModes MeshGenerator [Method used to generate the initial mesh for AutoLOD processing]`
- `int PrefilterGridResolution [Grid resolution (along the maximum-length axis) for subsampling before computing the convex hull]`
- `int SolidifyVoxelResolution [Target number of voxels along the maximum dimension for Solidify operation]`
- `float32 WindingThreshold [Winding number threshold to determine what is considered inside the mesh during Solidify]`
- `bool bPrefilterVertices [Whether to subsample input vertices using a regular grid before computing the convex hull]`


**方法**:

- `FGenerateStaticMeshLODProcessSettings& opAssign(FGenerateStaticMeshLODProcessSettings Other)`

---

