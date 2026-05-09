### UReplaySubsystem


**属性**:

- `bool bLoadDefaultMapOnStop [Whether to reload the default map when StopReplay is called.]`


**方法**:

- `FString GetActiveReplayName() const`  
  Get current recording/playing replay name

@return FString Name of relpay (session id, file name, etc)
- `float32 GetReplayCurrentTime() const`  
  Get current recording/playing replay time

@return float Current recording/playback time in seconds
- `float32 GetReplayTotalTime() const`  
  Get current recording/playing total replay time

@return float total recording/playing time in seconds
- `bool IsPlaying() const`
- `bool IsRecording() const`
- `RequestCheckpoint()`  
  Request a checkpoint write, if currently recording.

---

