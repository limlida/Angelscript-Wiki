### FSimplifyConvexHullsDataflowNode


**属性**:

- `int ColorRandomSeed [Random seed]`
- `FDataflowNodeDebugDrawSettings DebugDrawRenderSettings []`
- `int MinTargetTriangleCount [The minimum number of faces to use for the convex hull. For MeshQSlim simplification, this is a triangle count, which may be further reduced on conversion back to a convex hull.]`
- `FLinearColor OverrideColor []`
- `float32 SimplificationAngleThreshold [Simplified hull should preserve angles larger than this (in degrees).  Used by the AngleTolerance simplification method.]`
- `float32 SimplificationDistanceThreshold [Simplified hull should stay within this distance of the initial convex hull. Used by the MeshQSlim simplification method.]`
- `EConvexHullSimplifyMethod SimplifyMethod []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bRandomizeColor [Randomize color per convex hull]`
- `bool bUseExistingVertices [Whether to restrict the simplified hulls to only use vertices from the original hulls.]`


**方法**:

- `FSimplifyConvexHullsDataflowNode& opAssign(FSimplifyConvexHullsDataflowNode Other)`

---

