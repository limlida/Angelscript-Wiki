### FGameplayEffectCustomExecutionOutput


Struct representing the output of a custom gameplay effect execution.

**方法**:

- `AddOutputModifier(FGameplayModifierEvaluatedData InOutputMod)`  
  Add the specified evaluated data to the execution's output modifiers
- `bool AreGameplayCuesHandledManually()`  
  Accessor for determining if GameplayCue events have already been handled
- `TArray<FGameplayModifierEvaluatedData> GetOutputModifiers()`  
  Simple accessor to output modifiers of the execution
- `TArray<FGameplayModifierEvaluatedData>& GetOutputModifiersRef()`  
  Returns direct access to output modifiers of the execution (avoid copy)
- `bool IsStackCountHandledManually()`  
  Simple accessor for determining whether the execution has manually handled the stack count or not
- `MarkConditionalGameplayEffectsToTrigger()`  
  Mark that the execution wants conditional gameplay effects to trigger
- `MarkGameplayCuesHandledManually()`  
  Mark that the execution wants conditional gameplay effects to trigger
- `MarkStackCountHandledManually()`  
  Mark that the execution has manually handled the stack count and the GE system should not attempt to automatically act upon it for emitted modifiers
- `bool ShouldTriggerConditionalGameplayEffects()`  
  Simple accessor for determining whether the execution wants conditional gameplay effects to trigger or not
- `FGameplayEffectCustomExecutionOutput& opAssign(FGameplayEffectCustomExecutionOutput Other)`

---

