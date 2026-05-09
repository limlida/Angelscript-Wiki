### FParticleRandomSeedInfo


**属性**:

- `FName ParameterName [The name to expose to the placed instances for setting this seed]`
- `TArray<int> RandomSeeds [The random seed values to utilize for the module.
More than 1 means the instance will randomly select one.]`
- `bool bGetSeedFromInstance [If true, the module will attempt to get the seed from the owner
instance. If that fails, it will fall back to getting it from
the RandomSeeds array.]`
- `bool bInstanceSeedIsIndex [If true, the seed value retrieved from the instance will be an
index into the array of seeds.]`
- `bool bRandomlySelectSeedArray [If true, then randomly select a seed entry from the RandomSeeds array]`
- `bool bResetSeedOnEmitterLooping [If true, then reset the seed upon the emitter looping.
For looping environmental effects this should likely be set to false to avoid
a repeating pattern.]`


**方法**:

- `FParticleRandomSeedInfo& opAssign(FParticleRandomSeedInfo Other)`

---

