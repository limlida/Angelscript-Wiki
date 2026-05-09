### FTakeRecorderUserParameters


**属性**:

- `float32 CountdownSeconds [Delay that we will use before starting recording]`
- `float32 EngineTimeDilation [The engine time dilation to apply during the recording]`
- `float32 ReduceKeysTolerance [Tolerance to use when reducing keys]`
- `bool bAutoLock [Whether to lock the level sequence when done recording]`
- `bool bAutoSerialize [Whether to incrementally serialize and store some data while recording]`
- `bool bMaximizeViewport [Whether to maximize the viewport (enter Immersive Mode) when recording]`
- `bool bRemoveRedundantTracks [Recommended for use with recorded spawnables. Beware that changes to actor instances in the map after recording may alter the recording when played back]`
- `bool bResetPlayhead [Reset playhead to beginning of the playback range when starting recording]`
- `bool bSaveRecordedAssets [Whether to save recorded level sequences and assets when done recording]`
- `bool bStopAtPlaybackEnd [Automatically stop recording when reaching the end of the playback range]`
- `bool bStopOnRollover [Automatically stop recording when the current time code value loops over to before the start timecode value,
e.g. when a rollover happens (23:59:59 -> 00:00:00:01), or if you started recording at 18:39:12:01 and timecode later jumps to 18:35:00:01.]`


**方法**:

- `FTakeRecorderUserParameters& opAssign(FTakeRecorderUserParameters Other)`

---

