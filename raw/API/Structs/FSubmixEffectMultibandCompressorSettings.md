### FSubmixEffectMultibandCompressorSettings


A submix dynamics processor

**属性**:

- `TArray<FDynamicsBandSettings> Bands [Each band is a full dynamics processor, affecting at a unique frequency range]`
- `ESubmixEffectDynamicsProcessorType DynamicsProcessorType [Controls how each band will react to audio above its threshold]`
- `UAudioBus ExternalAudioBus [If set, uses output of provided submix as modulator of input signal for dynamics processor (Uses input signal as default modulator)]`
- `USoundSubmix ExternalSubmix [If set, uses output of provided submix as modulator of input signal for dynamics processor (Uses input signal as default modulator)]`
- `float32 KeyGainDb [Gain to apply to key signal if external input is supplied]`
- `ESubmixEffectDynamicsKeySource KeySource`
- `ESubmixEffectDynamicsChannelLinkMode LinkMode [Whether to compress all channels equally, and how to evaluate the overall level]`
- `float32 LookAheadMsec [The amount of time to look ahead of the current audio. Allows for transients to be included in dynamics processing.]`
- `ESubmixEffectDynamicsPeakMode PeakMode [Controls how quickly the bands will react to a signal above its threshold]`
- `bool bAnalogMode [Toggles treating the attack and release envelopes as analog-style vs digital-style. Analog will respond a bit more naturally/slower.]`
- `bool bBypass [Whether or not to bypass effect]`
- `bool bFourPole [Turning off FourPole mode will use cheaper, shallower 2-pole crossovers]`
- `bool bKeyAudition [Audition the key modulation signal, bypassing enveloping and processing the input signal.]`


**方法**:

- `FSubmixEffectMultibandCompressorSettings& opAssign(FSubmixEffectMultibandCompressorSettings Other)`

---

