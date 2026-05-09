### UIKRigComponent


**方法**:

- `ClearAllGoals()`  
  Remove all stored goals in this component.
- `SetIKRigGoal(FIKRigGoal Goal)`  
  Apply a IKRigGoal and store it on this rig. Goal transform assumed in Component Space of Skeletal Mesh.
- `SetIKRigGoalPositionAndRotation(FName GoalName, FVector Position, FQuat Rotation, float32 PositionAlpha, float32 RotationAlpha)`  
  Set an IK Rig Goal position and rotation (assumed in Component Space of Skeletal Mesh) with separate alpha values.
- `SetIKRigGoalTransform(FName GoalName, FTransform Transform, float32 PositionAlpha, float32 RotationAlpha)`  
  Set an IK Rig Goal transform (assumed in Component Space of Skeletal Mesh) with separate alpha values.

---

