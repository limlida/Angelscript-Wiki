### FSoundClassAdjuster


Elements of data for sound group volume control

**属性**:

- `float32 LowPassFilterFrequency [Lowpass filter cutoff frequency to apply to sound sources.]`
- `float32 PitchAdjuster [A multiplier applied to the pitch.]`
- `USoundClass SoundClassObject [The sound class this adjuster affects.]`
- `float32 VoiceCenterChannelVolumeAdjuster [A multiplier applied to VoiceCenterChannelVolume.]`
- `float32 VolumeAdjuster [A multiplier applied to the volume.]`
- `bool bApplyToChildren [Set to true to apply this adjuster to all children of the sound class.]`


**方法**:

- `FSoundClassAdjuster& opAssign(FSoundClassAdjuster Other)`

---

