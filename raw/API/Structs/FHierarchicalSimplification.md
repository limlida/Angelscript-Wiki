### FHierarchicalSimplification


**属性**:

- `FMeshApproximationSettings ApproximateSettings [Approximate settings, used if SimplificationMethod is Approximate]`
- `float32 DesiredBoundRadius [Desired Bounding Radius for clustering - this is not guaranteed but used to calculate filling factor for auto clustering]`
- `float32 DesiredFillingPercentage [Desired Filling Percentage for clustering - this is not guaranteed but used to calculate filling factor  for auto clustering]`
- `FMeshMergingSettings MergeSetting [Merge settings, used if SimplificationMethod is Merge]`
- `int MinNumberOfActorsToBuild [Min number of actors to build LODActor]`
- `float32 OverrideDrawDistance []`
- `FMeshProxySettings ProxySetting [Simplification settings, used if SimplificationMethod is Simplify]`
- `EHierarchicalSimplificationMethod SimplificationMethod []`
- `float32 TransitionScreenSize [The screen radius an mesh object should reach before swapping to the LOD actor, once one of parent displays, it won't draw any of children.]`
- `bool bAllowSpecificExclusion`
- `bool bOnlyGenerateClustersForVolumes [Only generate clusters for HLOD volumes]`
- `bool bReusePreviousLevelClusters [Will reuse the clusters generated for the previous (lower) HLOD level]`
- `bool bUseOverrideDrawDistance`


**方法**:

- `FHierarchicalSimplification& opAssign(FHierarchicalSimplification Other)`

---

