### UFractureRecomputeNormalsSettings


Settings for visualizing and recomputing normals and tangents

**属性**:

- `float32 Length [Length of display normal and tangent vectors]`
- `float32 SharpEdgeAngleThreshold [Threshold on angle of change in face normals across an edge, above which we create a sharp edge if bRecomputeSharpEdges is true]`
- `bool bOnlyInternalSurfaces [Whether to only change internal surface normals / tangents]`
- `bool bOnlyTangents [Whether to only recompute tangents, and leave normals as they were]`
- `bool bRecomputeSharpEdges [If true, update where edges are 'sharp' by comparing adjacent triangle face normals vs the Sharp Edge Angle Threshold.]`
- `bool bShowNormals [Whether to display normal vectors]`
- `bool bShowTangents [Whether to display tangent and bitangent vectors]`

---

