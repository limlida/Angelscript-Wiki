### UGarbageCollectionSettings


Implements the settings for garbage collection.

**属性**:

- `bool ActorClusteringEnabled [Whether to allow levels to create actor clusters for GC.]`
- `bool AllowParallelGC [If enabled, garbage collection will use multiple threads.]`
- `bool AssetClusteringEnabled [Whether to allow asset files to create actor clusters for GC.]`
- `bool CreateGCClusters [If true, the engine will attempt to create clusters of objects for better garbage collection performance.]`
- `bool DumpObjectCountsToLogWhenMaxObjectLimitExceeded [If true, the engine will dump UObject counts when maximum number of UObjects limit has been exceeded.]`
- `bool FlushStreamingOnGC [If enabled, streaming will be flushed each time garbage collection is triggered.]`
- `bool GarbageEliminationEnabled [If true, objects marked as Garbage will be automatically nulled and destroyed by Garbage Collector.]`
- `bool IncrementalBeginDestroyEnabled [If true, the engine will destroy objects incrementally using time limit each frame.]`
- `int MaxObjectsInEditor [Maximum number of UObjects that can exist in the editor game. Make sure this can hold enough objects for the editor and commadlets within reasonable limit.]`
- `int MaxObjectsInGame [Maximum number of UObjects that can exist in cooked game. Keep this as small as possible.]`
- `int MaxObjectsNotConsideredByGC [Maximum Object Count Not Considered By GC. Works only in cooked builds.]`
- `int MinGCClusterSize [Minimum GC cluster size.]`
- `int NumRetriesBeforeForcingGC [Maximum number of times GC can be skipped if worker threads are currently modifying UObject state. 0 = never force GC]`
- `float32 TimeBetweenPurgingPendingKillObjects [Time in seconds (game time) we should wait between purging object references to objects that are pending kill.]`
- `bool VerifyUObjectsAreNotFGCObjects [If true, the engine will throw a warning when it detects a UObject-derived class which also derives from FGCObject or any of its members is derived from FGCObject.]`

---

