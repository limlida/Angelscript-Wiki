### FAnimNode_IKRig


**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType [alpha value handler *]`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `float32 DebugScale [Adjust size of debug drawing.]`
- `TArray<FIKRigGoal> Goals [The input goal transforms used by the IK Rig solvers.]`
- `UIKRigDefinition RigDefinitionAsset [The IK rig to use to modify the incoming source pose.]`
- `FPoseLink Source [The input pose to start the IK solve relative to.]`
- `bool bAlphaBoolEnabled`
- `bool bEnableDebugDraw [Toggle debug drawing of goals when node is selected.]`
- `bool bStartFromRefPose [optionally ignore the input pose and start from the reference pose each solve]`


**方法**:

- `FAnimNode_IKRig& opAssign(FAnimNode_IKRig Other)`

---

