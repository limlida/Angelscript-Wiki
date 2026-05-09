### FReverbSettings


Struct encapsulating settings for reverb effects.

**属性**:

- `float32 FadeTime [Time to fade from the current reverb settings into this setting, in seconds.]`
- `UReverbEffect ReverbEffect [The reverb asset to employ.]`
- `USoundEffectSubmixPreset ReverbPluginEffect [This is used to apply plugin-specific settings when a Reverb Plugin is being used.]`
- `float32 Volume [Volume level of the reverb effect.]`
- `bool bApplyReverb [Whether to apply the reverb settings below.]`


**方法**:

- `FReverbSettings& opAssign(FReverbSettings Other)`

---

