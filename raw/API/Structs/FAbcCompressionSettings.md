### FAbcCompressionSettings


**属性**:

- `EBaseCalculationType BaseCalculationType [Determines how the final number of bases that are stored as morph targets are calculated]`
- `int MaxNumberOfBases [Will generate given fixed number of bases as morph targets]`
- `float32 MinimumNumberOfVertexInfluencePercentage [Minimum percentage of influenced vertices required for a morph target to be valid]`
- `float32 PercentageOfTotalBases [Will generate given percentage of the given bases as morph targets]`
- `bool bBakeMatrixAnimation [Whether or not Matrix-only animation should be baked out as vertex animation (or skipped?)]`
- `bool bMergeMeshes [Whether or not the individual meshes should be merged for compression purposes]`


**方法**:

- `FAbcCompressionSettings& opAssign(FAbcCompressionSettings Other)`

---

