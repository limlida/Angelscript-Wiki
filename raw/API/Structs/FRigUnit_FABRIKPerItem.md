### FRigUnit_FABRIKPerItem


The FABRIK solver can solve N-Bone chains using
the Forward and Backward Reaching Inverse Kinematics algorithm.
For now this node supports single effector chains only.

**属性**:

- `FTransform EffectorTransform [The transform of the effector in global space]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKeyCollection Items [The chain to use]`
- `int MaxIterations [The maximum number of iterations. Values between 4 and 16 are common.]`
- `float32 Precision [The precision to use for the fabrik solver]`
- `float32 Weight [The weight of the solver - how much the IK should be applied.]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`
- `bool bSetEffectorTransform [The option to set the effector transform]`


**方法**:

- `FRigUnit_FABRIKPerItem& opAssign(FRigUnit_FABRIKPerItem Other)`

---

