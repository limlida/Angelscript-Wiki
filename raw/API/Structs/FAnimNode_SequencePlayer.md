### FAnimNode_SequencePlayer


Sequence player node that can be used with constant folding

**属性**:

- `float32 BlendWeight [Last encountered blendweight for this node]`
- `FName GroupName [The group name that we synchronize with (NAME_None if it is not part of any group).]`
- `EAnimGroupRole GroupRole [The role this node can assume within the group (ignored if GroupName is not set)]`
- `float32 InternalTimeAccumulator [Accumulated time used to reference the asset in this node]`
- `EAnimSyncMethod Method [How this node will synchronize with other animations.]`
- `float32 PlayRate [The play rate multiplier. Can be negative, which will cause the animation to play in reverse.]`
- `float32 PlayRateBasis [The Basis in which the PlayRate is expressed in. This is used to rescale PlayRate inputs.
For example a Basis of 100 means that the PlayRate input will be divided by 100.]`
- `FInputScaleBiasClampConstants PlayRateScaleBiasClampConstants [Additional scaling, offsetting and clamping of PlayRate input.
Performed after PlayRateBasis.]`
- `UAnimSequenceBase Sequence [The animation sequence asset to play]`
- `float32 StartPosition [The start position between 0 and the length of the sequence to use when initializing. When looping, play will still jump back to the beginning when reaching the end.]`
- `bool bIgnoreForRelevancyTest [If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node]`
- `bool bLoopAnimation [Should the animation loop back to the start when it reaches the end?]`
- `bool bOverridePositionWhenJoiningSyncGroupAsLeader [When enabled, acting as the leader, and using marker-based sync, this asset player will not sync to the previous leader's sync position when joining a sync group and before becoming the leader but instead force everyone else to match its position.]`
- `bool bStartFromMatchingPose [Use pose matching to choose the start position. Requires PoseSearch plugin.]`


**方法**:

- `FAnimNode_SequencePlayer& opAssign(FAnimNode_SequencePlayer Other)`

---

