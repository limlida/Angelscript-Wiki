### FRigUnit_AimBone


Aligns the rotation of a primary and secondary axis of a bone to a global target.
Note: This node operates in global space!

**属性**:

- `FName Bone [The name of the bone to align]`
- `FRigUnit_AimBone_DebugSettings DebugSettings [The debug setting for the node]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigUnit_AimBone_Target Primary [The primary target for the aim]`
- `FRigUnit_AimBone_Target Secondary [The secondary target for the aim - also referred to as PoleVector / UpVector]`
- `float32 Weight [The weight of the change - how much the change should be applied]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_AimBone& opAssign(FRigUnit_AimBone Other)`

---

