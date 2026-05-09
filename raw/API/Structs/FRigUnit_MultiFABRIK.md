### FRigUnit_MultiFABRIK


The FABRIK solver can solve multi chains within a root using multi effectors
the Forward and Backward Reaching Inverse Kinematics algorithm.
For now this node supports single effector chains only.

**属性**:

- `TArray<FRigUnit_MultiFABRIK_EndEffector> Effectors`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `int MaxIterations [The maximum number of iterations. Values between 4 and 16 are common.]`
- `float32 Precision [The precision to use for the fabrik solver]`
- `FName RootBone [The first bone in the chain to solve]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_MultiFABRIK& opAssign(FRigUnit_MultiFABRIK Other)`

---

