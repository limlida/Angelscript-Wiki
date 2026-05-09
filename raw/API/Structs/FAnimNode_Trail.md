### FAnimNode_Trail


Trail Controller

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FBoneReference BaseJoint [Base Joint to calculate velocity from. If none, it will use Component's World Transform. .]`
- `EAxis ChainBoneAxis [Axis of the bones to point along trail.]`
- `int ChainLength [Number of bones above the active one in the hierarchy to modify. ChainLength should be at least 2.]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `float32 DebugLifeTime [Debug Life Time]`
- `FVector FakeVelocity ['Fake' velocity applied to bones.]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 LastBoneRotationAnimAlphaBlend [How to set last bone rotation. It copies from previous joint if alpha is 0.f, or 1.f will use animated pose
       * This alpha dictates the blend between parent joint and animated pose, and how much you'd like to use animated pose for]`
- `float32 MaxDeltaTime [To avoid hitches causing stretch of trail, you can use MaxDeltaTime to clamp the long delta time. If you want 30 fps to set it to 0.03333f ( = 1/30 ).]`
- `TArray<FAnimPhysPlanarLimit> PlanarLimits [List of available planar limits for this node]`
- `float32 RelaxationSpeedScale`
- `FInputScaleBiasClamp RelaxationSpeedScaleInputProcessor`
- `TArray<FRotationLimit> RotationLimits []`
- `TArray<FVector> RotationOffsets`
- `float32 StretchLimit [If bLimitStretch is true, this indicates how long a bone can stretch beyond its length in the ref-pose.]`
- `FBoneReference TrailBone [Reference to the active bone in the hierarchy to modify.]`
- `FRuntimeFloatCurve TrailRelaxationSpeed [How quickly we 'relax' the bones to their animated positions. Time 0 will map to top root joint, time 1 will map to the bottom joint.]`
- `bool bActorSpaceFakeVel [Whether 'fake' velocity should be applied in actor or world space.]`
- `bool bAlphaBoolEnabled`
- `bool bEnableDebug [Enable Debug in the PIE. This doesn't work in game]`
- `bool bInvertChainBoneAxis [Invert the direction specified in ChainBoneAxis.]`
- `bool bLimitRotation [Limit the amount that a bone can stretch from its ref-pose length.]`
- `bool bLimitStretch [Limit the amount that a bone can stretch from its ref-pose length.]`
- `bool bReorientParentToChild [Fix up rotation to face child for the parent]`
- `bool bShowBaseMotion [Show Base Motion]`
- `bool bShowLimit [Show Planar Limits *]`
- `bool bShowTrailLocation [Show Trail Location *]`
- `bool bUsePlanarLimit [Whether to evaluate planar limits]`


**方法**:

- `FAnimNode_Trail& opAssign(FAnimNode_Trail Other)`

---

