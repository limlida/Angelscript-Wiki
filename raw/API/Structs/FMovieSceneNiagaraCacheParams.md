### FMovieSceneNiagaraCacheParams


**属性**:

- `FNiagaraSimCacheCreateParameters CacheParameters []`
- `float32 CacheRecordRateFPS [The rate at which the cache should be recorded. Will be ignored if the sequence plays at a lower rate than this number.
This option is useful if you need to play the sequence at a very high fps for simulation stability (e.g. 240fps), but then later want to play back the cache at a normal rate (e.g. 24fps).
Please note that using this option might result in rendering artifacts for things like motion blur, velocity interpolation or inconsistent grid data in fluids, due to the dropped cache frames.]`
- `ENiagaraSimCacheSectionPlayMode CacheReplayPlayMode [What should the effect do when the track has no cache data to display]`
- `FFrameNumber EndFrameOffset [The offset into the end of the animation clip]`
- `FFrameNumber FirstLoopStartFrameOffset [The offset for the first loop of the animation clip]`
- `float32 PlayRate [The playback rate of the animation clip]`
- `EPerQualityLevels RecordQualityLevel [If set, then the engine scalability setting will be overriden with this value when recording a new cache for this track]`
- `ENiagaraSimCacheSectionStretchMode SectionStretchMode [What should the effect do when the cache section is stretched?]`
- `UNiagaraSimCache SimCache [The sim cache this section plays and records into]`
- `FFrameNumber StartFrameOffset [The offset into the beginning of the animation clip]`
- `bool bLockCacheToReadOnly [If true then the section properties might still be changed (so the section itself is not locked), but the cache cannot be rerecorded to prevent accidentally overriding the data within]`
- `bool bOverrideQualityLevel []`
- `bool bOverrideRecordRate [True if the cache should be recorded at a rate that is slower than the sequencer play rate.]`
- `bool bReverse [Reverse the playback of the animation clip]`


**方法**:

- `FMovieSceneNiagaraCacheParams& opAssign(FMovieSceneNiagaraCacheParams Other)`

---

