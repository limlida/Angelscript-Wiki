### FMeshToCollectionDataflowNode


Converts a DynamicMesh to a Collection

**属性**:

- `float32 ConnectVerticesThreshold [Vertices closer than this distance are considered to be overlapping]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bAddClusterRootForSingleMesh [Whether to add a root cluster for the single mesh case. Note if the mesh is split, the root cluster will always be added.]`
- `bool bConnectIslandsByVertexOverlap [Whether to consider coincident vertices as connected even if the topology does not connect them]`
- `bool bOverrideColor []`
- `bool bSplitIslands [Whether to split the mesh into multiple bones based on the mesh connectivity]`


**方法**:

- `FMeshToCollectionDataflowNode& opAssign(FMeshToCollectionDataflowNode Other)`

---

