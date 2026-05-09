### UDEPRECATED_DataLayer


**属性**:

- `FColor DebugColor []`
- `EDataLayerRuntimeState InitialRuntimeState []`
- `bool bIsInitiallyLoadedInEditor [Determines the default value of the data layer's loaded state in editor if it hasn't been changed in data layer outliner by the user]`
- `bool bIsInitiallyVisible [Whether actors associated with the Data Layer should be initially visible in the viewport when loading the map]`
- `bool bIsRuntime [Whether the Data Layer affects actor runtime loading]`


**方法**:

- `bool Equals(FActorDataLayer ActorDataLayer) const`
- `FName GetDataLayerLabel() const`
- `FColor GetDebugColor() const`
- `EDataLayerRuntimeState GetInitialRuntimeState() const`
- `bool IsEffectiveVisible() const`
- `bool IsInitiallyVisible() const`
- `bool IsRuntime() const`
- `bool IsVisible() const`

---

