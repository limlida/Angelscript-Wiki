### UScriptWorldSubsystem


**属性**:

- `bool bCreateForGameWorlds [Create this subsystem for worlds in gameplay (including Play-In-Editor)]`
- `bool bCreateForLevelEditorWorlds [Create this subsystem for worlds representing levels loaded in the editor]`
- `bool bTickWhenPaused [Whether this subsystem should continue ticking when the game is paused]`


**方法**:

- `Deinitialize()`
- `Initialize()`
- `OnWorldBeginPlay()`
- `OnWorldComponentsUpdated()`
- `PostInitialize()`
- `bool ShouldCreateSubsystem(UObject Outer) const`
- `Tick(float DeltaTime)`

---

