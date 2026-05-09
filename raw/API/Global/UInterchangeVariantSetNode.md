### UInterchangeVariantSetNode


Class to represent a set of variants.

**方法**:

- `bool AddCustomDependencyUid(FString DependencyUid)`  
  Add the specified translated node's unique ID to this VariantSet.
- `GetCustomDependencyUid(int Index, FString& OutDependencyUid) const`  
  Retrieve the specified translated node's unique ID for this VariantSet.
- `int GetCustomDependencyUidCount() const`  
  Retrieve the number of translated node's unique IDs for this VariantSet.
- `GetCustomDependencyUids(TArray<FString>& OutDependencyUids) const`  
  Retrieve all the translated node's unique IDs for this VariantSet.
- `bool GetCustomDisplayText(FString& AttributeValue) const`  
  Retrieve the text that is displayed in the UI for this VariantSet.
- `bool GetCustomVariantsPayloadKey(FString& PayloadKey) const`  
  Get the payload key needed to retrieve the variants for this VariantSet.
- `bool RemoveCustomDependencyUid(FString DependencyUid)`  
  Remove the specified translated node's unique ID from this VariantSet.
- `bool SetCustomDisplayText(FString AttributeValue)`  
  Set the text to be displayed in the UI for this VariantSet.
- `bool SetCustomVariantsPayloadKey(FString PayloadKey)`  
  Set the payload key needed to retrieve the variants for this VariantSet.

---

