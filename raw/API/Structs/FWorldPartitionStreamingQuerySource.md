### FWorldPartitionStreamingQuerySource


Structure containing all properties required to query a streaming state

**属性**:

- `TArray<FName> DataLayers [Optional list of data layers to specialize the query. If empty only non data layer cells will be returned by the query.]`
- `FVector Location [Location to query. (not used if bSpatialQuery is false)]`
- `float32 Radius [Radius to query. (not used if bSpatialQuery is false)]`
- `bool bDataLayersOnly [If True, Only cells that are in a data layer found in DataLayers property will be returned by the query.]`
- `bool bSpatialQuery [If False, Location/Radius will not be used to find the cells. Only AlwaysLoaded cells will be returned by the query.]`
- `bool bUseGridLoadingRange [If True, Instead of providing a query radius, query can be bound to loading range radius.]`


**方法**:

- `FWorldPartitionStreamingQuerySource& opAssign(FWorldPartitionStreamingQuerySource Other)`

---

