### FStateTreeTransition


Editor representation of a transition in StateTree

**属性**:

- `TArray<FStateTreeEditorNode> Conditions [Expression of conditions that need to evaluate to true to allow transition to be triggered.]`
- `float32 DelayDuration [Transition delay duration in seconds.]`
- `float32 DelayRandomVariance [Transition delay random variance in seconds.]`
- `FGuid ID []`
- `EStateTreeTransitionPriority Priority [Transition priority when multiple transitions happen at the same time.
During transition handling, the transitions are visited from leaf to root.
The first visited transition, of highest priority, that leads to a state selection, will be activated.]`
- `FStateTreeEventDesc RequiredEvent [Defines the event required to be present during state selection for the transition to trigger.]`
- `FStateTreeStateLink State [Transition target state.]`
- `EStateTreeTransitionTrigger Trigger [When to try trigger the transition.]`
- `bool bDelayTransition [Delay the triggering of the transition.]`
- `bool bTransitionEnabled [True if the Transition is Enabled (i.e. not explicitly disabled in the asset).]`


**方法**:

- `FStateTreeTransition& opAssign(FStateTreeTransition Other)`

---

