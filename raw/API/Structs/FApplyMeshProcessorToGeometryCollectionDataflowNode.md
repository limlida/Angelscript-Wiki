### FApplyMeshProcessorToGeometryCollectionDataflowNode


Apply a Geometry Script Mesh Processors to the geometry of selected transforms in a geometry collection

**属性**:

- `TSubclassOf<UDynamicMeshProcessorBlueprint> MeshProcessor []`
- `UDynamicMeshProcessorBlueprint MeshProcessorInstance []`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bPreserveIsolatedVertices [Whether to preserve isolated vertices which aren't used by any triangles.]`
- `bool bWeldVertices [Whether the processed mesh will have edges at normal/UV/color seams welded so they are treated as one edge during processing.]`


**方法**:

- `FApplyMeshProcessorToGeometryCollectionDataflowNode& opAssign(FApplyMeshProcessorToGeometryCollectionDataflowNode Other)`

---

