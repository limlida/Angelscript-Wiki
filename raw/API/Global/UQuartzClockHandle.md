### UQuartzClockHandle


This class is a BP / Game thread wrapper around FQuartzClockProxy
   (to talk to the underlying clock)

...and inherits from FQuartzTickableObject
   (to listen to the underlying clock)

It can subscribe to Quantized Event & Metronome delegates to synchronize
gameplay & VFX to Quartz events fired from the Audio Engine

**方法**:

- `float32 GetBeatProgressPercent(EQuartzCommandQuantization QuantizationBoundary = EQuartzCommandQuantization :: Beat, float32 PhaseOffset = 0.000000, float32 MsOffset = 0.000000)`  
  Returns the current progress until the next occurrence of the provided musical duration as a float value from 0 (previous beat) to 1 (next beat).
This is useful for indexing into curves to animate parameters to musical time.
Ms and Phase offsets are combined internally.
- `float32 GetBeatsPerMinute() const`
- `FQuartzTransportTimeStamp GetCurrentTimestamp()`  
  Retrieves a timestamp for the clock
- `float32 GetDurationOfQuantizationTypeInSeconds(EQuartzCommandQuantization QuantizationType, float32 Multiplier = 1.000000)`  
  Returns the duration in seconds of the given Quantization Type

@param The Quantization type to measure
@param The quantity of the Quantization Type to calculate the time of
@return The duration, in seconds, of a multiplier amount of the Quantization Type, or -1 in the case the clock is invalid
- `float32 GetEstimatedRunTime()`  
  Returns the amount of time, in seconds, the clock has been running. Caution: due to latency, this will not be perfectly accurate
- `float32 GetMillisecondsPerTick() const`  
  Metronome getters
- `float32 GetSecondsPerTick() const`
- `float32 GetThirtySecondNotesPerMinute() const`
- `float32 GetTicksPerSecond() const`
- `bool IsClockRunning()`
- `NotifyOnQuantizationBoundary(FQuartzQuantizationBoundary InQuantizationBoundary, FOnQuartzCommandEventBP InDelegate = FOnQuartzCommandEventBP ( ), float32 InMsOffset = 0.000000)`
- `PauseClock(UQuartzClockHandle& ClockHandle)`
- `ResetTransport(FOnQuartzCommandEventBP InDelegate = FOnQuartzCommandEventBP ( ))`
- `ResetTransportQuantized(FQuartzQuantizationBoundary InQuantizationBoundary, FOnQuartzCommandEventBP InDelegate, UQuartzClockHandle& ClockHandle)`
- `ResumeClock(UQuartzClockHandle& ClockHandle)`
- `SetBeatsPerMinute(FQuartzQuantizationBoundary QuantizationBoundary, FOnQuartzCommandEventBP Delegate, UQuartzClockHandle& ClockHandle, float32 BeatsPerMinute = 60.000000)`
- `SetMillisecondsPerTick(FQuartzQuantizationBoundary QuantizationBoundary, FOnQuartzCommandEventBP Delegate, UQuartzClockHandle& ClockHandle, float32 MillisecondsPerTick = 100.000000)`  
  Metronome Alteration (setters)
- `SetSecondsPerTick(FQuartzQuantizationBoundary QuantizationBoundary, FOnQuartzCommandEventBP Delegate, UQuartzClockHandle& ClockHandle, float32 SecondsPerTick = 0.250000)`
- `SetThirtySecondNotesPerMinute(FQuartzQuantizationBoundary QuantizationBoundary, FOnQuartzCommandEventBP Delegate, UQuartzClockHandle& ClockHandle, float32 ThirtySecondsNotesPerMinute = 960.000000)`
- `SetTicksPerSecond(FQuartzQuantizationBoundary QuantizationBoundary, FOnQuartzCommandEventBP Delegate, UQuartzClockHandle& ClockHandle, float32 TicksPerSecond = 10.000000)`
- `StartClock(UQuartzClockHandle& ClockHandle)`  
  Clock manipulation
- `StartOtherClock(FName OtherClockName, FQuartzQuantizationBoundary InQuantizationBoundary, FOnQuartzCommandEventBP InDelegate = FOnQuartzCommandEventBP ( ))`  
  "other" clock manipulation
- `StopClock(bool CancelPendingEvents, UQuartzClockHandle& ClockHandle)`
- `SubscribeToAllQuantizationEvents(FOnQuartzMetronomeEventBP OnQuantizationEvent, UQuartzClockHandle& ClockHandle)`
- `SubscribeToQuantizationEvent(EQuartzCommandQuantization InQuantizationBoundary, FOnQuartzMetronomeEventBP OnQuantizationEvent, UQuartzClockHandle& ClockHandle)`  
  Metronome subscription
- `UnsubscribeFromAllTimeDivisions(UQuartzClockHandle& ClockHandle)`
- `UnsubscribeFromTimeDivision(EQuartzCommandQuantization InQuantizationBoundary, UQuartzClockHandle& ClockHandle)`

---

