### UNarrativeInteractionComponent


Added to both Player and NPC controllers. Allows both NPCs and Players to interact with the world.
See UPlayer/NPCInteractionComponents for speciaized versions.

**属性**:

- `FGameplayAbilitySpecHandle CurrentInteractAbilityHandle [Handle to current interaction ability]`
- `FInteractionSlotClaimHandle InteractionSlotClaimHandle [Our interaction slot claim handle, if we've claimed an interactables slot.
Originally was going to be an actual handle, however this is more just a reference to our interactable, needs a rename.]`
- `UNarrativeInteractableComponent OccupiedInteractable [The interactable we've claimed a slot on and are currently interacting with]`
- `int OccupiedInteractableSlotIdx [The index of the slot we're occupying]`
- `TSoftObjectPtr<AActor> OccupiedInteractableSoftOwner [Soft ref of the owner so we can restore when the game loads back in. For NPCs this is done by the interact goal.
Currently players dont restore this, and saving is preventing whilst player is interacting with something.]`
- `FOnUseInteractable OnBeginUseInteractable [Called when we interact with an interactable object - this works for both Slot based interaction and quick interaction.]`
- `FOnUseInteractable OnFinishUseInteractable [Called when the interaction slot we've taken is released as our interaction behavior has finished]`
- `AController OwningController [Our controller owner]`
- `ANarrativeCharacter OwningPawn [Our owning character]`


**方法**:

- `bool ClaimInteractionSlot(UNarrativeInteractableComponent Interactable, int SlotIdx)`  
  Claims an interaction slot on the given Interactable
- `UNarrativeInteractAbility GetInteractAbility() const`  
  * Return true if the ability is happy for us to exit our interaction
- `bool HasOccupiedInteractable() const`  
  Return true if we're occuping an interactable currently, such as a seat.
- `ReleaseInteractionSlot()`  
  Releases our claimed interactable slot if we have one
- `bool RunInteractBehavior(bool bIsStealing, UNarrativeInteractionComponent StealingFrom = nullptr)`  
  Begins the interaction ability for our currently claimed slot, return true if worked.
       *
       @param bIsStealing Whether or not we're stealing the slot from someone
       @param StealingFrom if we're stealing the slot from someone, this will contain that person, so we can do any logic on them we need.
- `ServerStopInteractBehavior(bool bWasStolen, UNarrativeInteractionComponent OptionalStealer, FGameplayEventData OptionalPayload)`
- `bool StopInteractBehavior(bool bWasStolen, UNarrativeInteractionComponent OptionalStealer, FGameplayEventData OptionalPayload)`  
  Ends the interaction behavior for our current ability.Can return false if we can't exit the interaction,
       for example if we tried exiting a car but it was moving too fast to allow an exit.

       @param bWasStolen Whether or not we're ending because someone is stealing the slot
       @param OptionalStealer points to the person who has stolen the slot and stopped our interact behavior
       @param OptionalPayload additional payload data the stop interact data can use to mo

---

