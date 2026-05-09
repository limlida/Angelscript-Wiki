### FSkeletalMeshSamplingRegion


Defined a named region on a mesh that will have associated triangles and bones for fast sampling at each enabled LOD.

**属性**:

- `TArray<FSkeletalMeshSamplingRegionBoneFilter> BoneFilters [Filters to determine which triangles and bones to include in this region based on bone.]`
- `int LODIndex [The LOD of the mesh that this region applies to.]`
- `TArray<FSkeletalMeshSamplingRegionMaterialFilter> MaterialFilters [Filters to determine which triangles to include in this region based on material.]`
- `FName Name [Name of this region that users will reference.]`
- `bool bSupportUniformlyDistributedSampling [Mesh supports uniformly distributed sampling in constant time.
Memory cost is 8 bytes per triangle.]`


**方法**:

- `FSkeletalMeshSamplingRegion& opAssign(FSkeletalMeshSamplingRegion Other)`

---

