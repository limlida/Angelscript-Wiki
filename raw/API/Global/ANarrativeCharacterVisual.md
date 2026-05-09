### ANarrativeCharacterVisual


Seperates the appearance behavior out from NarrativeCharacter. Also handles asyncronously loading the assets before they are applied to the character.

**属性**:

- `USceneComponent CharacterVisualRoot`
- `TMap<FGameplayTag,FGameplayTagContainer> CurrentHides [We use this to track if a slot is hiding other slots. ie Mesh.Helmet hides -> {Groom.Hair, Groom.Beard}]`
- `TMap<FGameplayTag,UGroomComponent> GroomComponents [The grooms added to this visual.]`
- `TMap<FGameplayTag,USkeletalMeshComponent> MeshComponents [The skeletal meshes added to the visual]`
- `TArray<USkeletalMeshComponent> MeshComponents_3P`
- `FCharacterAppearanceEvent OnBaseAppearanceApplied`
- `ANarrativeCharacter OwnerCharacter [Points to Character]`
- `TMap<FGameplayTag,TObjectPtr<AWeaponVisual>> SpawnedWeaponVisuals [Spawned weapon visuals, can be accessed via map]`
- `TMap<FGameplayTag,UStaticMeshComponent> StaticMeshComponents [The static meshes added to the visual]`
- `FName UpperBodyHideBone [In order to hide upper body, we'll hide all bones from this bone upwards - generally this is a spine bone.]`
- `bool bHideUpperBodyInFirstPerson [You generally want the upper half of the body hiding in first person.]`


**方法**:

- `bool AddWeaponVisual(UWeaponItem WeaponItem)`  
  Spawn a weapon visual, attach to us
- `AttachWeaponVisual(UWeaponItem WeaponItem, bool bHolster)`
- `BaseAppearanceApplied()`  
  Called after base meshes are set
- `ClearAnimBPOverride()`
- `GetAllLocalMeshes(TArray<UMeshComponent>& OutLocalMeshes)`  
  Return the local mesh as well as 1P hands/arms./
- `GetAllMeshes(TArray<USkeletalMeshComponent>& OutMeshes)`  
  Return all character meshes./
- `USkeletalMeshComponent GetBodyMesh()`  
  Return the body mesh - metahumans have one of these, and this is also often used for manny etc where we want to keep base mesh invisible.
- `FCharacterCreatorAttributeSet GetCreatorAttributes() const`  
  Get character visual attributes
- `USkeletalMeshComponent GetFaceMesh()`  
  Return the face mesh - can be null, your character doesn't require a face mesh
- `GetHeadMeshes(TArray<UMeshComponent>& OutHeadMeshes) const`  
  Return all meshes considered to be "head meshes". These meshes will be hidden when the camera clips into the head, typically because we're in first person mode.
- `FTransform GetHeadTransformWS()`  
  Returns Head transform in world space
- `USkeletalMeshComponent GetLeaderMesh()`  
  The mesh that clothing pieces will follow if desired. Returns Character.GetMesh() by default.
- `USkeletalMeshComponent GetLocalMesh()`  
  Return the local mesh - the local 1P mesh arms/hands etc follow.
- `USkeletalMeshComponent GetMainMesh()`  
  Return the main mesh - basically Character->GetMesh()
- `UMeshComponent GetMeshComponent(FGameplayTag Slot)`  
  More generic function for getting groom, SM, SK, etc.
- `ANarrativeCharacter GetOwnerCharacter()`  
  Get owner character
- `USkeletalMeshComponent GetSkeletalMeshComponent(FGameplayTag Slot) const`  
  Return the mesh at the provided slot.
- `UStaticMeshComponent GetStaticMeshComponent(FGameplayTag Slot) const`  
  Return the static mesh at the provided slot.
- `AWeaponVisual GetWeaponVisual(FGameplayTag WeaponSlot) const`  
  Returns our weapon visual. This just a generic actor that each weapon item defines, and holds the weapons static mesh and FX assets.
- `HandleEquipClothing(UEquippableItem_Clothing Clothing)`  
  Define what should happen to the character visual when a clothing item is equipped
- `HandlePerspectiveUpdate(bool bIsFirstPerson)`  
  Define how the character visual should update when we switch between third/first person perspective.
- `HandleUnEquipClothing(FGameplayTag Slot)`  
  Define what should happen to the character visual when a clothing item is UnEquipped
- `HandleUnWieldWeapon(UWeaponItem Weapon)`  
  Define what should happen to the character visual when a weapon is equipped.
- `HandleUpdateWields(FWeaponWieldState OldWieldState, FWeaponWieldState NewWieldState)`
- `HandleWieldWeapon(UWeaponItem Weapon)`  
  Define what should happen to the character visual when a weapon is equipped.
- `bool HasLoadHandles() const`  
  Check whether the visual has any assets its trying to load right now to apply  for
- `HideUpperBody(bool bWantsHide)`  
  Define how we want to hide the characters upper body when in first person mode
- `InitializeFromCharacterAndAppearance(ANarrativeCharacter NarrativeCharacter, UCharacterAppearance Appearance)`  
  Initialize from character and appearance asset - will replicate appearance to clients so they sync appearance
- `InitializeFromCharacterAndAttributes(ANarrativeCharacter NarrativeCharacter, FCharacterCreatorAttributeSet Attributes)`  
  Initialize from character and raw attribute set - useful for character creator data. Not replicated yet.
- `RemoveWeaponVisual(FGameplayTag WeaponSlot)`
- `SetAnimBPOverride(TSubclassOf<UAnimInstance> NewAnimBP)`

---

