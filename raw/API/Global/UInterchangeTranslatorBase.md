### UInterchangeTranslatorBase


**方法**:

- `bool CanImportSourceData(const UInterchangeSourceData InSourceData) const`  
  return true if the translator can translate the given source data.
- `UInterchangeTranslatorSettings GetSettings() const`  
  Return this translator settings
- `const UInterchangeSourceData GetSourceData() const`  
  Get the associated source data for this translator.
- `EInterchangeTranslatorAssetType GetSupportedAssetTypes() const`
- `TArray<FString> GetSupportedFormats() const`  
  List of formats supported by the translator. Each entry is of the form "ext;Description" where ext is the file extension.
- `EInterchangeTranslatorType GetTranslatorType() const`  
  Specifies the capabilities of a translator.
- `SetSettings(const UInterchangeTranslatorSettings InterchangeTranslatorSettings)`  
  Reimport will set the settings if they exist in UInterchangeAssetImportData

---

