### FAnimNode_ChooserPlayer


**属性**:

- `float32 BlendSpaceX [requested blend space blend X parameter (if AnimationAsset is a blend space)]`
- `float32 BlendSpaceY [requested blend space blend Y parameter (if AnimationAsset is a blend space)]`
- `float32 BlendWeight [Last encountered blendweight for this node]`
- `FInstancedStruct Chooser [Type of chooser logic to use: Use "Evaluate Chooser" for chooser table evaluation, and "Lookup Proxy" for proxy table lookups]`
- `FChooserPlayerSettings DefaultSettings [Settings when starting an animation - these can be overridden per animation asset by the chooser itself]`
- `EChooserEvaluationFrequency EvaluationFrequency [How often the chooser should be evaluated]`
- `FName GroupName [The group name that we synchronize with (NAME_None if it is not part of any group). Note that
this is the name of the group used to sync the output of this node - it will not force
syncing of animations contained by it.]`
- `EAnimGroupRole GroupRole [The role this node can assume within the group (ignored if GroupName is not set). Note
that this is the role of the output of this node, not of animations contained by it.]`
- `float32 InternalTimeAccumulator [Accumulated time used to reference the asset in this node]`
- `int MaxActiveBlends [Number of max active blending animation in the blend stack. If MaxActiveBlends is zero then blend stack is disabled]`
- `float32 MaxBlendInTimeToOverrideAnimation [if the most relevant (recently added) animation is within MaxBlendInTimeToOverrideAnimation, the new requested blend will take its spot
otherwise a new blended will be added to the stack]`
- `EAnimSyncMethod Method [How this node will synchronize with other animations. Note that this determines how the output
of this node is used for synchronization, not of animations contained by it.]`
- `UMirrorDataTable MirrorDataTable [if set and bMirrored MirrorDataTable will be used for mirroring the aniamtion]`
- `float32 NotifyRecencyTimeOut [Window of time after firing a notify that any instance of the same notify will be filtered out.]`
- `float32 PlayerDepthBlendInTimeMultiplier [AnimPlayers blend in timer will be incremented PlayerDepthBlendInTimeMultiplier times faster on a deeper blend]`
- `float32 StitchBlendMaxCost [if the cost from searching StitchDatabase is above StitchBlendMaxCost, blend stack will perform a regular blend,
and not using the returned stitch animation as blend]`
- `float32 StitchBlendTime [blend time in seconds used to blend into and out from a stitch animation]`
- `UObject StitchDatabase [database used to search for an animation stitch to use as blend]`
- `bool bIgnoreForRelevancyTest [If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node]`
- `bool bShouldFilterNotifies [Flag that determines if any notifies from originating from an anim player samples should be filtered or not.]`
- `bool bStartFromMatchingPose [Use pose matching to choose the start position. Requires PoseSearch plugin.]`
- `bool bStoreBlendedPose [if the number of requested blends is higher than MaxActiveBlends, blend stack will blend and accumulate
into a stored pose all the overflowing animations. if bStoreBlendedPose is false, the memory to store the pose will be saved,
but once reached the MaxActiveBlends, blendstack will start discarding animations, potentially resulting in animation pops]`


**方法**:

- `FAnimNode_ChooserPlayer& opAssign(FAnimNode_ChooserPlayer Other)`

---

