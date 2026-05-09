### FUniformPointSamplingDataflowNode


Uniform Sampling on a DynamicMesh

**属性**:

- `int MaxNumSamples [Maximum number of samples requested. If 0 or default value, mesh will be maximally sampled]`
- `FLinearColor OverrideColor []`
- `int RandomSeed [Random Seed used to initialize sampling strategies]`
- `float32 SamplingRadius [Desired "radius" of sample points. Spacing between samples is at least 2x this value.]`
- `float32 SubSampleDensity [Density of subsampling used in Poisson strategy. Larger numbers mean "more accurate" (but slower) results.]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FUniformPointSamplingDataflowNode& opAssign(FUniformPointSamplingDataflowNode Other)`

---

