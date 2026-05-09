### FGetConvexHullVolumeDataflowNode


Get the sum of volumes of the convex hulls on the selected nodes

**属性**:

- `int ColorRandomSeed [Random seed]`
- `FDataflowNodeDebugDrawSettings DebugDrawRenderSettings []`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bRandomizeColor [Randomize color per convex hull]`
- `bool bSumChildrenForClustersWithoutHulls [For any cluster transform that has no convex hulls, whether to fall back to the convex hulls of the cluster's children. Otherwise, the cluster will not add to the total volume sum.]`
- `bool bVolumeOfUnion [Whether to take the volume of the union of selected hulls, rather than the sum of each hull volume separately. This is more expensive but more accurate when hulls overlap.]`


**方法**:

- `FGetConvexHullVolumeDataflowNode& opAssign(FGetConvexHullVolumeDataflowNode Other)`

---

