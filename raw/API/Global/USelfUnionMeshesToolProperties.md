### USelfUnionMeshesToolProperties


Standard properties of the self-union operation

**属性**:

- `float32 WindingThreshold [Threshold to determine whether a triangle in one mesh is inside or outside of the other]`
- `bool bOnlyUseFirstMeshMaterials [If true, only the first mesh will keep its materials assignments; all other triangles will be assigned material 0]`
- `bool bShowNewBoundaryEdges [Show boundary edges created by the merge (often due to numerical error)]`
- `bool bTrimFlaps [If true, remove open, visible geometry]`
- `bool bTryCollapseEdges [Try to collapse extra edges created by the merge]`
- `bool bTryFixHoles [Try to fill holes created by the merge, e.g. due to numerical errors]`

---

