### UGroomCreateStrandsTexturesOptions


**属性**:

- `int Dilation [Number pixels expanded by the post-process dilation (0..64).]`
- `TArray<TObjectPtr<UTexture2D>> GeneratedTextures [Generated texure.]`
- `TArray<int> GroupIndex [Groom index which should be baked into the textures. When the array is empty, all groups will be included (Default).]`
- `int LODIndex [LOD of the mesh, on which the texture projection is done]`
- `EHairTextureLayout Layout [Resolution of the output texture maps (tangent, coverage, ...)]`
- `EStrandsTexturesMeshType MeshType [Select which mesh should be used for tracing]`
- `int Resolution [Resolution of the output texture maps (tangent, coverage, ...)]`
- `int SectionIndex [Section of the mesh, on which the texture projection is done]`
- `USkeletalMesh SkeletalMesh [Mesh on which the groom strands will be projected on. If non empty, the skeletal mesh will be used for generating the textures.]`
- `UStaticMesh StaticMesh [Mesh on which the groom strands will be projected on. If non empty and if the skeletal mesh entry is empty, the static mesh will be used for generating the textures.]`
- `float32 TraceDistance [Distance from the mesh surface until hair are projected onto the mesh.]`
- `EStrandsTexturesTraceType TraceType [Direction in which the tracing will be done: either from the mesh's surface to the outside, or from the mesh's surface to the inside.]`
- `int UVChannelIndex [UV channel to use]`

---

