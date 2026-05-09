### UCutMeshWithMeshToolProperties


Standard properties of the CutMeshWithMesh operation

**属性**:

- `float32 WindingThreshold [Threshold to determine whether a triangle in one mesh is inside or outside of the other]`
- `bool bShowNewBoundaries [Show boundary edges created by the Boolean operation, which might happen due to numerical errors]`
- `bool bTryCollapseEdges [Try to collapse extra edges created by the Boolean operation]`
- `bool bTryFixHoles [Try to fill holes created by the Boolean operation, e.g. due to numerical errors]`
- `bool bUseFirstMeshMaterials [If true, only the first mesh will keep its material assignments, and all other faces will have the first material assigned]`

---

