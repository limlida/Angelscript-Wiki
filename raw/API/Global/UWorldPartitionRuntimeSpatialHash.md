### UWorldPartitionRuntimeSpatialHash


**属性**:

- `TArray<FSpatialHashRuntimeGrid> Grids []`
- `EWorldPartitionCVarProjectDefaultOverride PlacePartitionActorsUsingLocation [Enable to place partitioned actors into their corresponding cell using their location instead of their bounding box.]`
- `EWorldPartitionCVarProjectDefaultOverride PlaceSmallActorsUsingLocation [Enable to place actors smaller than a cell size into their corresponding cell using their location instead of their bounding box.]`
- `EWorldPartitionCVarProjectDefaultOverride SnapNonAlignedGridLevelsToLowerLevels [Disable to avoid snapping higher levels cells to child cells. Only used when bUseAlignedGridLevels is false.]`
- `EWorldPartitionCVarProjectDefaultOverride UseAlignedGridLevels [Disable to help break the pattern caused by world partition promotion of actors to upper grid levels that are always aligned on child levels.]`
- `bool bEnableZCulling [Whether this hash enables Z culling.]`

---

