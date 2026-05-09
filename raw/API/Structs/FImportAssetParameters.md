### FImportAssetParameters


**属性**:

- `FString DestinationName [Optional custom name for the import.]`
- `ULevel ImportLevel [Level to import into when doing a scene import.]`
- `FOnObjectImportDoneDynamic OnAssetDone [Delegates used to track the imported objects. // This is called each time an asset is imported or reimported from the import call.]`
- `FOnImportDoneDynamic OnAssetsImportDone [This is called when all the assets were imported from the source data.]`
- `FOnImportDoneDynamic OnSceneImportDone [This is called when all the scene objects were imported from the source data.]`
- `FOnObjectImportDoneDynamic OnSceneObjectDone [This is called each time an object in the scene is imported or reimported from the import call.]`
- `TArray<FSoftObjectPath> OverridePipelines [Adding overrides tells Interchange to use the specific custom set of pipelines instead of letting the user or the system choose.]`
- `UObject ReimportAsset [If the import is a reimport for a specific asset, set the asset to reimport here.]`
- `int ReimportSourceIndex [If we are doing a reimport, set the source index here. Some assets have more then one source file that each contains part of the asset content.]`
- `bool bFollowRedirectors [Tell Interchange to follow redirectors when determining the location an asset will be imported.]`
- `bool bForceShowDialog [If true this import must show the import dialog and ignore the show dialog settings.]`
- `bool bIsAutomated [Tell Interchange that import is automated and it shouldn't present a modal window.]`
- `bool bReplaceExisting [Determies whether to overwrite existing assets.]`


**方法**:

- `FImportAssetParameters& opAssign(FImportAssetParameters Other)`

---

