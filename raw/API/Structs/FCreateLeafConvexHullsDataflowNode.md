### FCreateLeafConvexHullsDataflowNode


**属性**:

- `int ColorRandomSeed [Random seed]`
- `FDataflowConvexDecompositionSettings ConvexDecompositionSettings []`
- `FDataflowNodeDebugDrawSettings DebugDrawRenderSettings []`
- `EGenerateConvexMethod GenerateMethod [How convex hulls are generated -- computed from geometry, imported from external collision shapes, or an intersection of both options.]`
- `float32 IntersectIfComputedIsSmallerByFactor [If GenerateMethod is Intersect, only actually intersect when the volume of the Computed Hull is less than this fraction of the volume of the External Hull(s).]`
- `float32 MinExternalVolumeToIntersect [If GenerateMethod is Intersect, only actually intersect if the volume of the External Hull(s) exceed this threshold.]`
- `FLinearColor OverrideColor []`
- `float32 SimplificationDistanceThreshold [Computed convex hulls are simplified to keep points spaced at least this far apart (except where needed to keep the hull from collapsing to zero volume).]`
- `FDataflowNodeSphereCoveringDebugDrawSettings SphereCoveringDebugDrawRenderSettings []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bComputeIntersectionsBeforeHull [Whether to compute the intersection before computing convex hulls. Typically should be enabled.]`
- `bool bOverrideColor []`
- `bool bRandomizeColor [Randomize color per convex hull]`


**方法**:

- `FCreateLeafConvexHullsDataflowNode& opAssign(FCreateLeafConvexHullsDataflowNode Other)`

---

