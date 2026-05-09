### USimplifyMeshToolProperties


Standard properties of the Simplify operation

**属性**:

- `float32 BoundaryEdgeAngleTolerance [Threshold angle change (in degrees) between adjacent boundary edges, above which the common vertex must be preserved]`
- `float32 GeometricTolerance [Geometric deviation tolerance used when bGeometricConstraint is enabled, to limit the geometric deviation between the simplified and original meshes]`
- `float32 PolyEdgeAngleTolerance [Threshold angle change (in degrees) along a polygroup edge, above which a vertex must be added]`
- `ESimplifyType SimplifierType [Simplification Scheme]`
- `float32 TargetEdgeLength [Target edge length]`
- `ESimplifyTargetType TargetMode [Simplification Target Type]`
- `int TargetPercentage [Target percentage of original triangle count]`
- `int TargetTriangleCount [Target triangle count]`
- `int TargetVertexCount [Target vertex count]`
- `bool bDiscardAttributes [Discard UVs and existing normals, allowing the simplifier to ignore any UV and normal seams. New per-vertex normals are computed.]`
- `bool bGeometricConstraint [If true, then simplification will consider geometric deviation with the input mesh]`
- `bool bReproject [Enable projection back to input mesh]`
- `bool bShowGroupColors [Display colors corresponding to the mesh's polygon groups]`

---

