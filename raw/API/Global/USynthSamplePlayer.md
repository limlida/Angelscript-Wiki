### USynthSamplePlayer


**属性**:

- `FOnSampleLoaded OnSampleLoaded`
- `FOnSamplePlaybackProgress OnSamplePlaybackProgress`
- `USoundWave SoundWave`


**方法**:

- `float32 GetCurrentPlaybackProgressPercent() const`
- `float32 GetCurrentPlaybackProgressTime() const`
- `float32 GetSampleDuration() const`
- `bool IsLoaded() const`
- `SeekToTime(float32 TimeSec, ESamplePlayerSeekType SeekType, bool bWrap = true)`
- `SetPitch(float32 InPitch, float32 TimeSec)`
- `SetScrubMode(bool bScrubMode)`
- `SetScrubTimeWidth(float32 InScrubTimeWidthSec)`
- `SetSoundWave(USoundWave InSoundWave)`  
  This will override the current sound wave if one is set, stop audio, and reload the new sound wave

---

