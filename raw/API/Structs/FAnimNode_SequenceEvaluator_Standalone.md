### FAnimNode_SequenceEvaluator_Standalone


Sequence evaluator node that can be used standalone (without constant folding)

**属性**:

- `float32 BlendWeight [Last encountered blendweight for this node]`
- `int ExplicitFrame []`
- `float32 ExplicitTime [The time at which to evaluate the associated sequence]`
- `FName GroupName [The group name that we synchronize with (NAME_None if it is not part of any group).]`
- `EAnimGroupRole GroupRole [The role this node can assume within the group (ignored if GroupName is not set)]`
- `float32 InternalTimeAccumulator [Accumulated time used to reference the asset in this node]`
- `EAnimSyncMethod Method [How this node will synchronize with other animations.]`
- `ESequenceEvalReinit ReinitializationBehavior [What to do when SequenceEvaluator is reinitialized]`
- `UAnimSequenceBase Sequence [The animation sequence asset to evaluate]`
- `float32 StartPosition [The start up position, it only applies when ReinitializationBehavior == StartPosition. Only used when bTeleportToExplicitTime is false.]`
- `bool bIgnoreForRelevancyTest [If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node]`
- `bool bShouldLoop [This only works if bTeleportToExplicitTime is false OR this node is set to use SyncGroup]`
- `bool bTeleportToExplicitTime [If true, teleport to explicit time, does NOT advance time (does not trigger notifies, does not extract Root Motion, etc.)
      If false, will advance time (will trigger notifies, extract root motion if applicable, etc.)
      Note: using a sync group forces advancing time regardless of what this option is set to.]`
- `bool bUseExplicitFrame []`


**方法**:

- `FAnimNode_SequenceEvaluator_Standalone& opAssign(FAnimNode_SequenceEvaluator_Standalone Other)`

---

