### FNiagaraAssetTagDefinition


An Asset Tag Definition defines a tag that can be added to various Niagara assets for sorting & filtering purposes.

**属性**:

- `int AssetFlags [Select the asset types this tag can apply to. This is used to hide tags that can never apply for a given type.]`
- `FText AssetTag [The Display Name used for this tag.]`
- `FLinearColor Color [The color used in UI to represent this tag.]`
- `FText Description [Further explanation of what this tag is about.]`
- `ENiagaraAssetTagDefinitionImportance DisplayType [Whether this tag should be shown directly or in the drop down for additional filters.]`


**方法**:

- `FNiagaraAssetTagDefinition& opAssign(FNiagaraAssetTagDefinition Other)`

---

