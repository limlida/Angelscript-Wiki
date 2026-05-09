### FGameplayEffectRemovalInfo


Data struct for containing information pertinent to GameplayEffects as they are removed

**属性**:

- `FGameplayEffectContextHandle EffectContext [Actor this gameplay effect was targeting.]`
- `int StackCount [Number of Stacks this gameplay effect had before it was removed.]`
- `bool bPredictionRejected [True when the effect is being removed due to prediction rejection]`
- `bool bPrematureRemoval [True when the gameplay effect's duration has not expired, meaning the gameplay effect is being forcefully removed.]`


**方法**:

- `FGameplayEffectRemovalInfo& opAssign(FGameplayEffectRemovalInfo Other)`

---

