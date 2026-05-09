### FSourceEffectDynamicsProcessorSettings


**属性**:

- `float32 AttackTimeMsec [The amount of time to ramp into any dynamics processing effect]`
- `ESourceEffectDynamicsProcessorType DynamicsProcessorType [Type of processor to apply]`
- `float32 InputGainDb [The input gain of the dynamics processor]`
- `float32 KneeBandwidthDb [The knee bandwidth of the processor to use]`
- `float32 LookAheadMsec [The amount of time to look ahead of the current audio (Allows for transients to be included in dynamics processing)]`
- `float32 OutputGainDb [The output gain of the dynamics processor]`
- `ESourceEffectDynamicsPeakMode PeakMode [Mode of peak detection used on input key signal]`
- `float32 Ratio [The dynamics processor ratio used for compression/expansion]`
- `float32 ReleaseTimeMsec [The amount of time to release the dynamics processing effect]`
- `float32 ThresholdDb [The threshold at which to perform a dynamics processing operation]`
- `bool bAnalogMode [Toggles treating the attack and release envelopes as analog-style vs digital-style (Analog will respond a bit more naturally/slower)]`
- `bool bBypass [Whether or not to bypass effect]`
- `bool bStereoLinked [Whether the left and right channels are linked when determining envelopes]`


**方法**:

- `FSourceEffectDynamicsProcessorSettings& opAssign(FSourceEffectDynamicsProcessorSettings Other)`

---

