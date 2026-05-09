### FEditorImportExportTestDefinition


Holds settings for the asset import / export automation test

**属性**:

- `FString ExportFileExtension [The file extension to use when exporting this asset.  Used to find a supporting exporter]`
- `TArray<FImportFactorySettingValues> FactorySettings [Settings for the import factory]`
- `FFilePath ImportFilePath [The file to import]`
- `bool bSkipExport [If true, the export step will be skipped]`


**方法**:

- `FEditorImportExportTestDefinition& opAssign(FEditorImportExportTestDefinition Other)`

---

