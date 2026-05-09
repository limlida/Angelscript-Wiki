### UInterchangeImportTestStepImport


**属性**:

- `FInterchangeTestPlanPipelineSettings PipelineSettings []`
- `TArray<TObjectPtr<UInterchangePipelineBase>> PipelineStack [The pipeline stack to use when importing (an empty array will use the defaults)]`
- `FInterchangeTestScreenshotParameters ScreenshotParameters [Screen Shot Settings]`
- `FFilePath SourceFile [The source file to import (path relative to the json script)]`
- `bool bEmptyDestinationFolderPriorToImport [Whether the destination folder should be emptied prior to import]`
- `bool bImportIntoLevel [Whether we should use the import into level workflow]`
- `bool bTakeScreenshot [Whether screenshot would be taken at this stage.]`
- `bool bUseOverridePipelineStack [Whether the import should use the override pipeline stack]`

---

