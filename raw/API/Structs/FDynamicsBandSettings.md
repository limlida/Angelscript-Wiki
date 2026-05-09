### FDynamicsBandSettings


**属性**:

- `float32 AttackTimeMsec [The amount of time to ramp into any dynamics processing effect in milliseconds.]`
- `float32 CrossoverTopFrequency [Frequency of the crossover between this band and the next. The last band will have this property ignored]`
- `float32 InputGainDb [The input gain of the dynamics processor in dB]`
- `float32 KneeBandwidthDb [The knee bandwidth of the compressor to use in dB]`
- `float32 OutputGainDb [The output gain of the dynamics processor in dB]`
- `float32 Ratio [The dynamics processor ratio -- has different meaning depending on the processor type.]`
- `float32 ReleaseTimeMsec [The amount of time to release the dynamics processing effect in milliseconds]`
- `float32 ThresholdDb [The threshold at which to perform a dynamics processing operation]`


**方法**:

- `FDynamicsBandSettings& opAssign(FDynamicsBandSettings Other)`

---

