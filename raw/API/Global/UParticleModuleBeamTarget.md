### UParticleModuleBeamTarget


**属性**:

- `float32 LockRadius [Default target-point information to use if the beam method is endpoint.]`
- `FRawDistributionVector Target [Default target-point information to use if the beam method is endpoint.]`
- `Beam2SourceTargetMethod TargetMethod [The method flag.]`
- `FName TargetName [The target point sources of each beam, when using the end point method.]`
- `FRawDistributionFloat TargetStrength [The strength of the tangent from the Target point for each beam.]`
- `FRawDistributionVector TargetTangent [The tangent for the Target point for each beam.]`
- `Beam2SourceTargetTangentMethod TargetTangentMethod [The method to use for the Target tangent.]`
- `bool bLockTarget [Whether to lock the Target to the life of the particle.]`
- `bool bLockTargetStength [Whether to lock the Target to the life of the particle.]`
- `bool bLockTargetTangent [Whether to lock the Target to the life of the particle.]`
- `bool bTargetAbsolute [Whether to treat the as an absolute position in world space.]`

---

