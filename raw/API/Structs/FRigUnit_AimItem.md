### FRigUnit_AimItem


Aligns the rotation of a primary and secondary axis of a bone to a global target.
Note: This node operates in global space!

**属性**:

- `FRigUnit_AimBone_DebugSettings DebugSettings [The debug setting for the node]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Item [The name of the item to align]`
- `FRigUnit_AimItem_Target Primary [The primary target for the aim]`
- `FRigUnit_AimItem_Target Secondary [The secondary target for the aim - also referred to as PoleVector / UpVector]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_AimItem& opAssign(FRigUnit_AimItem Other)`

---

