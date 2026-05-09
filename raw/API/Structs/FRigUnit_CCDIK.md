### FRigUnit_CCDIK


The CCID solver can solve N-Bone chains using
the Cyclic Coordinate Descent Inverse Kinematics algorithm.
For now this node supports single effector chains only.

**属性**:

- `float32 BaseRotationLimit [The general rotation limit to be applied to bones]`
- `FName EffectorBone [The last bone in the chain to solve - the effector]`
- `FTransform EffectorTransform [The transform of the effector in global space]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `int MaxIterations [The maximum number of iterations. Values between 4 and 16 are common.]`
- `float32 Precision [The precision to use for the fabrik solver]`
- `TArray<FRigUnit_CCDIK_RotationLimit> RotationLimits [Defines the limits of rotation per bone.]`
- `FName StartBone [The first bone in the chain to solve]`
- `float32 Weight [The weight of the solver - how much the IK should be applied.]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`
- `bool bStartFromTail [If set to true the direction of the solvers is flipped.]`


**方法**:

- `FRigUnit_CCDIK& opAssign(FRigUnit_CCDIK Other)`

---

