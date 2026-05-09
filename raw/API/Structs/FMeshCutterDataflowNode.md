### FMeshCutterDataflowNode


Editor Fracture Mode / Fracture / Mesh tool
Fracture using the shape of a chosen static mesh and/or array of dynamic meshes

**属性**:

- `bool AddSamplesForCollision [If enabled, add extra vertices (without triangles) to the geometry in regions where vertices are spaced too far apart (e.g. across large triangles)
These extra vertices will be used as collision samples in particle-implicit collisions, and can help the physics system detect collisions more accurately

Note this is *only* useful for simulations that use particle-implicit collisions]`
- `float32 ChanceToFracture [Chance to fracture each selected bone. If 0, no bones will fracture; if 1, all bones will fracture.]`
- `float32 CollisionSampleSpacing [The number of centimeters to allow between vertices on the mesh surface: If there are gaps larger than this, add additional vertices (without triangles) to help support particle-implicit collisions
Only used if Add Samples For Collision is enabled]`
- `EMeshCutterCutDistribution CutDistribution [How to arrange the mesh cuts in space]`
- `TArray<TObjectPtr<UDynamicMesh>> CuttingDynamicMeshes [Dynamic Meshes to cut with]`
- `UStaticMesh CuttingStaticMesh [Static Mesh to cut with]`
- `int GridX [Number of meshes to add to grid in X]`
- `int GridY [Number of meshes to add to grid in Y]`
- `int GridZ [Number of meshes to add to grid in Z]`
- `int LODLevel [If using a Static Mesh to cut, and not using the Nanite HiRes source mesh, use this LOD level's mesh]`
- `float32 MaxScaleFactor [Maximum scale factor to apply to cutting meshes. A random scale will be chosen between Min and Max]`
- `float32 MinScaleFactor [Minimum scale factor to apply to cutting meshes. A random scale will be chosen between Min and Max]`
- `int NumberToScatter [Number of meshes to random scatter]`
- `FLinearColor OverrideColor []`
- `EMeshCutterPerCutMeshSelection PerCutMeshSelection [When there are multiple cutting meshes, how to choose the cut mesh to apply at each location]`
- `float32 PitchRange [Pitch will be chosen between -Range and +Range]`
- `int RandomSeed [Seed for random]`
- `float32 RollRange [Roll will be chosen between -Range and +Range]`
- `bool SplitIslands [Whether to split the fractured mesh pieces based on geometric connectivity after fracturing]`
- `float32 Variability [Magnitude of random displacement to cutting meshes]`
- `float32 YawRange [Yaw will be chosen between -Range and +Range]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bRandomOrientation [Whether to randomly vary the orientation of the cutting meshes]`
- `bool bUseHiRes [If using a Static Mesh to cut, attempt to use the Nanite HiRes source mesh, if available and non-empty.]`


**方法**:

- `FMeshCutterDataflowNode& opAssign(FMeshCutterDataflowNode Other)`

---

