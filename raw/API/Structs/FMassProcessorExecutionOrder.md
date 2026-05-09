### FMassProcessorExecutionOrder


**属性**:

- `TArray<FName> ExecuteAfter []`
- `TArray<FName> ExecuteBefore []`
- `FName ExecuteInGroup [Determines which processing group this processor will be placed in. Leaving it empty ("None") means "top-most group for my ProcessingPhase"]`


**方法**:

- `FMassProcessorExecutionOrder& opAssign(FMassProcessorExecutionOrder Other)`

---

