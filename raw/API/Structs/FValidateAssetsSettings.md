### FValidateAssetsSettings


**属性**:

- `int MaxAssetsToValidate [Maximum number of assets to attempt to validate]`
- `EDataValidationUsecase ValidationUsecase [The usecase requiring datavalidation]`
- `bool bCaptureAssetLoadLogs [If true, captures log warnings and errors from loading assets for validation and reports them as validation results]`
- `bool bCaptureLogsDuringValidation [If true, captures log warnings and errors from other operations that happen during validation and adds them to validation results]`
- `bool bCaptureWarningsDuringValidationAsErrors [If true, captured log warnings during validation are added to the validation results as errors (requires bCaptureLogsDuringValidation)]`
- `bool bCollectPerAssetDetails [If true, will add an FValidateAssetsDetails for each asset to the results]`
- `bool bLoadAssetsForValidation [If false, unloaded assets will get skipped from validation.]`
- `bool bLoadExternalObjectsForValidation [If false, external objects (e.g. actors stored separately from maps) will not be loaded when
validating their associated asset (e.g. the map)]`
- `bool bShowIfNoFailures [If true, will add notifications for files with no validation and display even if everything passes]`
- `bool bSkipExcludedDirectories [If true, will not validate files in excluded directories]`
- `bool bUnloadAssetsLoadedForValidation [If true, will attempt to unload assets which were previously unloaded, and loaded for validation.]`
- `bool bValidateReferencersOfDeletedAssets [Should we validate referencers of deleted assets in changelists]`


**方法**:

- `FValidateAssetsSettings& opAssign(FValidateAssetsSettings Other)`

---

