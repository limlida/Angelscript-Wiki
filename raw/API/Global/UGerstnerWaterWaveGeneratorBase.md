### UGerstnerWaterWaveGeneratorBase


Base class for the gerstner water wave generation. This can be overridden by either C++ classes or Blueprint classes.
Simply implement GenerateGerstnerWaves (or GenerateGerstnerWaves_Implementation in C++) to return the set of waves to be used. Waves will automatically be sorted based on wave length.

**方法**:

- `GenerateGerstnerWaves(TArray<FGerstnerWave>& OutWaves) const`

---

