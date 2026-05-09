### FIKRigGoal


**属性**:

- `FName BoneName [Name of the bone associate with this goal.]`
- `FName Name [Name of the IK Goal. Must correspond to the name of a Goal in the target IKRig asset.]`
- `FVector Position [Position of the IK goal in Component Space of target actor component.]`
- `float32 PositionAlpha [Range 0-1, default is 1.0. Smoothly blends the Goal position from the input pose (0.0) to the Goal position (1.0).]`
- `EIKRigGoalSpace PositionSpace [The space that the goal position is in.
"Additive" treats the goal transform as an additive offset relative to the Bone at the effector.
"Component" treats the goal transform as being in the space of the Skeletal Mesh Actor Component.
"World" treats the goal transform as being in the space of the World.]`
- `FRotator Rotation [Rotation of the IK goal in Component Space of target actor component.]`
- `float32 RotationAlpha [Range 0-1, default is 1.0. Smoothly blends the Goal rotation from the input pose (0.0) to the Goal rotation (1.0).]`
- `EIKRigGoalSpace RotationSpace [The space that the goal rotation is in.
"Additive" treats the goal transform as an additive offset relative to the Bone at the effector.
"Component" treats the goal transform as being in the space of the Skeletal Mesh Actor Component.
"World" treats the goal transform as being in the space of the World.]`
- `FBoneReference SourceBone [When TransformSource is set to "Bone" mode, the Position and Rotation will be driven by this Bone's input transform.
When using a Bone as the transform source, the Position and Rotation Alpha values can still be set as desired.
But the PositionSpace and RotationSpace are no longer relevant and will not be used.]`
- `EIKRigGoalTransformSource TransformSource [Set the source of the transform data for the Goal.
"Manual Input" uses the values provided by the blueprint node pin.
"Bone" uses the transform of the bone provided by OptionalSourceBone.
"Actor Component" uses the transform supplied by any Actor Components that implements the IIKGoalCreatorInterface]`


**方法**:

- `FIKRigGoal& opAssign(FIKRigGoal Other)`

---

