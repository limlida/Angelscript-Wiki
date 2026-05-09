### FResampleGeometryCollectionDataflowNode


Editor Fracture Mode / Utilities / Resample tool
Resample to add collision particles in large flat regions that otherwise might have poor collision response.
Only useful to help improve Particle - Implicit collisions.

**属性**:

- `bool AddSamplesForCollision [If enabled, add extra vertices (without triangles) to the geometry in regions where vertices are spaced too far apart (e.g. across large triangles)
These extra vertices will be used as collision samples in particle-implicit collisions, and can help the physics system detect collisions more accurately

Note this is *only* useful for simulations that use particle-implicit collisions]`
- `float32 CollisionSampleSpacing [The number of centimeters to allow between vertices on the mesh surface: If there are gaps larger than this, add additional vertices (without triangles) to help support particle-implicit collisions
Only used if Add Samples For Collision is enabled]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FResampleGeometryCollectionDataflowNode& opAssign(FResampleGeometryCollectionDataflowNode Other)`

---

