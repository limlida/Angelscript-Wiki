### FAnimNode_OffsetRootBone


**属性**:

- `FVector CollisionTestShapeOffset []`
- `float32 CollisionTestShapeRadius []`
- `EOffsetRootBone_CollisionTestingMode CollisionTestingMode []`
- `EWarpingEvaluationMode EvaluationMode []`
- `FVector GroundNormal [Surface normal of the ground]`
- `float32 MaxRotationError [How much the offset can deviate from the mesh component's rotation in degrees
Values lower than 0 disable this limit]`
- `float32 MaxTranslationError [How much the offset can deviate from the mesh component's translation in units
Values lower than 0 disable this limit]`
- `FRotator RotationDelta [Delta applied to the rotation offset this frame.
For procedural values, consider adjusting the input by delta time.]`
- `float32 RotationHalfLife [Controls how fast the rotation offset is blended out
Values closer to 0 make it faster]`
- `EOffsetRootBoneMode RotationMode [The rotation offset behavior mode]`
- `float32 RotationSpeedRatio [How much the offset can blend out, relative to the incoming rotation speed
i.e. If root motion is rotating at 90 degrees/s, at 0.5, the offset can blend out at 45 degree/s]`
- `FPoseLink Source`
- `FVector TranslationDelta [Delta applied to the translation offset this frame.
For procedural values, consider adjusting the input by delta time.]`
- `float32 TranslationHalflife [Controls how fast the translation offset is blended out
Values closer to 0 make it faster]`
- `EOffsetRootBoneMode TranslationMode [The translation offset behavior mode]`
- `float32 TranslationSpeedRatio [How much the offset can blend out, relative to the incoming translation speed
i.e. If root motion is moving at 400cm/s, at 0.5, the offset can blend out at 200cm/s]`
- `bool bClampToRotationVelocity [Whether to limit the offset's rotation interpolation speed to the velocity on the incoming motion
Enabling this prevents the offset sliding when there's little to no rotation speed]`
- `bool bClampToTranslationVelocity [Whether to limit the offset's translation interpolation speed to the velocity on the incoming motion
Enabling this prevents the offset sliding when there's little to no translation speed]`
- `bool bOnGround [When OnGround is true, root motion velicities will be projected onto the ground surface]`
- `bool bResetEveryFrame []`


**方法**:

- `FAnimNode_OffsetRootBone& opAssign(FAnimNode_OffsetRootBone Other)`

---

