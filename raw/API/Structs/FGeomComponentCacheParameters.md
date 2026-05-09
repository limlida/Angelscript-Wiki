### FGeomComponentCacheParameters


**属性**:

- `int BreakingDataSizeMax [Maximum size of the breaking buffer]`
- `float32 BreakingDataSpatialHashRadius [Spatial hash radius for breaking data]`
- `EGeometryCollectionCacheType CacheMode [Cache mode, whether disabled, playing or recording]`
- `int CollisionDataSizeMax [Maximum size of the collision buffer]`
- `float32 CollisionDataSpatialHashRadius [Spatial hash radius for collision data]`
- `bool DoBreakingDataSpatialHash [Spatial hash breaking data]`
- `bool DoCollisionDataSpatialHash [Spatial hash collision data]`
- `bool DoGenerateBreakingData [Whether to generate breakings during playback]`
- `bool DoGenerateCollisionData [Whether to generate collisions during playback]`
- `bool DoGenerateTrailingData [Whether to generate trailings during playback]`
- `int MaxBreakingPerCell [Maximum number of breaking per cell]`
- `int MaxCollisionPerCell [Maximum number of collisions per cell]`
- `float32 ReverseCacheBeginTime [Cache mode, whether disabled, playing or recording]`
- `bool SaveBreakingData [Whether to buffer breakings during recording]`
- `bool SaveCollisionData [Whether to buffer collisions during recording]`
- `bool SaveTrailingData [Whether to buffer trailings during recording]`
- `UGeometryCollectionCache TargetCache [The cache to target when recording or playing]`
- `int TrailingDataSizeMax [Maximum size of the trailing buffer]`
- `float32 TrailingMinSpeedThreshold [Minimum speed to record trailing]`
- `float32 TrailingMinVolumeThreshold [Minimum volume to record trailing]`


**方法**:

- `FGeomComponentCacheParameters& opAssign(FGeomComponentCacheParameters Other)`

---

