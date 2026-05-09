### FRigUnit_AimBoneMath


Outputs an aligned transform of a primary and secondary axis of an input transform to a world target.
Note: This node operates in world space!

**属性**:

- `FRigUnit_AimBone_DebugSettings DebugSettings [The debug setting for the node]`
- `FTransform InputTransform [The transform (in global space) before the aim was applied (optional)]`
- `FRigUnit_AimItem_Target Primary [The primary target for the aim]`
- `FTransform Result [The resulting transform]`
- `FRigUnit_AimItem_Target Secondary [The secondary target for the aim - also referred to as PoleVector / UpVector]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_AimBoneMath& opAssign(FRigUnit_AimBoneMath Other)`

---

