### UAnimStateTransitionNode


**属性**:

- `float32 AutomaticRuleTriggerTime [When should the automatic transition rule trigger relative to the time remaining on the relevant asset player:
 < 0 means trigger the transition 'Crossfade Duration' seconds before the end of the asset player, so a standard blend would finish just as the asset player ends
>= 0 means trigger the transition 'Automatic Rule Trigger Time' seconds before the end of the asset player]`
- `bool Bidirectional [This transition can go both directions]`
- `EAlphaBlendOption BlendMode []`
- `float32 CrossfadeDuration [The duration to cross-fade for]`
- `UCurveFloat CustomBlendCurve []`
- `ETransitionLogicType LogicType [What transition logic to use]`
- `float32 MinTimeBeforeReentry [The minimum time elapsed (in seconds) before the target state can be re-entered via this transition
Has no effect when set to -1.0.
When set to zero, wait at least one frame before re-entry via this transition is allowed.]`
- `int PriorityOrder [The priority order of this transition. If multiple transitions out of a state go
true at the same time, the one with the smallest priority order will take precedent]`
- `FName SyncGroupNameToRequireValidMarkersRule [If SyncGroupName is specified, Transition will only be taken if the SyncGroup has valid markers (other transition rules still apply in addition to that).]`
- `FAnimNotifyEvent TransitionEnd []`
- `FAnimNotifyEvent TransitionInterrupt []`
- `FAnimNotifyEvent TransitionStart []`
- `bool bAllowInertializationForSelfTransitions [Whether to fall back to inertialization/dead blending when reentering an already-active state. This can avoid pops.
              The target state must enable bAlwaysResetOnEntry for the inertial blend to trigger.]`
- `bool bAutomaticRuleBasedOnSequencePlayerInState [Try setting the rule automatically based on most relevant asset player node's remaining time and the Automatic Rule Trigger Time of the transition, ignoring the internal time]`
- `bool bDisabled [Whether or not to disable this transition from being enterable]`

---

