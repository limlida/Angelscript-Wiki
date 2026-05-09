### UChaosVDGeneralSettings


General settings that controls how CVD behaves

**属性**:

- `int MaxConnectionRetries [How many times CVD will attempt to connect to a live trace or load from file session if the first attempt failed]`
- `int MaxGameThreadFramesToQueueNum [How many Game thread frames CVD should queue internally before making them available in the visualization and timeline controls - Only takes effect before loading a file]`
- `float32 StreamingBoxExtentSize [Extent size of the box used for calculate what should be streamed in]`
- `bool bProcessPendingOperationsQueueInWorkerThread [If set to true CVD will process any updates to the streaming accel structure in worker threads, in between streaming updates]`
- `bool bSaveMemoryTracesToDisk [[DEBUG Setting] If True, any traces done to memory will also be saved to disk at the same time in the Profiling folder. This is not saved by design]`
- `bool bStreamingSystemEnabled [If true, CVD will only load collision geometry that is visible]`
- `bool bTrimEmptyFrames [If true, CVD will only load frames that have solver data in them - Only takes effect before loading a file]`
- `bool bUpdateSceneOutlinerDuringPlayback [If set to true CVD will keep the scene outliner up to date as the recording is played. If during the recording a
significant amount of objects are loaded/unloaded, the performance impact will be significant enough to degrade the playback stability.]`

---

