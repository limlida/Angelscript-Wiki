### UConstantQSettings


UConstantQSettings

Settings for a UConstantQ analyzer.

**属性**:

- `float32 AnalysisPeriodInSeconds [Number of seconds between cqt measurements]`
- `float32 BandWidthStretch [Stretching factor to control overlap of adjacent bands.]`
- `EConstantQNormalizationEnum CQTNormalization [Normalization scheme used to generate band windows.]`
- `EConstantQFFTSizeEnum FFTSize [Size of FFT.]`
- `float32 NoiseFloorDb [Noise floor to use when normalizing CQT]`
- `int NumBands [Total number of resulting constant Q bands.]`
- `float32 NumBandsPerOctave [Number of bands within an octave.]`
- `EAudioSpectrumType SpectrumType [Type of spectrum to use.]`
- `float32 StartingFrequencyHz [Starting frequency for first bin of CQT]`
- `EFFTWindowType WindowType [Type of window to be applied to input audio]`
- `bool bDownmixToMono [If true, multichannel audio is downmixed to mono with equal amplitude scaling. If false, each channel gets it's own CQT result.]`

---

