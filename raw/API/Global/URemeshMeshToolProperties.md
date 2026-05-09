### URemeshMeshToolProperties


Standard properties of the Remesh operation

**属性**:

- `float32 BoundaryCornerAngleThreshold [Angle threshold in degrees for classifying a boundary vertex as a corner. Corners will be fixed if Reproject Constraints is active.]`
- `int ExtraProjectionIterations [For NormalFlowRemesher: extra iterations of normal flow with no remeshing]`
- `int MaxRemeshIterations [Maximum number of Remeshing passes, for Remeshers that have convergence criteria]`
- `int RemeshIterations [Number of Remeshing passes]`
- `ERemeshType RemeshType [Remeshing type]`
- `ERemeshSmoothingType SmoothingType [Smoothing type]`
- `float32 TargetEdgeLength [Remesh to have edges approximately this length. An attempt at a reasonable value is computed automatically for this field based on the selected target mesh.]`
- `int TargetTriangleCount [Target triangle count]`
- `bool bDiscardAttributes [Discard UVs and existing normals, allowing the remesher to ignore any UV and normal seams. New per-vertex normals are computed.]`
- `bool bReproject [Enable projection back to input mesh]`
- `bool bReprojectConstraints [Project constrained vertices back to original constraint curves]`
- `bool bShowGroupColors [Display colors corresponding to the mesh's polygon groups]`
- `bool bUseTargetEdgeLength [If true, the target count is ignored and the target edge length is used directly]`

---

