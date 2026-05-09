### UInterchangeAssetImportData


**属性**:

- `FSoftObjectPath SceneImportAsset [On a level import, set to the UInterchangeSceneImportAsset created during the import.]`


**方法**:

- `UInterchangeBaseNodeContainer GetNodeContainer() const`
- `int GetNumberOfPipelines() const`
- `TArray<UObject> GetPipelines() const`  
  Returns Array of non-null pipelines
- `UInterchangeFactoryBaseNode GetStoredFactoryNode(FString InNodeUniqueId) const`
- `const UInterchangeBaseNode GetStoredNode(FString InNodeUniqueId) const`
- `const UInterchangeTranslatorSettings GetTranslatorSettings() const`
- `TArray<FString> ScriptExtractDisplayLabels() const`  
  Extract all the filename labels.
- `TArray<FString> ScriptExtractFilenames() const`  
  Extract all the (resolved) filenames.
- `FString ScriptGetFirstFilename() const`  
  Return the first filename stored in this data. The resulting filename will be absolute (that is, not relative to the asset).
- `SetNodeContainer(UInterchangeBaseNodeContainer InNodeContainer) const`
- `SetPipelines(TArray<UObject> InPipelines)`
- `SetTranslatorSettings(UInterchangeTranslatorSettings TranslatorSettings) const`

---

