### ANarrativeCharacter


Base class for characters built on Narrative Pro framework. Sets up some core stuff you probably want - a navigation marker, interactions, inventories, etc.

**属性**:

- `UNarrativeAbilitySystemComponent AbilitySystemComponent`
- `UCharacterAppearanceBase Appearance [Our characters current appearance asset]`
- `FAttachWarpProps AttachWarpProps []`
- `UNarrativeAttributeSetBase AttributeSetBase`
- `ANarrativeCharacterVisual CharVisual [Our characters visual - this allows us to have n number of meshes in addition to Character.GetMesh()]`
- `int CharacterRandomSeed [This characters random seed, generated once and synced on client-server. Can be used for anything this character needs.
       When we do networking we'll need to add a check to see if this is replicated yet]`
- `FNarrativeCharacterEvent CharacterVisualInitialized`
- `TArray<TSubclassOf<UNarrativeGameplayAbility>> DefaultAbilities [Default abilities to grant the player]`
- `TSubclassOf<UGameplayEffect> DefaultAttributes [Default attributes for a character for initializing on spawn/respawn.
This is an instant GE that overrides the values for attributes that get reset on spawn/respawn.]`
- `UEquipmentComponent EquipmentComp`
- `UWeaponItem EquippedWeapon [Our currently equipped weapon]`
- `UNarrativeInventoryComponent InventoryComponent [Our characters inventory component. This is lightweight and won't effect performance if you don't use it.]`
- `bool IsPlayingAttachWarpMontage []`
- `float32 LevelExponentX [Lowering this number means the base XP required per level is higher]`
- `float32 LevelExponentY [Upping this value means higher jumps between levels, ie levels will grow exponentially]`
- `UCharacterMapMarker MapMarker [Our characters map marker]`
- `UMotionWarpingComponent MotionWarpingComponent`
- `FCharacterJumped OnJumpedDelegate`
- `FOnTraverse OnStartTraversal [Broadcast when a traversal has occured]`
- `FOnTeleported OnTeleported [Broadcast when we telport somewhere - NPCs need this to teleport with our player if they do]`
- `TArray<TObjectPtr<AActor>> ReplicatedMoveIgnoreActors [List of primitives to ignore whilst moving. UE doesn't replicate this list by default, but we need it replicated so
      simulated proxies can replay moves and not get fighting. Can be removed if we fully move to ContextualSceneAnims.]`
- `TArray<TSubclassOf<UGameplayEffect>> StartupEffects [These effects are only applied one time on startup]`
- `UChooserTable TraversalTable`
- `TArray<UNarrativeTrigger> Triggers [TODO move these into a proper asset that lives on CharacterDefinition]`
- `FWeaponWieldState WieldState [Our currently wielded weapons, replicated as a single variable so equips can be processed in one go - important for dual wielding.]`
- `bool bIsRagdoll [Whether or not we're ragdolling.]`
- `bool bWantsMapMarker [Whether our character needs a map marker]`


**方法**:

- `FGameplayAbilitySpecHandle AddAbility(TSubclassOf<UNarrativeGameplayAbility> Ability, UObject SourceObject = nullptr)`  
  Add an ability, and return the spec handle.
- `UNarrativeTrigger AddTrigger(UNarrativeTrigger Template)`  
  Add a trigger by copying the passed in template object
- `ApplyAppearance(UCharacterAppearance DefaultAppearance)`  
  Apply an appearance to the spawned character visual
- `ApplyTriggerSets(TArray<UTriggerSet> DefaultSet)`  
  Called when our default trigger sets are ready
- `float32 CalcSightStrength(FVector Start, FVector End, const AActor Looker)`
- `bool CanExitRagdoll() const`
- `bool CanRagdoll() const`
- `ChangeAppearance(UCharacterAppearance DefaultAppearance)`  
  Change appearance - different from apply appearance in that you can call this at runtime to dynamically change appearance!
- `float32 GetAttackRange() const`  
  Get the range we can attack someone from
- `UNarrativeAttributeSetBase GetAttributeSetBase() const`
- `UNarrativeAnimInstance GetCharacterAnimInstance() const`  
  Returns our characters narrative anim instance, which should always be on Char mesh.
- `UCharacterDefinition GetCharacterDefinition() const`  
  Get the character definition from the character
- `int GetCharacterLevel() const`
- `FText GetCharacterName() const`  
  Returns our characters name.
- `int GetCharacterRandomSeed() const`
- `ANarrativeCharacterVisual GetCharacterVisual() const`
- `TSubclassOf<ANarrativeCharacterVisual> GetCharacterVisualClass(UCharacterAppearance DefaultAppearance) const`
- `UEquipmentComponent GetEquipmentComponent() const`
- `AWeaponVisual GetEquippedWeaponVisual() const`  
  Returns the visual of the equipped weapon
- `FVector GetFloorLocation(float32 ZOffset = 0.000000) const`  
  Get the location of the floor, optionally offset by a z
- `FVector GetHeadLookAtLocation(bool& bOutWantsLookAt) const`  
  Used by AnimBP to ask where the head bone should look at - players and bots can then implement their own seperate functionalities
- `float32 GetHealth() const`
- `UNarrativeInteractionComponent GetInteractionComponent() const`  
  Get the interactioncomponent from the character
- `UNarrativeInventoryComponent GetInventoryComponent() const`  
  Get the inventory component from this character
- `UCharacterMapMarker GetMarkerComponent() const`
- `float32 GetMaxHealth() const`
- `float32 GetMaxStamina() const`
- `UMotionWarpingComponent GetMotionWarpingComponent() const`
- `UNarrativeAbilitySystemComponent GetNarrativeAbilitySystemComponent() const`
- `UNarrativeCharacterMovement GetNarrativeCharacterMovement() const`  
  Get the Narrative character movement component.
- `AController GetOwningController() const`  
  Return the owning controller of this NarrativeCharacter, even if it is not possessing us right now
- `float32 GetPercentToNextLevel() const`
- `FVector GetRootBoneLocation() const`  
  Get the location of the floor, minus 2 units on Z, this is our root mesh bone location
- `float32 GetStamina() const`
- `float32 GetStealthRating() const`
- `UWeaponItem GetWeapon(bool bMainhand = true) const`  
  Returns our equipped weapon item. This is the item in our inventory driving our weapon, it holds data like the weapons abilities, spread, damage etc.
- `AWeaponVisual GetWeaponVisual(FGameplayTag WeaponSlot) const`  
  Returns our weapon visual. This just a generic actor that each weapon item defines, and holds the weapons static mesh and FX assets.
- `FWeaponWieldState GetWeaponWieldState() const`  
  Returns our characters current wield state.
- `TArray<UWeaponItem> GetWieldedWeapons() const`  
  Return all wielded weapons.
- `AWeaponVisual GetWieldedWeaponVisual(bool bMainhand = true) const`  
  Returns the visual of the weapon in the given wield slot
- `float32 GetXP() const`
- `TArray<FGameplayAbilitySpecHandle> GrantAbilities(TArray<TSubclassOf<UNarrativeGameplayAbility>> Abilities, UObject SourceObject = nullptr)`  
  Add abilities, overriding any of the default ones our ability set has granted us
- `HandleDeath(AActor KilledActor, UNarrativeAbilitySystemComponent KilledActorASC)`
- `InitNewCharacter(UCharacterDefinition NewDefinition)`  
  Called when OnDefinitionSet sees we dont have any save data and new initialized for first time.
- `bool IsAlive() const`
- `bool IsCameraInsideHead() const`  
  Return whether camera is inside the head - essentially, whether we're in First Person. We can be in first person mode
       but not fully transitioned into it yet, hence the naming being specific about what this is doing
- `bool IsCharacterPendingLoad() const`  
  Check if our character is waiting to be loaded in
- `bool IsMovementLocked() const`  
  returns true when the character has the Narrative.State.Movement.Lock tag.
- `bool IsRagdoll(bool bCheckGettingUp = true) const`  
  Check if we're in ragdoll - bCheckGettingUp makes function return true if we're not ragdolling, but are getting up from a ragdoll.
- `float32 LevelToXP(int Level) const`
- `MultiCastPlayAttachWarp(FAttachWarpProps InTraversalProps)`
- `OnDefinitionSet(UCharacterDefinition NewDefinition)`  
  This is called when the NarrativeCharacters definition is updated.
- `OnDefinitionSet_Base(UCharacterDefinition NewDefinition)`  
  方便AS调用C++实现（因为AS实现BlueprintNativeEvent后，无法通过Super调用C++的实现，所以需要这个函数）
- `OnEndDialogue(UDialogue Dialogue)`  
  Called when this character finishes being a dialogue avatar.
- `OnEnterDialogue(UDialogue Dialogue)`  
  Called when this character becomes a dialogue avatar.
- `PlayAttachWarp(FAttachWarpProps InAttachWarpProps)`  
  Set OptionalInBlendTime to -1 if you want to use the default montage blend times
- `RagdollForDuration(float32 Duration)`  
  Ragdoll for the set amount of time. Useful for effects like getting knocked down, etc. Calling multiple times restarts the duration.
- `RagdollWithDamageAndImpulse(float32 Duration, FVector Impulse, float32 Damage)`  
  Ragdoll with damage and an impulse. Useful for impacts from things like cars where being hit should send us flying and deal some damage
- `RefreshCapsuleRotationSettings()`  
  Checks if we have a weapon, are in first person, etc and updates UseControllerRotationYaw and Orient Rotation to movement accordingly.
- `RemoveAbilities(TArray<FGameplayAbilitySpecHandle> Abilities)`  
  Remove abilities, and add any default ones back
- `bool RemoveTrigger(UNarrativeTrigger Trigger)`
- `ServerPlayAttachWarp(FAttachWarpProps InTraversalProps)`
- `ServerStartRagdoll(bool bWantsRagdoll)`
- `bool SetEventActive(UNarrativeEvent Event, bool bActivate)`  
  Executes a NarrativeEvent with this character as the target - return true if we passed conds and event succeeded
- `SetIgnoreActorWhenMoving(AActor IgnoreActor, bool bShouldIgnore)`  
  Add a move ignore actor for our capsule. Replicated to simulated proxies. We can remove this if/when we move to ContextualAnims, as the CAComp handles replicating this.
- `SetRagdoll(bool bWantsRagdoll)`  
  Enter ragdoll. Replicates to other clients.
- `SetWieldState(FWeaponWieldState NewWieldState)`  
  Set our wielded weapons
- `SpawnCharacterVisual(UCharacterAppearance DefaultAppearance)`
- `bool TryAttachWarp(bool PressedJump, FVector2D InputVector, float32 OptionalInBlendTime)`  
  Set OptionalInBlendTime to -1 if you want to use the default montage blend times
- `int XPToLevel(float32 XP) const`

---

