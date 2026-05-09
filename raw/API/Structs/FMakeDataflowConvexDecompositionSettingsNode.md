### FMakeDataflowConvexDecompositionSettingsNode


Provide settings for running convex decomposition of geometry

**属性**:

- `float32 ErrorTolerance [Stop splitting when hulls have error less than this (expressed in cm; will be cubed for volumetric error).
Note: Decomposition will only be performed if: bProtectNegativeSpace is true, ErrorTolerance is > 0, or MaxHullsPerGeometry > 1]`
- `float32 MaxGeoToHullVolumeRatioToDecompose [If the geo volume / hull volume ratio is greater than this, do not consider convex decomposition]`
- `int MaxHullsPerGeometry [If greater than zero, maximum number of convex hulls to use in each convex decomposition.
Note: Decomposition will only be performed if: bProtectNegativeSpace is true, ErrorTolerance is > 0, or MaxHullsPerGeometry > 1]`
- `float32 MinSizeToDecompose [If greater than zero, the minimum geometry size (cube root of volume) to consider for convex decomposition]`
- `float32 MinThicknessTolerance [Optionally specify a minimum thickness (in cm) for convex parts; parts below this thickness will always be merged away. Overrides NumOutputHulls and ErrorTolerance when needed.]`
- `float32 NegativeSpaceMinRadius [Spheres smaller than this are not included in the negative space]`
- `float32 NegativeSpaceTolerance [Amount of space to leave between convex hulls and protected negative space]`
- `int NumAdditionalSplits [Control the search effort spent per convex decomposition: larger values will require more computation but may find better convex decompositions]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOnlyConnectedToHull [When protecting negative space, only look for space that is connected out to the convex hull. This removes inaccessable internal negative space from consideration.]`
- `bool bOverrideColor []`
- `bool bProtectNegativeSpace [Whether to drive decomposition by finding a negative space that should not be covered by convex hulls. If enabled, ErrorTolerance and NumAdditionalSplits will not be used.]`


**方法**:

- `FMakeDataflowConvexDecompositionSettingsNode& opAssign(FMakeDataflowConvexDecompositionSettingsNode Other)`

---

