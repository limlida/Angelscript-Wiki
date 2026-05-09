### FAnimNode_StrideWarping


**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `float32 DebugDrawScale [Scale all debug drawing visualization by a factor]`
- `FWarpingVectorValue FloorNormalDirection [Floor normal direction, this value will internally convert into a corresponding Component-space representation prior to warping
Default: World Space, Up Vector: <0,0,1>]`
- `TArray<FStrideWarpingFootDefinition> FootDefinitions [Foot definitions specifying the IK, FK, and Thigh bone]`
- `FWarpingVectorValue GravityDirection [Gravity direction, this value will internally convert into a corresponding Component-space representation prior to warping
Default: World Space, Down Vector: <0,0,-1>]`
- `FBoneReference IKFootRootBone [IK Foot Root Bone definition]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 LocomotionSpeed [Locomotion speed, specifying the current speed of the character
This will be used in the following equation for computing the stride scale: [StrideScale = (LocomotionSpeed / RootMotionSpeed)]
Note: This speed should be relative to the delta time of the animation graph

Stride scale is a value specifying the amount of warping applied to the IK foot definitions
Example: A value of 0.5 will decrease the effective leg stride by half, while a value of 2.0 will double it]`
- `float32 MinRootMotionSpeedThreshold [Minimum root motion speed required to apply stride warping
This is useful to prevent unnatural strides when the animation has a portion with no root motion (i.e starts/stops)
When this value is greater than 0, it's recommended to enable interpolation in StrideScaleModifier]`
- `EWarpingEvaluationMode Mode [Stride warping evaluation mode (Graph or Manual)]`
- `FBoneReference PelvisBone [Pevlis Bone definition]`
- `FIKFootPelvisPullDownSolver PelvisIKFootSolver [Solver for controlling how much the pelvis is "pulled down" towards the IK/FK foot definitions during leg limb extension]`
- `FVector StrideDirection [Component-space stride direction
Example: A value of <1,0,0> will warp the leg stride along the Forward Vector]`
- `float32 StrideScale [Stride scale, specifying the amount of warping applied to the foot definitions
Example: A value of 0.5 will decrease the effective leg stride by half, while a value of 2.0 will double it]`
- `FInputClampConstants StrideScaleModifier [Modifies the final stride scale value by optionally clamping and/or interpolating]`
- `bool bAlphaBoolEnabled`
- `bool bClampIKUsingFKLimits [Clamps the IK foot warping to prevent over-extension relative to the overall FK leg]`
- `bool bCompensateIKUsingFKThighRotation [Include warping adjustment to the FK thigh bones alongside the IK/FK foot definitions
This is used to help preserve the original overall leg shape]`
- `bool bDebugDrawIKFootAdjustment [Enable/Disable IK foot location debug drawing following initial foot adjustment]`
- `bool bDebugDrawIKFootFinal [Enable/Disable IK foot location debug drawing following all adsjustments (Final warped result)]`
- `bool bDebugDrawIKFootOrigin [Enable/Disable IK foot location debug drawing prior to warping]`
- `bool bDebugDrawPelvisAdjustment [Enable/Disable pelvis debug drawing following adjustment]`
- `bool bDebugDrawThighAdjustment [Enable/Disable thigh debug drawing following adjustment]`
- `bool bDisableIfMissingRootMotion [Do not execute stride warping if animation data has no root motion]`
- `bool bEnableDebugDraw [Enable/Disable stride warping debug drawing]`
- `bool bOrientStrideDirectionUsingFloorNormal [Orients the specified (Manual) or computed (Graph) stride direction by the floor normal]`


**方法**:

- `FAnimNode_StrideWarping& opAssign(FAnimNode_StrideWarping Other)`

---

