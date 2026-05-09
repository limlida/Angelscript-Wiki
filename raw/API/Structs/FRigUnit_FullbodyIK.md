### FRigUnit_FullbodyIK


Based on Jacobian solver at core, this can solve multi chains within a root using multi effectors

**属性**:

- `TArray<FFBIKConstraintOption> Constraints`
- `FFBIKDebugOption DebugOption`
- `TArray<FFBIKEndEffector> Effectors`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FMotionProcessInput MotionProperty []`
- `FRigElementKey Root [The first bone in the chain to solve]`
- `FSolverInput SolverProperty []`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_FullbodyIK& opAssign(FRigUnit_FullbodyIK Other)`

---

