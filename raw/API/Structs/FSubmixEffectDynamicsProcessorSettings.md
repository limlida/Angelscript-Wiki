### FSubmixEffectDynamicsProcessorSettings


Submix dynamics processor settings

**属性**:

- `float32 AttackTimeMsec [The amount of time to ramp into any dynamics processing effect]`
- `ESubmixEffectDynamicsProcessorType DynamicsProcessorType [Type of processor to apply]`
- `UAudioBus ExternalAudioBus [If set, uses output of provided audio bus as modulator of input signal for dynamics processor (Uses input signal as default modulator)]`
- `USoundSubmix ExternalSubmix [If set, uses output of provided submix as modulator of input signal for dynamics processor (Uses input signal as default modulator)]`
- `float32 InputGainDb [The input gain of the dynamics processor]`
- `float32 KeyGainDb [Gain to apply to key signal if key source not set to default (input).]`
- `FSubmixEffectDynamicProcessorFilterSettings KeyHighshelf [High Shelf filter settings for key signal (external signal if supplied or input signal if not)]`
- `FSubmixEffectDynamicProcessorFilterSettings KeyLowshelf [Low Shelf filter settings for key signal (external signal if supplied or input signal if not)]`
- `ESubmixEffectDynamicsKeySource KeySource`
- `float32 KneeBandwidthDb [The knee bandwidth of the processor to use]`
- `ESubmixEffectDynamicsChannelLinkMode LinkMode [Mode of peak detection if key signal is multi-channel]`
- `float32 LookAheadMsec [The amount of time to look ahead of the current audio (Allows for transients to be included in dynamics processing)]`
- `float32 OutputGainDb [The output gain of the dynamics processor]`
- `ESubmixEffectDynamicsPeakMode PeakMode [Mode of peak detection used on input key signal]`
- `float32 Ratio [The dynamics processor ratio used for compression/expansion]`
- `float32 ReleaseTimeMsec [The amount of time to release the dynamics processing effect]`
- `float32 ThresholdDb [The threshold at which to perform a dynamics processing operation]`
- `bool bAnalogMode [Toggles treating the attack and release envelopes as analog-style vs digital-style (Analog will respond a bit more naturally/slower)]`
- `bool bBypass [Whether or not to bypass effect]`
- `bool bKeyAudition [Audition the key modulation signal, bypassing enveloping and processing the input signal.]`


**方法**:

- `FSubmixEffectDynamicsProcessorSettings& opAssign(FSubmixEffectDynamicsProcessorSettings Other)`

---

