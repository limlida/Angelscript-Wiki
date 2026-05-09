### UNarrativeSaveWithCreatorData


A narrative save file, but we've added character creator data - the character creator level reads/writes to this.

**属性**:

- `FCharacterCreatorAttributeSet CharacterCreatorAttributes [Our character creator attributes]`
- `FString CharacterCreatorUsername [Our characters username we set in the character creator. If empty for some reason we'll use the default username.]`


**方法**:

- `ClearMeshesAndGrooms()`  
  Clear our creator meshes and grooms - we do this usually when the form changes.
- `SetCreatorDataGroom(UCharacterCreatorItem_Groom GroomItem)`  
  Set a creator data groom
- `SetCreatorDataMesh(UCharacterCreatorItem_Mesh MeshItem)`  
  Set a creator data mesh
- `SetCreatorScalarValue(FGameplayTag TagID, float32 NewValue)`  
  Set a creator scalar value
- `SetCreatorVectorValue(FGameplayTag TagID, FLinearColor NewValue)`  
  Set a creator Vector value

---

