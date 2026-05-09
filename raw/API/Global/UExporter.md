### UExporter


**属性**:

- `UAssetExportTask ExportTask []`
- `TArray<FString> FormatDescription [Descriptiong of the export format]`
- `TArray<FString> FormatExtension [File extension to use for this exporter]`
- `TSubclassOf<UObject> SupportedClass [Supported class of this exporter]`
- `bool bText [If true, this will export the data as text]`


**方法**:

- `bool ScriptRunAssetExportTask(UAssetExportTask Task)`  
  Export the given object to file.  Overridden by script based exporters.

@param        Task            The task to export.

@return       true if overridden by script exporter.

---

