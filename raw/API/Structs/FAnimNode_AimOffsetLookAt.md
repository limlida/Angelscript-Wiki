### FAnimNode_AimOffsetLookAt


This node uses a source transform of a socket on the skeletal mesh to automatically calculate
Yaw and Pitch directions for a referenced aim offset given a point in the world to look at.

**属性**:

- `float32 Alpha [Amount of this node to blend into the output pose]`
- `FPoseLink BasePose`
- `UBlendSpace BlendSpace [The blendspace asset to play]`
- `float32 BlendWeight [Last encountered blendweight for this node]`
- `FName GroupName [The group name that we synchronize with (NAME_None if it is not part of any group). Note that
this is the name of the group used to sync the output of this node - it will not force
syncing of animations contained by it.]`
- `EAnimGroupRole GroupRole [The role this node can assume within the group (ignored if GroupName is not set). Note
that this is the role of the output of this node, not of animations contained by it.]`
- `float32 InternalTimeAccumulator [Accumulated time used to reference the asset in this node]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `FVector LookAtLocation [Location, in world space to look at]`
- `EAnimSyncMethod Method [How this node will synchronize with other animations. Note that this determines how the output
of this node is used for synchronization, not of animations contained by it.]`
- `FName PivotSocketName [Socket or bone to treat as the look at pivot (optional). This will overwrite the translation of the
source socket transform improve the lookat direction, especially when the target is close
to the character]`
- `float32 PlayRate [The play rate multiplier. Can be negative, which will cause the animation to play in reverse.]`
- `FVector SocketAxis [Direction in the socket transform to consider the 'forward' or look at axis]`
- `FName SourceSocketName [Socket or bone to treat as the look at source. This will then be pointed at LookAtLocation]`
- `float32 StartPosition [The start position in [0, 1] to use when initializing. When looping, play will still jump back to the beginning when reaching the end.]`
- `float32 X [The X coordinate to sample in the blendspace]`
- `float32 Y [The Y coordinate to sample in the blendspace]`
- `bool bIgnoreForRelevancyTest [If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node]`
- `bool bLoop [Should the animation loop back to the start when it reaches the end?]`
- `bool bOverridePositionWhenJoiningSyncGroupAsLeader [When enabled, acting as the leader, and using marker-based sync, this asset player will not sync to the previous leader's sync position when joining a sync group and before becoming the leader but instead force everyone else to match its position.]`
- `bool bResetPlayTimeWhenBlendSpaceChanges [Whether we should reset the current play time when the blend space changes]`


**方法**:

- `FAnimNode_AimOffsetLookAt& opAssign(FAnimNode_AimOffsetLookAt Other)`

---

