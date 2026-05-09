### UInputTrigger


Base class for building triggers.
Transitions to Triggered state once the input meets or exceeds the actuation threshold.

**属性**:

- `float32 ActuationThreshold [Point at which this trigger fires]`
- `FInputActionValue LastValue [Value passed to UpdateState on the previous tick. This will be updated automatically after the trigger is updated.]`
- `bool bShouldAlwaysTick [Decides whether this trigger ticks every frame or not.
       * This WILL affect performance and should only be used in specific custom triggers.]`


**方法**:

- `ETriggerType GetTriggerType() const`  
  Changes the way this trigger affects an action with multiple triggers:
        All implicit triggers must be triggering to trigger the action.
        If there are any explicit triggers at least one must be triggering to trigger the action.
- `bool IsActuated(FInputActionValue ForValue) const`  
  * Is the value passed in sufficiently large to be of interest to the trigger.
* This is a helper function that implements the most obvious (>=) interpretation of the actuation threshold.
- `ETriggerState UpdateState(const UEnhancedPlayerInput PlayerInput, FInputActionValue ModifiedValue, float DeltaTime)`  
  This function checks if the requisite conditions have been met for the trigger to fire.
 Returns Trigger State None              - No trigger conditions have been met. Trigger is inactive.
                 Trigger State Ongoing   - Some trigger conditions have been met. Trigger is processing but not yet active.
                 Trigger State Triggered - All trigger conditions have been met to fire. Trigger is active.

---

