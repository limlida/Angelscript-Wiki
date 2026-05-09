### UGameFeatureAction_DataRegistry


Specifies a list of Data Registries to load and initialize with this feature

**属性**:

- `TArray<TSoftObjectPtr<UDataRegistry>> RegistriesToAdd [List of registry assets to load and initialize]`
- `bool bPreloadInCommandlets [If true, this will preload the registries when the feature is registered whilst a commandlet is running]`
- `bool bPreloadInEditor [If true, this will preload the registries when the feature is registered in the editor to support the editor pickers]`

---

