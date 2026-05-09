### FRBFParams


Parameters used by RBF solver

**属性**:

- `ERBFDistanceMethod DistanceMethod`
- `ERBFFunctionType Function`
- `float32 MedianMax [Maximum distance used for median]`
- `float32 MedianMin [Minimum distance used for median]`
- `FVector MedianReference [Rotation or position of median (used for normalization)]`
- `ERBFNormalizeMethod NormalizeMethod [Method to use for normalizing the weight]`
- `float32 Radius [Default radius for each target.]`
- `ERBFSolverType SolverType [Specifies the type of solver to use. The additive solver requires normalization, for the
              most part, whereas the Interpolative solver is not as reliant on it. The interpolative
              solver also has smoother blending, whereas the additive solver requires more targets but
              has a more precise control over the influence of each target.]`
- `EBoneAxis TwistAxis [Axis to use when DistanceMethod is SwingAngle]`
- `float32 WeightThreshold [Weight below which we shouldn't bother returning a contribution from a target]`
- `bool bAutomaticRadius [Automatically pick the radius based on the average distance between targets]`


**方法**:

- `FRBFParams& opAssign(FRBFParams Other)`

---

