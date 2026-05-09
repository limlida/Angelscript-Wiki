### UMovieSceneDataLayerSection


**属性**:

- `TArray<TObjectPtr<UDataLayerAsset>> DataLayerAssets [A list of data layers that should be loaded or unloaded by this section]`
- `EDataLayerRuntimeState DesiredState [The desired state for the data layers on this section when the section is actively evaluating.]`
- `EDataLayerRuntimeState PrerollState [The desired state for the data layers on this section when the section is pre or post-rolling.]`
- `bool bFlushOnActivated [Determine if we need to flush level streaming when the data layers are activated. May result in a hitch.]`
- `bool bFlushOnUnload [Determine if we need to flush level streaming when the data layers unloads.]`


**方法**:

- `TArray<UDataLayerAsset> GetDataLayerAssets() const`
- `EDataLayerRuntimeState GetDesiredState() const`
- `bool GetFlushOnActivated() const`
- `bool GetFlushOnUnload() const`
- `EDataLayerRuntimeState GetPrerollState() const`
- `SetDataLayerAssets(TArray<UDataLayerAsset> InDataLayerAssets)`
- `SetDesiredState(EDataLayerRuntimeState InDesiredState)`
- `SetFlushOnActivated(bool bFlushOnActivated)`
- `SetFlushOnUnload(bool bFlushOnUnload)`
- `SetPrerollState(EDataLayerRuntimeState InPrerollState)`

---

