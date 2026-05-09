### FInterchangeContentImportSettings


**属性**:

- `FName DefaultPipelineStack [Specifies which pipeline stack Interchange should use by default.]`
- `TMap<EInterchangeTranslatorAssetType,FName> DefaultPipelineStackOverride [Specifies a different pipeline stack for Interchange to use by default when importing specific types of assets.]`
- `TSoftClassPtr<UInterchangePipelineConfigurationBase> ImportDialogClass [Specifies the class that should be used to define the configuration dialog that Interchange shows on import.]`
- `TMap<FName,FInterchangePipelineStack> PipelineStacks [Configures the pipeline stacks that are available when importing assets with Interchange.]`
- `TMap<EInterchangeTranslatorAssetType,FInterchangeDialogOverride> ShowImportDialogOverride`
- `bool bShowImportDialog [Show the options dialog when Interchange imports.]`
- `bool bShowReimportDialog [Show the options dialog when Interchange reimports.]`


**方法**:

- `FInterchangeContentImportSettings& opAssign(FInterchangeContentImportSettings Other)`

---

