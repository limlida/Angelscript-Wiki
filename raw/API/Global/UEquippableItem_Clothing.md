### UEquippableItem_Clothing


Defines a clothing item. Will use the skeletal mesh set in your EquipmentComponent and set it to the clothing mesh you select.

**属性**:

- `FCharacterCreatorAttribute_Mesh ClothingMeshData [The mesh to apply to the player]`
- `TMap<FGameplayTag,FCharacterCreatorAttribute_Mesh> FormSpecificMeshData [Add any form specific meshes to this map, and narrative will select the correct one.
      Useful for selecting different meshes for different character types. ie female, male, orc, etc.]`

---

