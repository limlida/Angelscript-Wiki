### FRecomputeNormalsInGeometryCollectionDataflowNode


Editor Fracture Mode / Utilities / Normals tool
Recompute normals and tangents.

**属性**:

- `FLinearColor OverrideColor []`
- `float32 SharpEdgeAngleThreshold [Threshold on angle of change in face normals across an edge, above which we create a sharp edge if bRecomputeSharpEdges is true]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOnlyInternalSurfaces [Whether to only change internal surface normals / tangents]`
- `bool bOnlyTangents [Whether to only recompute tangents, and leave normals as they were]`
- `bool bOverrideColor []`
- `bool bRecomputeSharpEdges [If true, update where edges are 'sharp' by comparing adjacent triangle face normals vs the Sharp Edge Angle Threshold.]`


**方法**:

- `FRecomputeNormalsInGeometryCollectionDataflowNode& opAssign(FRecomputeNormalsInGeometryCollectionDataflowNode Other)`

---

