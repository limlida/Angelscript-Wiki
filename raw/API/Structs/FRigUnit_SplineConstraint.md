### FRigUnit_SplineConstraint


Fits a given chain to a spline curve.
Additionally provides rotational control matching the features of the Distribute Rotation node.

**属性**:

- `EControlRigCurveAlignment Alignment [Specifies how to align the chain on the curve]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `TArray<FRigElementKey> Items [The items to align]`
- `float32 Maximum [The maximum U value to use on the curve]`
- `float32 Minimum [The minimum U value to use on the curve]`
- `FVector PrimaryAxis`
- `FVector SecondaryAxis`
- `FControlRigSpline Spline [The curve to align to]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_SplineConstraint& opAssign(FRigUnit_SplineConstraint Other)`

---

