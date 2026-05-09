### FCreateNonOverlappingConvexHullsDataflowNode


Generates convex hull representation for the bones for simulation

**属性**:

- `float32 CanExceedFraction [Fraction (of geometry volume) by which a cluster's convex hull volume can exceed the actual geometry volume before instead using the hulls of the children.  0 means the convex volume cannot exceed the geometry volume; 1 means the convex volume is allowed to be 100% larger (2x) the geometry volume.]`
- `float32 CanRemoveFraction [Fraction of the convex hulls for a cluster that we can remove before using the hulls of the children]`
- `int ColorRandomSeed [Random seed]`
- `FDataflowNodeDebugDrawSettings DebugDrawRenderSettings []`
- `EConvexOverlapRemovalMethodEnum OverlapRemovalMethod [Whether and in what cases to automatically cut away overlapping parts of the convex hulls, to avoid the simulation 'popping' to fix the overlaps]`
- `float32 OverlapRemovalShrinkPercent [Overlap removal will be computed as if convex hulls were this percentage smaller (in range 0-100)]`
- `FLinearColor OverrideColor []`
- `float32 SimplificationDistanceThreshold [Computed convex hulls are simplified to keep points spaced at least this far apart (except where needed to keep the hull from collapsing to zero volume)]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bRandomizeColor [Randomize color per convex hull]`


**方法**:

- `FCreateNonOverlappingConvexHullsDataflowNode& opAssign(FCreateNonOverlappingConvexHullsDataflowNode Other)`

---

