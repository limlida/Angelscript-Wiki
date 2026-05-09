### FWaveTableTransform


**属性**:

- `EWaveTableCurve Curve [The curve to apply when transforming the output.]`
- `UCurveFloat CurveShared [Asset curve reference to apply if output curve type is set to 'Shared.']`
- `float32 Duration [Duration of curve or file.  Only valid if parent SampleRate is set and SamplingMode is set to 'FixedSampleRate'
(If set to 'FixedResolution', duration is variable depending on the resolution (number of samples in the table data)
and device's sample rate.]`
- `float32 Scalar [When curve set to log, exponential or exponential inverse, value is factor 'b' in following equations with output 'y' and input 'x':
Exponential: y = x * 10^-b(1-x)
Exponential (Inverse): y = ((x - 1) * 10^(-bx)) + 1
Logarithmic: y = b * log(x) + 1]`
- `FWaveTableSettings WaveTableSettings []`


**方法**:

- `FWaveTableTransform& opAssign(FWaveTableTransform Other)`

---

