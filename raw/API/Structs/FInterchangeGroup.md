### FInterchangeGroup


**属性**:

- `FName DefaultPipelineStack [Specifies which pipeline stack Interchange should use by default.]`
- `TMap<EInterchangeTranslatorAssetType,FName> DefaultPipelineStackOverride [Specifies a different pipeline stack for Interchange to use by default when importing specific types of assets.]`
- `FName DisplayName [Specifies a different pipeline stack for Interchange to use by default when importing specific types of assets.]`
- `TMap<EInterchangeTranslatorAssetType,FInterchangeDialogOverride> ShowImportDialogOverride [This tell interchange if the import dialog should show or not when importing a particular type of asset.]`
- `FGuid UniqueID [This tell interchange if the import dialog should show or not when importing a particular type of asset.]`
- `bool bShowImportDialog [Show the options dialog when Interchange imports.]`
- `bool bShowReimportDialog [Show the options dialog when Interchange reimports.]`


**方法**:

- `FInterchangeGroup& opAssign(FInterchangeGroup Other)`

---

