### FSubmixEffectReverbSettings


**属性**:

- `float32 AirAbsorptionGainHF [Air Absorption - 0.0 < 0.994 < 1.0 - lower value means more absorption]`
- `float32 DecayHFRatio [Decay High Frequency Ratio - 0.1 < 0.83 < 2.0 - how much quicker or slower the high frequencies decay relative to the lower frequencies.]`
- `float32 DecayTime [Decay Time - 0.1 < 1.49 < 20.0 Seconds - larger is more reverb]`
- `float32 Density [Density - 0.0 < 0.85 < 1.0 - Coloration of the late reverb - lower value is more grainy]`
- `float32 Diffusion [Diffusion - 0.0 < 0.85 < 1.0 - Echo density in the reverberation decay - lower is more grainy]`
- `float32 DryLevel [Overall dry level of the reverb effect]`
- `float32 Gain [Reverb Gain - 0.0 < 0.32 < 1.0 - overall reverb gain - master volume control]`
- `float32 GainHF [Reverb Gain High Frequency - 0.0 < 0.89 < 1.0 - attenuates the high frequency reflected sound]`
- `float32 LateDelay [Late Reverb Delay - 0.0 < 0.011 < 0.1 Seconds - time difference between late reverb and first reflections]`
- `float32 LateGain [Late Reverb Gain - 0.0 < 1.26 < 10.0 - gain of the late reverb]`
- `float32 ReflectionsDelay [Reflections Delay - 0.0 < 0.007 < 0.3 Seconds - the time between the listener receiving the direct path sound and the first reflection]`
- `float32 ReflectionsGain [Reflections Gain - 0.0 < 0.05 < 3.16 - controls the amount of initial reflections]`
- `float32 WetLevel [Overall wet level of the reverb effect]`
- `bool bBypass [Bypasses reverb]`
- `bool bBypassEarlyReflections [Bypasses early reflections]`
- `bool bBypassLateReflections [Bypasses late reflections.]`


**方法**:

- `FSubmixEffectReverbSettings& opAssign(FSubmixEffectReverbSettings Other)`

---

