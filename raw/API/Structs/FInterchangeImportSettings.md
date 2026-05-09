### FInterchangeImportSettings


**属性**:

- `FName DefaultPipelineStack [Specifies which pipeline stack Interchange should use by default.]`
- `TSoftClassPtr<UInterchangePipelineConfigurationBase> ImportDialogClass [Specifies the class that should be used to define the configuration dialog that Interchange shows on import.]`
- `TMap<FName,FInterchangePipelineStack> PipelineStacks [Configures the pipeline stacks that are available when importing assets with Interchange.]`
- `bool bShowImportDialog [Show the options dialog when Interchange imports.]`
- `bool bShowReimportDialog [Show the options dialog when Interchange reimports.]`


**方法**:

- `FInterchangeImportSettings& opAssign(FInterchangeImportSettings Other)`

---

