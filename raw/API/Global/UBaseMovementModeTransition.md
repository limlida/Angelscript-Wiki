### UBaseMovementModeTransition


Base class for all transitions

**属性**:

- `TArray<TSubclassOf<UObject>> SharedSettingsClasses [Settings object type that this mode depends on. May be shared with other transitions and movement modes. When the transition is added to a Mover Component, it will create a shared instance of this settings class.]`
- `bool bAllowModeReentry [Whether this transition should reenter a mode if it evaluates true and wants to transition into a mode the actor is already in]`
- `bool bFirstSubStepOnly [Whether this transition should only apply to the first step of the update. If true, modes reached after transitions or mode changes
in the current update will not consider this transition]`
- `bool bSupportsAsync [Whether this movement mode transition supports being part of an asynchronous movement simulation (running concurrently with the gameplay thread)
Specifically for the Evaluate and Trigger functions]`


**方法**:

- `FTransitionEvalResult Evaluate(FSimulationTickParams Params) const`
- `UMoverComponent GetMoverComponent() const`  
  Gets the MoverComponent that ultimately owns this transition
- `OnRegistered()`
- `OnUnregistered()`
- `Trigger(FSimulationTickParams Params)`

---

