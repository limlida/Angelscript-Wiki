### UStreamingSettings


Streaming settings.

**属性**:

- `bool AsyncLoadingThreadEnabled [Enables separate thread for package streaming. Requires restart to take effect.]`
- `float32 AsyncLoadingTimeLimit [Maximum amount of time to spend doing asynchronous loading (ms per frame).]`
- `bool AsyncLoadingUseFullTimeLimit [Whether to use the entire time limit even if blocked on I/O.]`
- `bool EventDrivenLoaderEnabled [Enables the event driven loader in cooked builds (default). Disabling EDL will result in using deprecated loading path.]`
- `bool FlushStreamingOnExit [If enabled, streaming will be flushed when exiting application, otherwise it will be cancelled.]`
- `float32 LevelStreamingActorsUpdateTimeLimit [Maximum allowed time to spend for actor registration steps during level streaming (ms per frame).]`
- `int LevelStreamingAddPrimitiveGranularity [Batching granularity used to add primitives to scene in parallel when registering actor components during level streaming.]`
- `int LevelStreamingComponentsRegistrationGranularity [Batching granularity used to register actor components during level streaming.]`
- `int LevelStreamingComponentsUnregistrationGranularity [Batching granularity used to unregister actor components during level streaming.]`
- `float32 LevelStreamingUnregisterComponentsTimeLimit [Maximum allowed time to spend while unregistering components during level streaming (ms per frame).]`
- `int MinBulkDataSizeForAsyncLoading [Minimum time the time limit exceeded warning will be triggered by.]`
- `float32 PriorityAsyncLoadingExtraTime [Additional time to spend asynchronous loading during a high priority load.]`
- `float32 PriorityLevelStreamingActorsUpdateExtraTime [Additional time to spend on actor registration steps during a high priority load.]`
- `float32 TimeLimitExceededMinTime [Minimum time the time limit exceeded warning will be triggered by.]`
- `float32 TimeLimitExceededMultiplier [Multiplier for time limit exceeded warning time threshold.]`
- `bool UseBackgroundLevelStreaming [Whether to allow background level streaming.]`
- `bool WarnIfTimeLimitExceeded [Enables log warning if time limit for time-sliced package streaming has been exceeded.]`

---

