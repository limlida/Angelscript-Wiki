### FInputActionInstance


Run time queryable action instance
Generated from UInputAction templates above

**属性**:

- `float32 ElapsedProcessedTime [Total trigger processing/evaluation time (How long this action has been in event Started, Ongoing, or Triggered]`
- `float32 ElapsedTriggeredTime [Triggered time (How long this action has been in event Triggered only)]`
- `float32 LastTriggeredWorldTime [The last time that this evaluated to a Triggered State]`
- `TArray<TObjectPtr<UInputModifier>> Modifiers []`
- `const UInputAction SourceAction [The source action that this instance is created from]`
- `ETriggerEvent TriggerEvent [Trigger state]`
- `TArray<TObjectPtr<UInputTrigger>> Triggers []`


**方法**:

- `FInputActionInstance& opAssign(FInputActionInstance Other)`

---

