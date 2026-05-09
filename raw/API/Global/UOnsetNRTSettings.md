### UOnsetNRTSettings


UOnsetNRTSettings

Settings for a UOnsetNRT analyzer.

**属性**:

- `float32 GranularityInSeconds [Onset timestamp granularity onsets. Lower granularity takes longer to compute.]`
- `float32 MaximumFrequency [Starting frequency for onset anlaysis.]`
- `float32 MinimumFrequency [Starting frequency for onset anlaysis.]`
- `float32 Sensitivity [Sensitivity of onset detector. Higher sensitivity will find more onsets.]`
- `bool bDownmixToMono [If true, multichannel audio is downmixed to mono with equal amplitude scaling. If false, each channel gets it's own onset result.]`

---

