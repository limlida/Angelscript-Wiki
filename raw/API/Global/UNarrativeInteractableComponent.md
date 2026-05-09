### UNarrativeInteractableComponent


Not to be confused with the NarrativeInteractionComponent which enables a pawn to interact with interactables,
the NarrativeInteractableComponent enables an actor to be interacted with in some way.

This also contains interaction slots - these are a more lightweight implementation of UE's smartobjects however unlike SmartObjects they handle networking,
and both NPC/Player interaction instead of being AI focused. They implement interaction behavior via a GameplayAbility which works well as lots of interaction
need to be latent, which GameplayAbilities excel at.See the UNarrativeInteractAbility class for more.

If no slots are added, interacting with the interactable object will just fire the OnInteract delegate - great for simple interactions like taking a pickup.

**属性**:

- `UMaterialInterface FocusedOverlayMaterial [A material to draw over any mesh components our owner has when this interatable is focused]`
- `FText InteractableActionText [The verb that describes how the interaction works, ie "Sit" for a chair, "Eat" for food, "Light" for a fireplace]`
- `FText InteractableNameText [The name that will come up when the player looks at the interactable]`
- `float32 InteractionDistance [The max distance the player can be away from this actor before you can interact]`
- `TArray<FInteractionSlotConfig> InteractionSlots [The interactables interaction slots - this is essentially a more lightweight implementation of UE's smartobjects
       that handles networking, and both NPC/Player interaction as smartobjects doesn't handle those well.]`
- `float32 InteractionTime [The time the player must hold the interact key to interact with this object]`
- `FOnBeginFocus OnBeginFocus [[local + server] Called when the player starts looking at this interactable]`
- `FOnBeginInteract OnBeginInteracted [[local + server] Called when the player presses the interact key whilst focusing on this interactable actor]`
- `FOnEndFocus OnEndFocus [[local + server] Called when the player stops looking at this interactable]`
- `FOnEndInteract OnEndInteracted [[local + server] Called when the player releases the interact key, stops looking at the interactable actor, or gets too far away after starting an interact]`
- `FOnInteract OnInteracted [[local + server] Called when the player has interacted with the item for the required amount of time]`
- `FOnTargetedSlotTaken OnTargetedSlotTaken [[local + server] Called when a targeted slot gets removed.]`
- `TArray<FActiveInteractionSlot> SlotStatuses [The active interaction slots]`


**方法**:

- `bool CanInteract(APawn Interactor, UNarrativeInteractionComponent InteractionComp, FText& OutErrorText)`  
  Return true if the given interactor is allowed to interact with us

@param OutErrorText this is the reason why the interact isn't allowed
- `FInteractionSlotClaimHandle ClaimSlot(UNarrativeInteractionComponent Claimer, int SlotToClaimIdx, bool bMarkTargeted = false)`  
  Claim a slot, set its active slot data to our character, and set its status to either targeted or claimed depending on bShouldTarget
- `TArray<int> GetAvailableSlots(UNarrativeInteractionComponent Claimer, bool bIncludeTargeted = true, bool bIncludeStealable = true)`  
  Return a list of available slots for the given claimer
- `int GetBestAvailableSlot(UNarrativeInteractionComponent Claimer, TArray<int> SlotsToCheck)`  
  Return the closest slot to the claimer.
- `FInteractionSlotConfig GetConfigAtSlot(int SlotIndex)`  
  Used by NPCs to reserve the first available slot.
- `FText GetInteractableActionText(APawn Interactor, UNarrativeInteractionComponent InteractionComp) const`
- `FText GetInteractableNameText(APawn Interactor, UNarrativeInteractionComponent InteractionComp) const`
- `TArray<int> GetSlotsAtIndex(int SlotIndex) const`  
  Slots can be linked with others - this returns all slots at a given index so we can update any linked ones.
- `bool HasSlotAvailable(bool bAllowTargeted) const`  
  Ask if any slots are available

       @param bAllowTargeted consider a slot available if it is only targeted and not actually occupied
- `OnBeginInteract(APawn Interactor, UNarrativeInteractionComponent InteractionComp)`
- `OnEndInteract(APawn Interactor, UNarrativeInteractionComponent InteractionComp)`
- `OnInteract(APawn Interactor, UNarrativeInteractionComponent InteractionComp)`
- `SetInteractableActionText(FText NewActionText)`
- `SetInteractableNameText(FText NewNameText)`  
  Call this to change the name of the interactable. Will also refresh the interaction widget.
- `UpdateSlotStatus(UNarrativeInteractionComponent Claimer, int SlotIndex, EInteractionSlotStatus NewStatus)`  
  Used by both players and NPCs to claim/target/release a slot

---

