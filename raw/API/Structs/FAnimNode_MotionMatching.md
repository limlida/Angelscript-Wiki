### FAnimNode_MotionMatching


**属性**:

- `TArray<FPoseSearchInteractionAvailability> Availabilities [Experimental, this feature might be removed without warning, not for production use]`
- `EAlphaBlendOption BlendOption [How the blend is applied over time to the bones. Common selections are linear, ease in, ease out, and ease in and out.]`
- `FVector BlendParameters [requested blend space blend parameters (if AnimationAsset is a blend space)]`
- `float32 BlendParametersDeltaThreshold [Use this to define a threshold to trigger a new blend when blendspace xy input pins change.
By default, any delta will trigger a blend.]`
- `UBlendProfile BlendProfile [Set Blend Profiles (editable in the skeleton) to determine how the blending is distributed among your character's bones. It could be used to differentiate between upper body and lower body to blend timing.]`
- `float32 BlendTime [Time in seconds to blend out to the new pose. Uses either inertial blending, requiring an Inertialization node after this node, or the internal blend stack, if MaxActiveBlends is greater than zero.]`
- `float32 BlendWeight [Last encountered blendweight for this node]`
- `EBlendStack_BlendspaceUpdateMode BlendspaceUpdateMode [How we should update individual blend space parameters. See dropdown options tooltips.]`
- `const UPoseSearchDatabase Database [The database to search. This can be overridden by Anim Node Functions such as "On Become Relevant" and "On Update" via SetDatabaseToSearch/SetDatabasesToSearch.]`
- `FPoseSearchEvent EventToSearch [Experimental, this feature might be removed without warning, not for production use]`
- `FName GroupName [The group name that we synchronize with (NAME_None if it is not part of any group). Note that
this is the name of the group used to sync the output of this node - it will not force
syncing of animations contained by it.]`
- `float32 InternalTimeAccumulator [Accumulated time used to reference the asset in this node]`
- `int MaxActiveBlends [Number of max active blending animation in the blend stack. If MaxActiveBlends is zero then blend stack is disabled]`
- `float32 MaxBlendInTimeToOverrideAnimation [if the most relevant (recently added) animation is within MaxBlendInTimeToOverrideAnimation, the new requested blend will take its spot
otherwise a new blended will be added to the stack]`
- `EAnimSyncMethod Method [How this node will synchronize with other animations. Note that this determines how the output
of this node is used for synchronization, not of animations contained by it.]`
- `float32 NotifyRecencyTimeOut [Window of time after firing a notify that any instance of the same notify will be filtered out.]`
- `FFloatInterval PlayRate [Effective range of play rate that can be applied to the animations to account for discrepancies in estimated velocity between the movement model and the animation.]`
- `float32 PlayRateMultiplier [Experimental: Multiplier applied to the play rate of the selected animation after Motion Matching State has been updated.]`
- `float32 PlayerDepthBlendInTimeMultiplier [AnimPlayers blend in timer will be incremented PlayerDepthBlendInTimeMultiplier times faster on a deeper blend]`
- `FFloatInterval PoseJumpThresholdTime [Don't jump to poses of the same segment that are within the interval this many seconds away from the continuing pose.]`
- `float32 PoseReselectHistory [Prevent re-selection of poses that have been selected previously within this much time (in seconds) in the past. This is across all animation segments that have been selected within this time range.]`
- `float32 SearchThrottleTime [Minimum amount of time to wait between searching for a new pose segment. It allows users to define how often the system searches, default for locomotion is searching every update, but you may only want to search once for other situations, like jump.]`
- `float32 StitchBlendMaxCost [if the cost from searching StitchDatabase is above StitchBlendMaxCost, blend stack will perform a regular blend,
and not using the returned stitch animation as blend]`
- `float32 StitchBlendTime [blend time in seconds used to blend into and out from a stitch animation]`
- `UObject StitchDatabase [database used to search for an animation stitch to use as blend]`
- `float32 WarpingRotationRatio [Experimental, this feature might be removed without warning, not for production use
amount or rotation warping to apply]`
- `float32 WarpingTranslationRatio [Experimental, this feature might be removed without warning, not for production use
amount or translation warping to apply]`
- `bool bIgnoreForRelevancyTest [If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node]`
- `bool bKeepInteractionAlive [Experimental, this feature might be removed without warning, not for production use]`
- `bool bResetOnBecomingRelevant [Reset the motion matching selection state if it has become relevant to the graph after not being updated on previous frames.]`
- `bool bShouldFilterNotifies [Flag that determines if any notifies from originating from an anim player samples should be filtered or not.]`
- `bool bShouldSearch [If set to false, the motion matching node will perform a search only if the continuing pose is invalid. This is useful if you want to stagger searches of different nodes for performance reasons]`
- `bool bShouldUseCachedChannelData [If set to true, the search of multiple databases with different schemas will try to share pose features data calculated during query build
the idea is to be able to share as much as possible the continuing pose features vector across different schemas (and potentially improve performances)
defaulted to false to preserve behavior backward compatibility]`
- `bool bStoreBlendedPose [if the number of requested blends is higher than MaxActiveBlends, blend stack will blend and accumulate
into a stored pose all the overflowing animations. if bStoreBlendedPose is false, the memory to store the pose will be saved,
but once reached the MaxActiveBlends, blendstack will start discarding animations, potentially resulting in animation pops]`
- `bool bUseInertialBlend []`
- `bool bValidateResultAgainstAvailabilities [Experimental, this feature might be removed without warning, not for production use]`
- `bool bWarpUsingRootBone [Experimental, this feature might be removed without warning, not for production use
if bWarpUsingRootBone is true, warping will be calculated using the interacting actors previous frame root bone transforms (effective for setups with OffsetRootBone node allowing root bone drifting from capsule)
if bWarpUsingRootBone is true, warping will be calculated using the previous frame root transforms (effective root motion driven for setups)]`


**方法**:

- `FAnimNode_MotionMatching& opAssign(FAnimNode_MotionMatching Other)`

---

