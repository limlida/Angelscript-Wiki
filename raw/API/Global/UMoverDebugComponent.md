### UMoverDebugComponent


Component to help display debug information for actors using the Mover Component. Is expected to be attached to the actor that has the mover component.
Currently supports trajectory functionality and trailing functionality. Is also used in the gameplay debugger under the mover category.

**属性**:

- `int HistorySamplesPerSecond [Target sampling rate for history tracking. Note that sampling rate is variable and may be higher during times of rapid change. @see SetHistoryTracking]`
- `float32 HistoryTrackingSeconds [Begin Motion history tracking
Max age of tracked samples. Feature is disabled for values <= 0. @see SetHistoryTracking]`
- `int LookaheadSamplesPerSecond [Number of times trajectory will be sampled each second]`
- `float32 LookaheadSeconds [Number of seconds to lookahead and show the current trajectory]`
- `bool bShowCorrections [Whether this component should show the corrections and rollbacks applied to the Actor it's attached too]`
- `bool bShowTrail [Whether this component should show the trail of the movement component of the Actor it's attached too]`
- `bool bShowTrajectory [Whether this component should show the trajectory of the movement component of the Actor it's attached too]`


**方法**:

- `TArray<FTrajectorySampleInfo> GetPastTrajectory() const`  
  Get a read-only sampling of where the actor has recently been, ordered by ascending age. Will be empty unless history tracking is enabled. @see SetHistoryTracking
- `SetHistoryTracking(float32 SecondsToTrack, float32 SamplesPerSecond)`  
  Change history tracking feature settings. Anything <= 0 for SecondsToTrack will disable the feature.

---

