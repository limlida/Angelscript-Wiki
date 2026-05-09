### FSubmixEffectFilterSettings


FSubmixEffectFilterSettings
UStruct used to define user-exposed params for use with your effect.

**属性**:

- `ESubmixFilterAlgorithm FilterAlgorithm [What type of filter algorithm to use for the submix filter effect]`
- `float32 FilterFrequency [The output filter cutoff frequency (hz) [0.0, 20000.0]]`
- `float32 FilterQ [The output filter resonance (Q) [0.5, 10]]`
- `ESubmixFilterType FilterType [What type of filter to use for the submix filter effect]`


**方法**:

- `FSubmixEffectFilterSettings& opAssign(FSubmixEffectFilterSettings Other)`

---

