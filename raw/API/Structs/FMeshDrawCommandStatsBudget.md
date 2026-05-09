### FMeshDrawCommandStatsBudget


Description of a stat category used in the MeshDrawCommandStats system.

**属性**:

- `FName CategoryName [Category name.]`
- `int Collection [The collection which contains this budget.]`
- `TArray<FName> LinkedStatNames [Stat names that will match this category name.]`
- `TArray<FName> Passes [Which passes contribute to this budget.]`
- `int PrimitiveBudget [The category primitive budget. This is the maximum triangles expected, post-culling, summed across all passes.]`
- `int VertexBudget [The category vertex budget. This is the maximum number of vertex expected, post-culling, summed across all passes.]`


**方法**:

- `FMeshDrawCommandStatsBudget& opAssign(FMeshDrawCommandStatsBudget Other)`

---

