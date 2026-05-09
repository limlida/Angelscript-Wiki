### FSourceEffectStereoDelaySettings


**属性**:

- `EStereoDelaySourceEffect DelayMode [What mode to set the stereo delay effect.]`
- `float32 DelayRatio [Delay spread for left and right channels. Allows left and right channels to have differential delay amounts. Useful for stereo channel decorrelation.]`
- `float32 DelayTimeMsec [The base amount of delay in the left and right channels of the delay line.]`
- `float32 DryLevel [The dry level of the effect]`
- `float32 Feedback [The amount of audio to feedback into the delay line once the delay has been tapped.]`
- `float32 FilterFrequency [Cutoff frequency of the filter]`
- `float32 FilterQ [Q of the filter]`
- `EStereoDelayFiltertype FilterType [Filter type to feed feedback audio to]`
- `float32 WetLevel [The amount of delay effect to mix with the dry input signal into the effect.]`
- `bool bFilterEnabled [Whether or not to enable filtering]`


**方法**:

- `FSourceEffectStereoDelaySettings& opAssign(FSourceEffectStereoDelaySettings Other)`

---

