### FSourceEffectSimpleDelaySettings


**属性**:

- `float32 DelayAmount [Delay amount in seconds]`
- `float32 DryAmount [Gain stage on dry (non-delayed signal)]`
- `float32 Feedback [Amount to feedback into the delay line (because why not)]`
- `float32 SpeedOfSound [Speed of sound in meters per second when using distance-based delay]`
- `float32 WetAmount [Gain stage on wet (delayed) signal]`
- `bool bDelayBasedOnDistance [Whether or not to delay the audio based on the distance to the listener or use manual delay]`
- `bool bUseDistanceOverride [Whether or not to allow the attenuation distance override value vs the distance to listener to be used for distance-based delay.]`


**方法**:

- `FSourceEffectSimpleDelaySettings& opAssign(FSourceEffectSimpleDelaySettings Other)`

---

