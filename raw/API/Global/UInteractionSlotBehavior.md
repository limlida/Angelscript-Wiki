### UInteractionSlotBehavior


Defines a behavior that should be ran when a player or NPC interacts with an Interaction Slot. Subclass this and add any variables your SlotInteractBehavior requires.

**属性**:

- `TSet<TObjectPtr<UNarrativeInteractionComponent>> AllowedInteractors [If not empty, we'll only let them interact with the given interactable. Useful during quests etc when you need to lock characters out of interacting with a slot.]`
- `FText FinishInteractText [If set to something, we'll display this to the user to prompt them to get up]`
- `TSubclassOf<UNarrativeInteractAbility> SlotInteractBehavior [This ability will be fired when a character interacts with this slot. The slot will release when the ability ends.]`
- `bool bIsStealableByDefault [Whether or not we should be able to steal this by default - ultimately IsStealable() decides]`


**方法**:

- `TArray<FInteractionDebugVisualizeSlot> GetDebugSlots(FTransform SlotTransform, FTransform OwnerTransform) const`
- `bool IsStealable(int OurSlot, UNarrativeInteractableComponent OurInteractable, UNarrativeInteractionComponent Interactor) const`  
  Define whether or not the slot this behavior is on is stealable - we let the behavior define this.
- `bool IsUsable(int OurSlot, UNarrativeInteractableComponent OurInteractable, UNarrativeInteractionComponent Interactor) const`  
  Define whether or not the slot is usable by the given interactor - useful if you need to lock certain people out of using the slot

---

