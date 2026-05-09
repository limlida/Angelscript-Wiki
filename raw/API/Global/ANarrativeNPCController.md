### ANarrativeNPCController


NPC Controller for NPCs spawned by the Narrative NPC subsystem.

**属性**:

- `UNarrativeAbilitySystemComponent GrantedToken [The current attack token we've claimed]`
- `UNPCInteractionComponent InteractionComponent [NPCs interaction component]`
- `UNPCActivityComponent NPCActivityComponent [The NPC activity component, stores the behaviour tree and current state and can write that to disk.]`
- `ANarrativeNPCCharacter OwnedCharacter [We cache this because GetPawn() won't return our character if we started possessing a car, horse, etc. We'll need the OwnedCharacter.]`
- `float32 SmoothFocusInterpSpeed`


**方法**:

- `CleanUp(float RemovePawnDelay)`  
  Tells the AI controller it needs to destroy itself and its pawn.
- `UNPCActivityComponent GetActivityComponent() const`
- `ANarrativeNPCCharacter GetControlledNPC() const`  
  Grab the controlled NPC. This will return nullptr if NPC is controlling a car, or some other pawn. Use GetOwnedNPC() for a version that returns the NPC regardless of what GetPawn() is
- `UBehaviorTree GetCurrentTree()`
- `UNPCInteractionComponent GetInteractionComponent() const`
- `UNPCDefinition GetNPCData() const`  
  Grab the NPCs data asset
- `FText GetNPCName() const`  
  Grab the NPCs name
- `ANarrativeNPCCharacter GetOwnedNPC() const`
- `HandleDeath(AActor KilledActor, UNarrativeAbilitySystemComponent KilledActorASC)`  
  Gives our NPC controller a chance to react to death.
- `bool IsAlive() const`  
  Check whether our controlled NPC is alive
- `bool RequestAttackToken(UNarrativeAbilitySystemComponent TargetToAttack)`  
  Request an attack token from the target ASC. Return true if we successfully claimed the token and can attack.
- `bool ReturnToken()`  
  Give our token back to the current ASC - called automatically by RequestAttackToken if we already have one.

---

