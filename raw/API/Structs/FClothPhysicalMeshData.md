### FClothPhysicalMeshData


Spatial simulation data for a mesh.

**属性**:

- `TArray<uint> Indices [Indices of the simulation mesh triangles]`
- `TArray<float32> InverseMasses [Inverse mass for each vertex in the physical mesh]`
- `int MaxBoneWeights [Maximum number of bone weights of any vetex]`
- `TArray<FVector3f> Normals [Normal at each vertex]`
- `int NumFixedVerts [Number of fixed verts in the simulation mesh (fixed verts are just skinned and do not simulate)]`
- `TSet<int> SelfCollisionVertexSet [Valid indices to use for self collisions (reduced set of Indices)]`
- `TArray<FColor> VertexColors [Color at each vertex]`
- `TArray<FVector3f> Vertices [Positions of each simulation vertex]`


**方法**:

- `FClothPhysicalMeshData& opAssign(FClothPhysicalMeshData Other)`

---

