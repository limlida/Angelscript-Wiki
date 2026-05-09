### UDataRegistrySettings


Settings for the Data Registry subsystem, these settings are used to scan for registry assets and set runtime access rules

**属性**:

- `TArray<FDirectoryPath> DirectoriesToScan [List of directories to scan for data registry assets]`
- `bool bDelayLoadingDataRegistriesUntilPIE [If true, in the editor data registry assets will be loaded before the first PIE instead of during startup]`
- `bool bIgnoreMissingCookedAssetRegistryData [If true, cooked builds will ignore errors with missing AssetRegistry data for specific registered assets like DataTables as it may have been stripped out]`
- `bool bInitializeAllLoadedRegistries [If false, only registry assets inside DirectoriesToScan will be initialized. If true, it will also initialize any in-memory DataRegistry assets outside the scan paths]`

---

