### FNonUniformPointSamplingDataflowNode


NonUniform Sampling on a DynamicMesh

**属性**:

- `int MaxNumSamples [Maximum number of samples requested. If 0 or default value, mesh will be maximally sampled]`
- `float32 MaxSamplingRadius [If MaxSampleRadius > SampleRadius, then output sample radius will be in range [SampleRadius, MaxSampleRadius]]`
- `FLinearColor OverrideColor []`
- `int RandomSeed [Random Seed used to initialize sampling strategies]`
- `float32 SamplingRadius [Desired "radius" of sample points. Spacing between samples is at least 2x this value.]`
- `ENonUniformSamplingDistributionMode SizeDistribution [SizeDistribution setting controls the distribution of sample radii]`
- `float32 SizeDistributionPower [SizeDistributionPower is used to control how extreme the Size Distribution shift is. Valid range is [1,10]]`
- `float32 SubSampleDensity [Density of subsampling used in Poisson strategy. Larger numbers mean "more accurate" (but slower) results.]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FNonUniformPointSamplingDataflowNode& opAssign(FNonUniformPointSamplingDataflowNode Other)`

---

