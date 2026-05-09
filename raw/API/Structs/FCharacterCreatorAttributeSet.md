### FCharacterCreatorAttributeSet


A set of character attributes ready to be applied to a character

**属性**:

- `TSubclassOf<UAnimInstance> BaseLocalMeshAnimBP [The AnimBP the local character should use to allow for a 1P setup]`
- `USkeletalMesh BaseMesh [The base skeletal mesh that should be used as the leader pose Character, usually hidden. Mesh will be set to this mesh.]`
- `TSubclassOf<UAnimInstance> BaseMeshAnimBP [The AnimBP the character mesh should use - TODO this and basement probably should be soft ref?]`
- `TSubclassOf<ANarrativeCharacterVisual> CharacterVisualClass [The visual class the character creator wants us to use]`
- `FGameplayTag FormTag [The form we've selected in the character creator]`
- `TMap<FGameplayTag,FCharacterCreatorAttribute_Groom> Grooms [The grooms to apply to the character]`
- `TMap<FGameplayTag,FCharacterCreatorAttribute_Mesh> Meshes [The meshes to apply to the character]`
- `TArray<FCharacterCreatorAttribute_Morph> Morphs [The morphs to apply to the character]`
- `TMap<FGameplayTag,float32> ScalarValues [Global scalar values that morphs and meshes can reference]`
- `TSubclassOf<UAnimInstance> UnarmedAnimLayer [The anim layer we should apply to the Base Mesh AnimBP by default]`
- `TMap<FGameplayTag,FLinearColor> VectorValues [Global vector values that morphs and meshes can reference]`
- `bool bHideBaseMesh [Whether or not to hide the base mesh. Usually you'd hide it as your other meshes follow the base mesh.]`


**方法**:

- `FCharacterCreatorAttributeSet& opAssign(FCharacterCreatorAttributeSet Other)`

---

