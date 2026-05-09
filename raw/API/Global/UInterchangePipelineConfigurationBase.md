### UInterchangePipelineConfigurationBase


**方法**:

- `EInterchangePipelineConfigurationDialogResult ScriptedShowPipelineConfigurationDialog(TArray<FInterchangeStackInfo>& PipelineStacks, TArray<UInterchangePipelineBase>& OutPipelines, UInterchangeSourceData SourceData, UInterchangeTranslatorBase Translator, UInterchangeBaseNodeContainer BaseNodeContainer)`  
  Non-virtual helper that allows Blueprint to implement an event-based function to implement ShowPipelineConfigurationDialog().
- `EInterchangePipelineConfigurationDialogResult ScriptedShowReimportPipelineConfigurationDialog(TArray<FInterchangeStackInfo>& PipelineStacks, TArray<UInterchangePipelineBase>& OutPipelines, UInterchangeSourceData SourceData, UInterchangeTranslatorBase Translator, UInterchangeBaseNodeContainer BaseNodeContainer, UObject ReimportAsset, bool bSceneImport = false)`  
  Non-virtual helper that allows Blueprint to implement an event-based function to implement ShowReimportPipelineConfigurationDialog().
- `EInterchangePipelineConfigurationDialogResult ScriptedShowScenePipelineConfigurationDialog(TArray<FInterchangeStackInfo>& PipelineStacks, TArray<UInterchangePipelineBase>& OutPipelines, UInterchangeSourceData SourceData, UInterchangeTranslatorBase Translator, UInterchangeBaseNodeContainer BaseNodeContainer)`  
  Non-virtual helper that allows Blueprint to implement an event-based function to implement ShowScenePipelineConfigurationDialog().
- `EInterchangePipelineConfigurationDialogResult ScriptedShowTestPlanConfigurationDialog(TArray<FInterchangeStackInfo>& PipelineStacks, TArray<UInterchangePipelineBase>& OutPipelines, UInterchangeSourceData SourceData, UInterchangeTranslatorBase Translator, UInterchangeBaseNodeContainer BaseNodeContainer, UObject ReimportAsset, bool bSceneImport = false, bool bReimport = false)`  
  Non-virtual helper that allows Blueprint to implement an event-based function to implement ShowTestPlanPipelineConfigurationDialog().

---

