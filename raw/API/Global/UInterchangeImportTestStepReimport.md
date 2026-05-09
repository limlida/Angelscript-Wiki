### UInterchangeImportTestStepReimport


**属性**:

- `FString AssetNameToReimport [If there were multiple assets of the above type imported, specify the concrete name here.]`
- `TSubclassOf<UObject> AssetTypeToReimport [The type of the asset to reimport. If only one such asset was imported, this is unambiguous.]`
- `FInterchangeTestPlanPipelineSettings PipelineSettings [Pipeline settings that would allow modifying the pipelines as reimport pipelines]`
- `TArray<TObjectPtr<UInterchangePipelineBase>> PipelineStack [The pipeline stack to use when re-importing (an empty array will use the original import pipelines)]`
- `FInterchangeTestScreenshotParameters ScreenshotParameters [Screen Shot Settings]`
- `FFilePath SourceFileToReimport [The source file to import (path relative to the json script).]`
- `bool bImportIntoLevel [If this is an import into level with new file in the same directory as import]`
- `bool bTakeScreenshot [Whether a screenshot should be captured after reimport.]`
- `bool bUseOverridePipelineStack [Whether the import should use the override pipeline stack]`

---

