### UEnvQueryGenerator_PathingGrid


Navigation grid, generates points on navmesh
with paths to/from context no further than given limit

**属性**:

- `TSubclassOf<UNavigationQueryFilter> NavigationFilter [navigation filter to use in pathfinding]`
- `FAIDataProviderBoolValue PathToItem [pathfinding direction]`
- `FAIDataProviderFloatValue ScanRangeMultiplier [multiplier for max distance between point and context]`

---

