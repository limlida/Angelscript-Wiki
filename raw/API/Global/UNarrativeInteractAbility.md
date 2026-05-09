### UNarrativeInteractAbility


Defines how we interact with an Interaction slot. Abilities are great for this - they work well on NPCs and players, and are latent, which interaction often requires -
ie wait for anim to finish, wait for input, etc.

**属性**:

- `UNarrativeInteractableComponent InteractingWithComponent [The interactable component this interact ability is acting on.]`
- `UNarrativeInteractionComponent InteractionComponent [The interaction component that owns the interaction]`
- `FInteractionSlotConfig SlotConfiguration [The configuration for the interaction slot we've tried to use]`
- `UAbilityTask_WaitGameplayEvent WaitEndInteract [The wait gameplay event task]`


**方法**:

- `bool CanExitInteraction(bool bBeingStolen, FGameplayEventData OptionalPayload) const`
- `FinishInteraction(bool bWasStolen, FGameplayEventData OptionalPayload)`  
  Called when interaction needs finished - override this and do any finishing up of the interaction, ie if sitting play your Get Up montage, etc - call EndAbility when done.
- `HandleInteraction(bool bIsStealing, UNarrativeInteractionComponent StealingFrom)`  
  Interaction is simple - override this function, do whatever interaction stuff you need, then call EndInteraction when you're done! The slot will automatically be released for you.

---

