### ANarrativePlayerController


Base class for Player Controllers in Narrative Pro. Typically possesses an ANarrativePlayerCharacter.

**属性**:

- `UNarrativeAbilityInputMapping AbilityInputMappings [The default abilities we grant the player! We also store their input mappings so player subclass can bind these]`
- `UNarrativeGameplayHUD GameplayHUD []`
- `TSubclassOf<UNarrativeGameplayHUD> GameplayHUDClass [This is the gameplay HUD class we'll create the HUD with. TODO consider moving to player definition to allow per def customization of this?]`
- `UPlayerInteractionComponent InteractionComponent`
- `UInputAction LookAction [Look Input Action]`
- `TArray<FNPCTether> NPCTethers []`
- `UNarrativeNavigationComponent NavigationComponent`
- `FOnCinematicEvent OnLevelSequencePlay`
- `FOnCinematicEvent OnLevelSequenceStop`
- `ANarrativePlayerCharacter OwnedCharacter [We cache this because GetPawn() won't return our character if we started possessing a car, horse, etc. We'll need the OwnerCharacter.]`
- `UTalesComponent TalesComponent`


**方法**:

- `FastTravelToPOI(FPOIData POI)`  
  POI marker calls this to perform fast travelling, which we implement in BP
- `ANarrativePlayerCharacter GetControlledCharacter() const`  
  Return the controlled narrative char
- `UPlayerInteractionComponent GetInteractionComponent() const`
- `UNarrativeGameplayHUD GetNarrativeGameplayHUD() const`
- `FString GetNarrativeInputDeviceName() const`  
  Basically just return the input device name in a way the narrative input icon data table understands. Keyboard, Xbox, PS5, etc.
- `ANarrativePlayerCharacter GetOwnedCharacter() const`  
  Return the owned narrative char - will not be GetPawn() if we're in a car, on a mount, etc. - TODO see whether we want to always keep NChar possessed to avoid this.
- `UTalesComponent GetTalesComponent() const`
- `HandleDamageActor(AActor DamagedActor, float DamageAmount)`  
  Do whatever we like when we damage an actor, by default we put damage text up.
- `HandleDeath(AActor KilledActor, UNarrativeAbilitySystemComponent KilledActorASC)`  
  Gives our playercontroller a chance to react to death.
- `bool IsUsingGamepad() const`
- `NotifyDealtDamage(AActor DamagedActor, float32 DamageAmount)`

---

