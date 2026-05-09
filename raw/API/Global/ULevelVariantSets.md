### ULevelVariantSets


**方法**:

- `int GetNumVariantSets()`
- `UVariantSet GetVariantSet(int VariantSetIndex)`
- `UVariantSet GetVariantSetByName(FString VariantSetName)`
- `AddVariantSet(UVariantSet VariantSet)`  
  Adds VariantSet to the LevelVariantSets' list of VariantSets
- `RemoveVariantSet(UVariantSet VariantSet)`  
  Removes VariantSet from LevelVariantSets, if that is its parent
- `RemoveVariantSetByName(FString VariantSetName)`  
  Looks for a variant set with VariantSetName within LevelVariantSets and removes it, if it exists

---

