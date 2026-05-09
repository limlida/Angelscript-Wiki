### UQuartzSubsystem


**方法**:

- `UQuartzClockHandle CreateNewClock(FName ClockName, FQuartzClockSettings InSettings, bool bOverrideSettingsIfClockExists = false, bool bUseAudioEngineClockManager = true)`  
  Clock Creation
create a new clock (or return handle if clock already exists)
- `DeleteClockByHandle(UQuartzClockHandle& InClockHandle)`  
  delete an existing clock given its clock handle
- `DeleteClockByName(FName ClockName)`  
  delete an existing clock given its name
- `bool DoesClockExist(FName ClockName)`  
  returns true if the clock exists
- `float32 GetAudioRenderThreadToGameThreadAverageLatency()`  
  latency data (Audio Render Thread -> Game thread)
- `float32 GetAudioRenderThreadToGameThreadMaxLatency()`
- `float32 GetAudioRenderThreadToGameThreadMinLatency()`
- `FQuartzTransportTimeStamp GetCurrentClockTimestamp(FName InClockName)`  
  Retrieves a timestamp for the clock
- `float32 GetDurationOfQuantizationTypeInSeconds(FName ClockName, EQuartzCommandQuantization QuantizationType, float32 Multiplier = 1.000000)`  
  Returns the duration in seconds of the given Quantization Type
- `float32 GetEstimatedClockRunTime(FName InClockName)`  
  Returns the amount of time, in seconds, the clock has been running. Caution: due to latency, this will not be perfectly accurate
- `float32 GetGameThreadToAudioRenderThreadAverageLatency()`  
  latency data (Game thread -> Audio Render Thread)
- `float32 GetGameThreadToAudioRenderThreadMaxLatency()`
- `float32 GetGameThreadToAudioRenderThreadMinLatency()`
- `UQuartzClockHandle GetHandleForClock(FName ClockName)`  
  get handle for existing clock
- `float32 GetRoundTripAverageLatency()`  
  latency data (Round trip)
- `float32 GetRoundTripMaxLatency()`
- `float32 GetRoundTripMinLatency()`
- `bool IsClockRunning(FName ClockName)`  
  returns true if the clock is running
- `bool IsQuartzEnabled()`
- `SetQuartzSubsystemTickableWhenPaused(bool bInTickableWhenPaused)`

---

