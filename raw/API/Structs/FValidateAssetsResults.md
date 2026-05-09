### FValidateAssetsResults


**属性**:

- `TMap<FString,FValidateAssetsDetails> AssetsDetails [Per asset details
Indexed by object path
Only returned if FValidateAssetsSettings::bCollectPerAssetDetails is true.]`
- `int NumChecked [Amount of tested assets]`
- `int NumExternalObjects [Total amount of external objects to validate with their owning asset (e.g. actors with maps).]`
- `int NumInvalid [Amount of assets with errors]`
- `int NumRequested [Total amount of assets that were gathered to validate, not including external objects such as actors.]`
- `int NumSkipped [Amount of assets skipped]`
- `int NumUnableToValidate [Amount of assets that could not be validated]`
- `int NumValid [Amount of assets without errors or warnings]`
- `int NumWarnings [Amount of assets with warnings]`
- `TMap<FTopLevelAssetPath,FValidatorStatistics> ValidatorStatistics [Per-validator statistics on assets validated and assets added for validation]`
- `bool bAssetLimitReached [True if FValidateAssetSettings::MaxAssetsToValidation was reached]`


**方法**:

- `FValidateAssetsResults& opAssign(FValidateAssetsResults Other)`

---

