### AAudioVolume


**属性**:

- `FInteriorSettings AmbientZoneSettings [Impacts sounds that have "Apply Ambient Volumes" set to true in their Sound Class, based on whether the sound sources and the player are inside or outside the audio volume]`
- `float32 Priority [Priority of this volume. In the case of overlapping volumes, the one with the highest priority
is chosen. The order is undefined if two or more overlapping volumes have the same priority.]`
- `FReverbSettings Settings [Reverb settings to use for this volume.]`
- `TArray<FAudioVolumeSubmixOverrideSettings> SubmixOverrideSettings [Submix effect chain override settings. Will override the effect chains on the given submixes when the conditions are met.]`
- `TArray<FAudioVolumeSubmixSendSettings> SubmixSendSettings [Submix send settings to use for this volume. Allows audio to dynamically send to submixes based on source and listener locations relative to this volume.]`
- `bool bEnabled [Whether this volume is currently enabled and able to affect sounds]`


**方法**:

- `SetEnabled(bool bNewEnabled)`
- `SetInteriorSettings(FInteriorSettings NewInteriorSettings)`
- `SetPriority(float32 NewPriority)`
- `SetReverbSettings(FReverbSettings NewReverbSettings)`
- `SetSubmixOverrideSettings(TArray<FAudioVolumeSubmixOverrideSettings> NewSubmixOverrideSettings)`
- `SetSubmixSendSettings(TArray<FAudioVolumeSubmixSendSettings> NewSubmixSendSettings)`

---

