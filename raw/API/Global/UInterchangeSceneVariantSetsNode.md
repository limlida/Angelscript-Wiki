### UInterchangeSceneVariantSetsNode


Class to represent a set of VariantSet nodes

**方法**:

- `bool AddCustomVariantSetUid(FString VariantUid)`  
  Add the specified VariantSet's unique id to this object.
- `GetCustomVariantSetUid(int Index, FString& OutVariantUid) const`  
  Retrieve the specified VariantSet's unique id for this object.
- `int GetCustomVariantSetUidCount() const`  
  Retrieve the number of VariantSets for this object.
- `GetCustomVariantSetUids(TArray<FString>& OutVariantUids) const`  
  Retrieve all the VariantSets' unique ids for this object.
- `bool RemoveCustomVariantSetUid(FString VariantUid)`  
  Remove the specified VariantSet's unique id from this object.

---

