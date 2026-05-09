### UEditorValidatorBase


* The EditorValidatorBase is a class which verifies that an asset meets a specific ruleset.
* It should be used when checking engine-level classes, as UObject::IsDataValid requires
* overriding the base class. You can create project-specific version of the validator base,
* with custom logging and enabled logic.
*
* C++ and Blueprint validators will be gathered on editor start, while python validators need
* to register themselves

**属性**:

- `bool bIsEnabled []`
- `bool bOnlyPrintCustomMessage [Whether we should also print out the source validator when printing validation errors.]`


**方法**:

- `AssetFails(const UObject InAsset, FText InMessage)`  
  Marks the validation as failed and adds an error message.
- `AssetPasses(const UObject InAsset)`  
  Marks the validation as successful. Failure to call this will report the validator as not having checked the asset.
- `AssetWarning(const UObject InAsset, FText InMessage)`  
  Adds a message to this validation but doesn't mark it as failed.
- `EDataValidationResult GetValidationResult() const`
- `bool CanValidate(EDataValidationUsecase InUsecase) const`  
  Override this to determine whether or not you can use this validator given this usecase
- `bool CanValidateAsset(UObject InAsset) const`  
  Override this to determine whether or not you can validate a given asset with this validator
- `EDataValidationResult ValidateLoadedAsset(UObject InAsset)`  
  Override this in blueprint to validate assets

---

