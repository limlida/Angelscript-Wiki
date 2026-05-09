### UIKRigEffectorGoal


**属性**:

- `FName BoneName [The name of the bone that this Goal is located at.]`
- `FTransform CurrentTransform [The current transform of this Goal, in the Global Space of the character.]`
- `FName GoalName [The name used to refer to this goal from outside systems.
This is the name to use when referring to this Goal from Blueprint, Anim Graph, Control Rig or IK Retargeter.]`
- `FTransform InitialTransform [The initial transform of this Goal, as defined by the initial transform of the Goal's bone in the retarget pose.]`
- `float32 PositionAlpha [Range 0-1, default is 1. Blend between the input bone position (0.0) and the current goal position (1.0).]`
- `EIKRigGoalPreviewMode PreviewMode [Effects how this Goal transform is previewed in the IK Rig editor.
"Additive" interprets the Goal transform as being relative to the input pose. Useful for previewing animations.
"Absolute" pins the Goal transform to the Gizmo in the viewport.]`
- `float32 RotationAlpha [Range 0-1, default is 1. Blend between the input bone rotation (0.0) and the current goal rotation (1.0).]`
- `float32 SizeMultiplier [The size of the Goal gizmo drawing in the editor viewport.]`
- `float32 ThicknessMultiplier [The thickness of the Goal gizmo drawing in the editor viewport.]`
- `bool bExposePosition [Should position data be exposed in Blueprint]`
- `bool bExposeRotation [Should rotation data be exposed in Blueprint]`

---

