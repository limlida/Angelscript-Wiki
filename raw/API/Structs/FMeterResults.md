### FMeterResults


The results of the meter analysis.

**属性**:

- `float32 ClippingValue [The value (if non-zero) if clipping was detected above the clipping threshold]`
- `float32 MeterValue [The meter value]`
- `int NumSamplesClipping [The number of samples in the period which were above the clipping threshold. Will be 0 if no clipping was detected.]`
- `float32 PeakValue [The peak value]`
- `float32 TimeSeconds [The time in seconds since analysis began of this meter analysis result]`


**方法**:

- `FMeterResults& opAssign(FMeterResults Other)`

---

