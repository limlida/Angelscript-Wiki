### FNiagaraInputConditionMetadata


Defines options for conditionally editing and showing script inputs in the UI.

**属性**:

- `FName InputName [The name of the input to use for matching the target values.]`
- `TArray<FString> TargetValues [The list of target values which will satisfy the input condition.  If this is empty it's assumed to be a single value of "true" for matching bool inputs.]`


**方法**:

- `FNiagaraInputConditionMetadata& opAssign(FNiagaraInputConditionMetadata Other)`

---

