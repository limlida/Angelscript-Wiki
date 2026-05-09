### UParticleModuleBeamNoise


**属性**:

- `int Frequency [The frequency of noise points.]`
- `float32 FrequencyDistance [The distance at which to deposit noise points.
If 0.0, then use the static frequency value.
If not, distribute noise points at the given distance, up to the static Frequency value.
At that point, evenly distribute them along the beam.]`
- `int Frequency_LowRange [If not 0, then the frequency will select a random value in the range
        [Frequency_LowRange..Frequency]]`
- `float32 NoiseLockRadius [Default target-point information to use if the beam method is endpoint.]`
- `float32 NoiseLockTime [How long the  noise points should be locked - 0.0 indicates forever.]`
- `FRawDistributionVector NoiseRange [The noise point ranges.]`
- `FRawDistributionFloat NoiseRangeScale [A scale factor that will be applied to the noise range.]`
- `FRawDistributionFloat NoiseScale [The scale factor to apply to noise range.
The lookup value is determined by dividing the number of noise points present by the
maximum number of noise points (Frequency).]`
- `FRawDistributionVector NoiseSpeed [The speed with which to move each noise point.]`
- `FRawDistributionFloat NoiseTangentStrength [The strength of noise tangents, if enabled.]`
- `float32 NoiseTension [The tension to apply to the tessellated noise line.]`
- `int NoiseTessellation [The amount of tessellation between noise points.]`
- `bool bApplyNoiseScale [If true, apply the noise scale to the beam.]`
- `bool bLowFreq_Enabled [Is low frequency noise enabled.]`
- `bool bNRScaleEmitterTime [If true,  the NoiseRangeScale will be grabbed based on the emitter time.
If false, the NoiseRangeScale will be grabbed based on the particle time.]`
- `bool bOscillate [Whether the noise points should be oscillate.]`
- `bool bSmooth [Whether the noise movement should be smooth or 'jerky'.]`
- `bool bTargetNoise [Whether to apply noise to the target point (or end of line in distance mode...)
If true, the beam could potentially 'leave' the target...]`
- `bool bUseNoiseTangents [If true, calculate tangents at each noise point.]`

---

