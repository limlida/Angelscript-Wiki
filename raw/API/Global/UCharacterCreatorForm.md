### UCharacterCreatorForm


A form defines a character creator options - ie Male, Female, Goblin, etc. It also defines what the character looks like by default when you switch forms.

**属性**:

- `USkeletalMesh BaseMesh [The base mesh this form should have by default - usually hidden]`
- `TArray<TObjectPtr<UCharacterCreatorPage>> CharacterCreatorPages [The pages in the character creator - each page is made up of sections, and each section has settings in it that can be changed.]`
- `TSubclassOf<ANarrativeCharacterVisual> CharacterVisualClass [The visual class that should be spawned if we're using this form]`
- `TMap<FGameplayTag,TObjectPtr<UCharacterCreatorItem_Groom>> DefaultCharacterCreatorGrooms [The default grooms this form has when selected]`
- `TMap<FGameplayTag,TObjectPtr<UCharacterCreatorItem_Mesh>> DefaultCharacterCreatorMeshes [The default meshes the form has when selected]`
- `TSubclassOf<UAnimInstance> DefaultCharacterUnarmedAnim [The animation blueprint this form should have by default]`
- `FText FormDisplayName [The display name of this form - Male, Female, Dog, Cat, etc!]`
- `FGameplayTag FormTag [The forms tag ID - you can grab this ingame to determine players form - useful for items that may display differently on different genders etc]`
- `bool bHideBaseMesh [Whether or not to hide the base mesh. Usually you'd hide it and your visible body parts would follow this.]`

---

