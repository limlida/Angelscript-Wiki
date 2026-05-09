### FAnimNode_Steering


Add procedural delta to the root motion attribute
This is done via 2 techniques:
 1) Scaling the root motion on an animation
 2) Adding additional correction to root motion after accounting for the anticipated (potentially scaled) root motion
The effects of 1) and 2) combine

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `float32 AnimatedTargetTime [The number of seconds in the future to sample the root motion to know how much this animation is expected to turn]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `UAnimationAsset CurrentAnimAsset [Animation Asset for incorporating root motion data. If CurrentAnimAsset is set, and the animation has root motion rotation within the TargetTime, then those rotations will be scaled to reach the TargetOrientation]`
- `float32 CurrentAnimAssetTime [Current playback time in seconds of the CurrentAnimAsset]`
- `float32 DisableAdditiveBelowSpeed [below this movement speed (based on the root motion in the animation) disable steering coming from the additive spring based correction]`
- `float32 DisableSteeringBelowSpeed [below this movement speed (based on the root motion in the animation) disable steering completely (both scaling and additive)]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 MaxScaleRatio [Will clamp the scaling ratio applied to below this threshold. Any error remaining will be compensated for linearly (using ProceduralTargetTime)]`
- `float32 MinScaleRatio [Will clamp the scaling ratio applied to above this threshold. Any error remaining will be compensated for linearly (using ProceduralTargetTime)]`
- `UMirrorDataTable MirrorDataTable [If bMirrored is set, MirrorDataTable will be used for mirroring the CurrentAnimAsset during prediction]`
- `float32 ProceduralTargetTime [The number of seconds in the future before we should roughly attempt reach the TargetOrientation via additive correction]`
- `float32 RootMotionThreshold [The minimum amount of root motion required to enable root motion scaling.
The root motion is measured from current time to AnimatedTargetTime]`
- `FQuat TargetOrientation [The Orientation to steer towards]`
- `bool bAlphaBoolEnabled`
- `bool bMirrored [True if input animation is mirrored]`


**方法**:

- `FAnimNode_Steering& opAssign(FAnimNode_Steering Other)`

---

