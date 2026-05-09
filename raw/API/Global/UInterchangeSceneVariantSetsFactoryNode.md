### UInterchangeSceneVariantSetsFactoryNode


**方法**:

- `bool AddCustomVariantSetUid(FString VariantUid)`  
  Add a unique id of a translated VariantSet for this object.
- `GetCustomVariantSetUid(int Index, FString& OutVariantUid) const`  
  Retrieve the UID of the VariantSet with the specified index.
- `int GetCustomVariantSetUidCount() const`  
  Retrieve the number of unique IDs of all translated VariantSets for this object.
- `GetCustomVariantSetUids(TArray<FString>& OutVariantUids) const`  
  Retrieve the unique IDs of all translated VariantSets for this object.
- `bool RemoveCustomVariantSetUid(FString VariantUid)`  
  Remove the specified unique ID of a translated VariantSet from this object.

---

