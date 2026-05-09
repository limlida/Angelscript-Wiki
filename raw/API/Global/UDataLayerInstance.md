### UDataLayerInstance


**属性**:

- `EDataLayerRuntimeState InitialRuntimeState [Initial runtime state of this data layer instance. Only supported if it's runtime and not client/server only.]`
- `EOverrideBlockOnSlowStreaming OverrideBlockOnSlowStreaming []`
- `int StreamingPriority [Determines the streaming priority (lower value means higher priority), relative to target grid cells. Priority 0 means the same priority as target grid cells.]`
- `bool bIsInitiallyLoadedInEditor [Determines the default value of the data layer's loaded state in editor if it hasn't been changed in data layer outliner by the user]`
- `bool bIsInitiallyVisible [Whether actors associated with the Data Layer should be initially visible in the viewport when loading the map]`


**方法**:

- `const UDataLayerAsset GetAsset() const`
- `FString GetDataLayerFullName() const`
- `FString GetDataLayerShortName() const`
- `FColor GetDebugColor() const`
- `EDataLayerRuntimeState GetInitialRuntimeState() const`
- `EDataLayerType GetType() const`
- `bool IsClientOnly() const`
- `bool IsEffectiveVisible() const`
- `bool IsInitiallyVisible() const`
- `bool IsRuntime() const`
- `bool IsServerOnly() const`
- `bool IsVisible() const`

---

