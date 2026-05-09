### UAutomatedAssetImportData


Contains data for a group of assets to import

**属性**:

- `FString DestinationPath [Content path in the projects content directory where assets will be imported]`
- `UFactory Factory [Pointer to the factory currently being used]`
- `FString FactoryName [Name of the factory to use when importing these assets. If not specified the factory type will be auto detected]`
- `TArray<FString> Filenames [Filenames to import]`
- `FString GroupName [Display name of the group. This is for logging purposes only.]`
- `FString LevelToLoad [Full path to level to load before importing this group (only matters if importing assets into a level)]`
- `bool bReplaceExisting [Whether or not to replace existing assets]`
- `bool bSkipReadOnly [Whether or not to skip importing over read only assets that could not be checked out]`

---

