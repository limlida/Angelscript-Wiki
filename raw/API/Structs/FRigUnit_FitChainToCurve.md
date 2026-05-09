### FRigUnit_FitChainToCurve


Fits a given chain to a four point bezier curve.
Additionally provides rotational control matching the features of the Distribute Rotation node.

**属性**:

- `EControlRigCurveAlignment Alignment [Specifies how to align the chain on the curve]`
- `FRigVMFourPointBezier Bezier [The curve to align to]`
- `FRigUnit_FitChainToCurve_DebugSettings DebugSettings`
- `FName EndBone [The name of the last bone to align]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `float32 Maximum [The maximum U value to use on the curve]`
- `float32 Minimum [The minimum U value to use on the curve]`
- `FVector PoleVectorPosition [The the position of the pole vector used for aligning the secondary axis.
Only has an effect if the secondary axis is set.]`
- `FVector PrimaryAxis [The major axis being aligned - along the bone]`
- `ERigVMAnimEasingType RotationEaseType [The easing to use between to rotations.]`
- `TArray<FRigUnit_FitChainToCurve_Rotation> Rotations [The list of rotations to be applied along the curve]`
- `int SamplingPrecision [The number of samples to use on the curve. Clamped at 64.]`
- `FVector SecondaryAxis [The minor axis being aligned - towards the pole vector.
You can use (0.0, 0.0, 0.0) to disable it.]`
- `FName StartBone [The name of the first bone to align]`
- `float32 Weight [The weight of the solver - how much the rotation should be applied]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_FitChainToCurve& opAssign(FRigUnit_FitChainToCurve Other)`

---

