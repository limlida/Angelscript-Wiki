### FSourceEffectFilterAudioBusModulationSettings


**属性**:

- `UAudioBus AudioBus [Audio bus to use to modulate the filter]`
- `int EnvelopeFollowerAttackTimeMsec [The amplitude envelope follower attack time (in milliseconds) on the audio bus.]`
- `int EnvelopeFollowerReleaseTimeMsec [The amplitude envelope follower release time (in milliseconds) on the audio bus.]`
- `float32 EnvelopeGainMultiplier [An amount to scale the envelope follower output to map to the modulation values.]`
- `ESourceEffectFilterParam FilterParam [Which parameter to modulate.]`
- `float32 MaxFrequencyModulation [The frequency modulation value (in semitones from the filter frequency) to use when the envelope is loudest]`
- `float32 MaxResonanceModulation [The resonance modulation value to use when the envelope is loudest]`
- `float32 MinFrequencyModulation [The frequency modulation value (in semitones from the filter frequency) to use when the envelope is quietest]`
- `float32 MinResonanceModulation [The resonance modulation value to use when the envelope is quietest]`


**方法**:

- `FSourceEffectFilterAudioBusModulationSettings& opAssign(FSourceEffectFilterAudioBusModulationSettings Other)`

---

