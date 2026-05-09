### FAnimNode_MotionMatchingInteraction


**属性**:

- `TArray<FPoseSearchInteractionAvailability> Availabilities []`
- `EAlphaBlendOption BlendOption`
- `UBlendProfile BlendProfile`
- `float32 BlendTime [tunable animation transition blend time]`
- `float32 BlendWeight [Last encountered blendweight for this node]`
- `EBlendStack_BlendspaceUpdateMode BlendspaceUpdateMode [How we should update individual blend space parameters. See dropdown options tooltips.]`
- `float32 InternalTimeAccumulator [Accumulated time used to reference the asset in this node]`
- `int MaxActiveBlends [Number of max active blending animation in the blend stack. If MaxActiveBlends is zero then blend stack is disabled]`
- `float32 MaxBlendInTimeToOverrideAnimation [if the most relevant (recently added) animation is within MaxBlendInTimeToOverrideAnimation, the new requested blend will take its spot
otherwise a new blended will be added to the stack]`
- `float32 NotifyRecencyTimeOut [Window of time after firing a notify that any instance of the same notify will be filtered out.]`
- `float32 PlayerDepthBlendInTimeMultiplier [AnimPlayers blend in timer will be incremented PlayerDepthBlendInTimeMultiplier times faster on a deeper blend]`
- `float32 StitchBlendMaxCost [if the cost from searching StitchDatabase is above StitchBlendMaxCost, blend stack will perform a regular blend,
and not using the returned stitch animation as blend]`
- `float32 StitchBlendTime [blend time in seconds used to blend into and out from a stitch animation]`
- `UObject StitchDatabase [database used to search for an animation stitch to use as blend]`
- `float32 WarpingRotationRatio [amount or rotation warping to apply]`
- `float32 WarpingTranslationRatio [amount or translation warping to apply]`
- `bool bResetOnBecomingRelevant [Reset the blend stack if it has become relevant to the graph after not being updated on previous frames.]`
- `bool bShouldFilterNotifies [Flag that determines if any notifies from originating from an anim player samples should be filtered or not.]`
- `bool bStoreBlendedPose [if the number of requested blends is higher than MaxActiveBlends, blend stack will blend and accumulate
into a stored pose all the overflowing animations. if bStoreBlendedPose is false, the memory to store the pose will be saved,
but once reached the MaxActiveBlends, blendstack will start discarding animations, potentially resulting in animation pops]`
- `bool bUseInertialBlend [tunable animation transition blend time]`
- `bool bValidateResultAgainstAvailabilities []`
- `bool bWarpUsingRootBone [if bWarpUsingRootBone is true, warping will be calculated using the interacting actors previous frame root bone transforms (effective for setups with OffsetRootBone node allowing root bone drifting from capsule)
if bWarpUsingRootBone is true, warping will be calculated using the previous frame root transforms (effective root motion driven for setups)]`


**方法**:

- `FAnimNode_MotionMatchingInteraction& opAssign(FAnimNode_MotionMatchingInteraction Other)`

---

