### FIKRigGoalInput


**属性**:

- `FName GoalName [The name of the goal to affect. Must match the name in the IK Rig.]`
- `float PositionAlpha [Range 0-1, default 1. Blends the Goal position from the input pose position to the Goal position.]`
- `float RotationAlpha [Range 0-1, default 1. Blends the Goal rotation from the input pose rotation to the Goal rotation.]`
- `FTransform Transform [The position and rotation target for the IK Goal.]`


**方法**:

- `FIKRigGoalInput& opAssign(FIKRigGoalInput Other)`

---

