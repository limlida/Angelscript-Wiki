### UPhysicsControlInitializerComponent


**属性**:

- `TMap<FName,FInitialBodyModifier> InitialBodyModifiers [This can be filled in to automatically create body modifiers during the BeginPlay event. If a body modifier
already exists with the name (e.g. created as part of InitialCharacterControls) then it will be updated.]`
- `FInitialCharacterControls InitialCharacterControls [This can be filled in to automatically create whole-character controls (by specifying limbs etc) for
a skeletal mesh during the BeginPlay event.]`
- `TMap<FName,FInitialPhysicsControl> InitialControls [This can be filled in to automatically create controls during the BeginPlay event. If a control
already exists with the name (e.g. created as part of InitialCharacterControls) then it will be updated.]`
- `bool bCreateControlsAtBeginPlay [If set, then CreateControls will be called in our BeginPlay event, attempting to find a
PhysicsControlComponent in our parent actor.]`


**方法**:

- `CreateControls(UPhysicsControlComponent PhysicsControlComponent)`  
  This creates all the controls specified in the Initial properties. You can call it explicitly,
or you can opt to have it called at BeginPlay using CreateControlsAtBeginPlay.

---

