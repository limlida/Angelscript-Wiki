### UNiagaraDataInterfaceDynamicMesh


Data Interface that can create mesh geometry at runtime from triangle data (e.g. to render a custom generated mesh per particle)

**属性**:

- `FBox DefaultBounds [Should we auto clear section triangle allocations per frame or not.]`
- `TArray<FNiagaraDynamicMeshMaterial> Materials [List of materials to use]`
- `int NumTexCoords [Allocates space for the number of texture coordinates requested.]`
- `int NumVertices [Allocates space for the number of vertices we will use, leave as zero if you intend to allocate dynamically via VM calls.]`
- `TArray<FNiagaraDynamicMeshSection> Sections [Sections to render, each section will generally result in a draw call.
Triangles are contiguous between sections, i.e. Section[1] triangles will begin after Section[0].NumTriangles]`
- `bool bClearTrianglesPerFrame [Should we auto clear section triangle allocations per frame or not.]`
- `bool bHasColors [Allocates space for vertex colors when enabled.]`
- `bool bHasTangentBasis [Allocates space for tangent basis when enabled.]`

---

