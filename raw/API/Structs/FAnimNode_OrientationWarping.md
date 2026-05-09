### FAnimNode_OrientationWarping


Maintains a look at direction for the upper body (orientation), while rotating the lower body to match capsule velocity direction
Does nothing if the root motion velocity direction matches the desired / current capsule velocity direction

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `float32 CounterCompensateInterpSpeed [Same as RotationInterpSpeed, but for CounterCompensate smoothing. A value of 0 sample raw root motion.
Used to avoid stuttering from resampling root deltas. Root motion is already smooth, so a large value is our default (~75% of 60 fps).]`
- `UAnimationAsset CurrentAnimAsset [Experimental. Animation Asset for incorporating root motion data. If 'TargetTime' is set, and the animation has root motion rotation within the TargetTime,
then those rotations will be scaled to reach the TargetOrientation]`
- `float32 CurrentAnimAssetTime [Experimental. Current playback time in seconds of the CurrentAnimAsset]`
- `float32 DebugDrawScale [Scale all debug drawing visualization by a factor]`
- `float32 DistributedBoneOrientationAlpha [Specifies how much rotation is applied to the character body versus IK feet]`
- `TArray<FBoneReference> IKFootBones [IK Foot definitions]`
- `FBoneReference IKFootRootBone [IK Foot Root Bone definition]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 LocomotionAngle [The character locomotion angle (in degrees) relative to the specified RotationAxis
This will be used in the following equation for computing the orientation angle: [Orientation = RotationBetween(RootMotionDirection, LocomotionDirection)]
In most cases, this is the difference between the Velocity of the Movement Component and the actor rotation (obtained via CalculateDirection)]`
- `float32 LocomotionAngleDeltaThreshold [Specifies an angle threshold to prevent erroneous over-rotation of the character, disabled with a value of 0

When the effective orientation warping angle is detected to be greater than this value (default: 90 degrees) the locomotion direction will be inverted prior to warping
This will be used in the following equation: [Orientation = RotationBetween(RootMotionDirection, -LocomotionDirection)]

Example: Playing a forward running animation while the motion is going backward
Rather than orientation warping by 180 degrees, the system will warp by 0 degrees]`
- `FVector LocomotionDirection [The character movement direction vector in world space
When set, this vector is used to compute LocomotionAngle automatically. When not set, the LocomotionAngle input should be used instead.
In most cases, this vector is the same as the Velocity vector of the Movement Component]`
- `FVector ManualRootMotionVelocity`
- `float32 MaxCorrectionDegrees [Max correction we're allowed to do per-second when using interpolation.
This minimizes pops when we have a large difference between current and target orientation.]`
- `float32 MaxRootMotionDeltaToCompensateDegrees [Don't compensate our interpolator when the instantaneous root motion delta is higher than this. This is likely a pivot.]`
- `float32 MinRootMotionSpeedThreshold [Minimum root motion speed required to apply orientation warping
This is useful to prevent unnatural re-orientation when the animation has a portion with no root motion (i.e starts/stops/idles)
When this value is greater than 0, it's recommended to enable interpolation with RotationInterpSpeed > 0]`
- `EWarpingEvaluationMode Mode [Orientation warping evaluation mode (Graph or Manual)]`
- `float32 OrientationAngle [The desired orientation angle (in degrees) to warp by relative to the specified RotationAxis]`
- `EAxis RotationAxis [Rotation axis used when rotating the character body]`
- `float32 RotationInterpSpeed [Specifies the interpolation speed (in Alpha per second) towards reaching the final warped rotation angle
A value of 0 will cause instantaneous rotation, while a greater value will introduce smoothing]`
- `TArray<FBoneReference> SpineBones [Spine bone definitions
Used to counter rotate the body in order to keep the character facing forward
The amount of counter rotation applied is driven by DistributedBoneOrientationAlpha]`
- `float32 TargetTime [Experimental. Orientation warping should do nothing if root motion velocity directions match capsule,
however root motion can have multiple velocity directions. So we also check root motion
direction 'TargetTime' in the future for matching direction to avoid temp orientation warps.]`
- `EOrientationWarpingSpace WarpingSpace`
- `FTransform WarpingSpaceTransform`
- `bool bAlphaBoolEnabled`
- `bool bCounterCompenstateInterpolationByRootMotion [Whether to counter compensate interpolation by the animated root motion angle change over time.
This helps to conserve the motion from our animation.
Disable this if your root motion is expected to be jittery, and you want orientation warping to smooth it out.]`
- `bool bEnableDebugDraw [Enable/Disable orientation warping debug drawing]`
- `bool bScaleByGlobalBlendWeight []`
- `bool bUseManualRootMotionVelocity []`


**方法**:

- `FAnimNode_OrientationWarping& opAssign(FAnimNode_OrientationWarping Other)`

---

