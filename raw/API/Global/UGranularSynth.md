### UGranularSynth


**方法**:

- `float32 GetCurrentPlayheadTime() const`
- `float32 GetSampleDuration() const`
- `bool IsLoaded() const`
- `NoteOff(float32 Note, bool bKill = false)`
- `NoteOn(float32 Note, int Velocity, float32 Duration = - 1.000000)`
- `SetAttackTime(float32 AttackTimeMsec)`
- `SetDecayTime(float32 DecayTimeMsec)`
- `SetGrainDuration(float32 BaseDurationMsec, FVector2D DurationRange = FVector2D ( ))`
- `SetGrainEnvelopeType(EGranularSynthEnvelopeType EnvelopeType)`
- `SetGrainPan(float32 BasePan, FVector2D PanRange = FVector2D ( ))`
- `SetGrainPitch(float32 BasePitch, FVector2D PitchRange = FVector2D ( ))`
- `SetGrainProbability(float32 InGrainProbability)`
- `SetGrainsPerSecond(float32 InGrainsPerSecond)`
- `SetGrainVolume(float32 BaseVolume, FVector2D VolumeRange = FVector2D ( ))`
- `SetPlaybackSpeed(float32 InPlayheadRate)`
- `SetPlayheadTime(float32 InPositionSec, float32 LerpTimeSec = 0.000000, EGranularSynthSeekType SeekType = EGranularSynthSeekType :: FromBeginning)`
- `SetReleaseTimeMsec(float32 ReleaseTimeMsec)`
- `SetScrubMode(bool bScrubMode)`
- `SetSoundWave(USoundWave InSoundWave)`  
  This will override the current sound wave if one is set, stop audio, and reload the new sound wave
- `SetSustainGain(float32 SustainGain)`

---

