### FIKRetargetRunIKRigOpSettings


**属性**:

- `TArray<FName> ExcludedGoals [Goals in this list will be excluded from the rig]`
- `float GoalDrawSize [Adjust size of goal debug drawing in viewport]`
- `float GoalDrawThickness [Adjust thickness of goal debug drawing in viewport]`
- `const UIKRigDefinition IKRigAsset [The IK Rig asset to run when this op is executed.]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `bool bDrawGoalBoneLocations [Draw locations of the source bone (pre-solve)]`
- `bool bDrawGoals [Draw IK goal locations.]`


**方法**:

- `FIKRetargetRunIKRigOpSettings& opAssign(FIKRetargetRunIKRigOpSettings Other)`

---

