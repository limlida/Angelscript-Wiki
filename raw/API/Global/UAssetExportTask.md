### UAssetExportTask


Contains data for a group of assets to export

**属性**:

- `TArray<FString> Errors [Array of error messages encountered during exporter]`
- `UExporter Exporter [Optional exporter, otherwise it will be determined automatically]`
- `FString Filename [File to export as]`
- `TArray<TObjectPtr<UObject>> IgnoreObjectList [Array of objects to ignore exporting]`
- `UObject Object [Asset to export]`
- `UObject Options [Exporter specific options]`
- `bool bAutomated [Unattended export]`
- `bool bPrompt [Allow dialog prompts]`
- `bool bReplaceIdentical [Replace identical files]`
- `bool bSelected [Export selected only]`
- `bool bUseFileArchive [Save to a file archive]`
- `bool bWriteEmptyFiles [Write even if file empty]`

---

