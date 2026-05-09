### UMovieSceneCondition


Abstract condition class. Conditions can be applied to sections, tracks, and track rows to determine whether or not they are evaluated at runtime.
This allows developers to create Sequences with dynamic behavior based on gameplay state, local player state, player hardware, etc.

**属性**:

- `bool bEditorForceTrue [If true, will skip evaluating the condition and always return true. Useful for authoring or debugging.]`
- `bool bInvert [If true, inverts the result of the condition check.]`


**方法**:

- `bool EvaluateCondition(FMovieSceneConditionContext ConditionContext) const`  
  Override to implement your condition.
- `EMovieSceneConditionCheckFrequency GetCheckFrequency() const`  
  Returns the check frequency of the condition, which determines whether the condition result can change during playback and needs to get re-evaluated.
- `EMovieSceneConditionScope GetScope() const`  
  Returns the scope of the condition, which determines whether the condition needs to be re-evaluated for different bindings or entities in the Sequence.

---

