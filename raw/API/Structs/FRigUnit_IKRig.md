### FRigUnit_IKRig


Supply an IK Rig asset and provide goal transforms to run IK on the skeleton.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `TArray<FIKRigGoalInput> Goals [A list of Goals to solve. These must match what is in the IK Rig, any missing Goals will have their alphas set to zero.]`
- `UIKRigDefinition IKRigAsset [An IK Rig asset to be evaluated.]`


**方法**:

- `FRigUnit_IKRig& opAssign(FRigUnit_IKRig Other)`

---

