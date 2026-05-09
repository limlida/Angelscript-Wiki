### FMergeConvexHullsDataflowNode


Merge convex hulls on transforms with multiple hulls

**属性**:

- `int ColorRandomSeed [Random seed]`
- `FDataflowNodeDebugDrawSettings DebugDrawRenderSettings []`
- `float ErrorTolerance [Error tolerance to use to decide to merge leaf convex together.
This is in centimeters and represents the side of a cube, the volume of which will be used as threshold
to know if the volume of the generated convex is too large compared to the sum of the volume of the leaf convex]`
- `int MaxConvexCount [Maximum number of convex to generate per transform. Ignored if < 0.]`
- `float32 MergeProximityDistanceThreshold [If applying a convex hull proximity filter, the distance threshold to use for determining that two convex hulls are close enough to merge]`
- `EConvexHullProximityFilter MergeProximityFilter [Filter to optionally only consider spatially close convex hulls for merges]`
- `float MinRadius [Spheres smaller than this are not included in the negative space]`
- `float MinSampleSpacing [Minimum desired spacing between spheres; if > 0, will attempt not to place sphere centers closer than this]`
- `float NegativeSpaceTolerance [Amount of space to leave between convex hulls and protected negative space]`
- `FLinearColor OverrideColor []`
- `ENegativeSpaceSampleMethodDataflowEnum SampleMethod [Method to use to find and sample negative space]`
- `FDataflowNodeSphereCoveringDebugDrawSettings SphereCoveringDebugDrawRenderSettings []`
- `int TargetNumSamples [Approximate number of spheres to consider when covering negative space. Only applicable with the Uniform Sample Method or if Require Search Sample Coverage is disabled.]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bComputeNegativeSpacePerBone [Whether to compute separate negative space for each bone. Otherwise, a single negative space will be computed once and re-used for all bones.]`
- `bool bOnlyConnectedToHull [When performing Voxel Search, only look for negative space that is connected out to the convex hull. This removes inaccessable internal negative space from consideration. Only applies to Voxel Search.]`
- `bool bOverrideColor []`
- `bool bProtectNegativeSpace [Whether to use a sphere cover to define negative space that should not be covered by convex hulls]`
- `bool bRandomizeColor [Randomize color per convex hull]`
- `bool bRequireSearchSampleCoverage [Whether to require that all candidate locations identified by Voxel Search are covered by negative space samples, up to the specified Min Sample Spacing. Only applies to Voxel Search.]`


**方法**:

- `FMergeConvexHullsDataflowNode& opAssign(FMergeConvexHullsDataflowNode Other)`

---

