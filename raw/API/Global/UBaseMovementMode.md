### UBaseMovementMode


Base class for all movement modes, exposing simulation update methods for both C++ and blueprint extension

**属性**:

- `FGameplayTagContainer GameplayTags [A list of gameplay tags associated with this movement mode]`
- `TArray<TSubclassOf<UObject>> SharedSettingsClasses [Settings object type that this mode depends on. May be shared with other movement modes. When the mode is added to a Mover Component, it will create a shared instance of this settings class.]`
- `TArray<TObjectPtr<UBaseMovementModeTransition>> Transitions [Transition checks for the current mode. Evaluated in order, stopping at the first successful transition check]`
- `bool bSupportsAsync [Whether this movement mode supports being part of an asynchronous movement simulation (running concurrently with the gameplay thread)
Specifically for the GenerateMove and SimulationTick functions]`


**方法**:

- `GenerateMove(FMoverTickStartData StartState, FMoverTimeStep TimeStep, FProposedMove& OutProposedMove) const`
- `UMoverComponent GetMoverComponent() const`  
  Gets the MoverComponent that owns this movement mode
- `OnActivated()`
- `OnDeactivated()`
- `OnRegistered(FName ModeName)`
- `OnUnregistered()`
- `SimulationTick(FSimulationTickParams Params, FMoverTickEndData& OutputState)`

---

