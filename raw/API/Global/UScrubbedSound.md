### UScrubbedSound


**方法**:

- `float32 GetPlayheadTime() const`  
  Returns the current playhead time
- `SetGrainDurationRange(FVector2D InGrainDurationRangeSeconds)`  
  Sets the scrub grain duration range.
- `SetIsScrubbing(bool bInIsScrubbing)`  
  Sets if the scrubber is actively scrubbing or not
- `SetIsScrubbingWhileStationary(bool bInScrubWhileStationary)`  
  Sets if the scrubber should scrub while playhead is stationary (after it hits it's target playhead)
- `SetPlayheadTime(float32 InPlayheadTimeSeconds)`  
  Sets the scrub time in seconds
- `SetSoundWave(USoundWave InSoundWave)`  
  Sets the sound wave to scrub

---

