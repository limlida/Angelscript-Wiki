### FIKRetargetPelvisMotionOpSettings


**属性**:

- `float AffectIKHorizontal [Range 0 to 1. Default 1. Control whether modifications made to the pelvis will affect the horizontal component of IK positions.
At 0 the IK positions are independent of the pelvis modifications.
At 1 the IK positions are calculated relative to the modified pelvis location.]`
- `float AffectIKVertical [Range 0 to 1. Default 0. Control whether modifications made to the pelvis will affect the vertical component of IK positions.
At 0 the IK positions are independent of the pelvis modifications.
At 1 the IK positions are calculated relative to the modified pelvis location.]`
- `float BlendToSourceTranslation [Range 0 to 1. Default 0. Blends the retarget pelvis' translation to the exact source location.
At 0 the pelvis is placed at the retargeted location.
At 1 the pelvis is placed at the location of the source's pelvis bone.]`
- `FVector BlendToSourceTranslationWeights [Per-axis weights for the Blend to Source.]`
- `float DebugDrawSize [Adjust size of the debug drawing]`
- `float DebugDrawThickness [Adjust thickness of the debug drawing]`
- `float FloorConstraintWeight [Range 0 to 1. Default is 0. Set to a value of 1 to turn the pelvis floor constraint ON.
When ON, the floor constraint will adjust the vertical Pelvis motion separately according to the following rules:
1. When the source pelvis is LOWER than the ref pose, the target pelvis will be lowered proportional to their relative crotch heights.
2. When the source pelvis is HIGHER than the ref pose, the target pelvis will be raised an identical amount while maintaining any vertical offset in the ref pose.]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `float RotationAlpha [Range 0 to 1. Default 1. Blends the amount of retargeted pelvis rotation to apply.
At 0 the pelvis is left at the rotation from the retarget pose.
At 1 the pelvis is rotated fully to match the source pelvis rotation.]`
- `FRotator RotationOffsetGlobal [Applies a static global-space rotation offset to the pelvis.]`
- `FRotator RotationOffsetLocal [Applies a static local-space rotation offset to the pelvis.]`
- `float ScaleHorizontal [Default 1. Scales the translation of the pelvis in the horizontal plane (X,Y).]`
- `float ScaleVertical [Default 1. Scales the translation of the pelvis in the vertical direction (Z).]`
- `float SourceCrotchOffset [A negative vertical offset in cm relative to the Pelvis bone of the SOURCE.
NOTE: Adjust this until the green dot is located roughly at the crotch of the character.]`
- `FBoneReference SourcePelvisBone [The Pelvis bone on the source skeleton to copy motion FROM.]`
- `float TargetCrotchOffset [A negative vertical offset in cm relative to the Pelvis bone of the TARGET.
NOTE: Adjust this until the green dot is located roughly at the crotch of the character.]`
- `FBoneReference TargetPelvisBone [The Pelvis bone on the target skeleton to copy motion TO.]`
- `float TranslationAlpha [Range 0 to 1. Default 1. Blends the amount of retargeted pelvis translation to apply.
At 0 the pelvis is left at the position from the retarget pose.
At 1 the pelvis will follow the source motion according to the behavior defined in the subsequent settings.]`
- `FVector TranslationOffsetGlobal [Applies a static global-space translation offset to the pelvis.]`
- `FVector TranslationOffsetLocal [Applies a static local-space translation offset to the pelvis.]`


**方法**:

- `FIKRetargetPelvisMotionOpSettings& opAssign(FIKRetargetPelvisMotionOpSettings Other)`

---

