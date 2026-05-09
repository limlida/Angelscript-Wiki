### FInteractionSlotConfig


Defines a slot for interacting with the interactable.

**属性**:

- `FColor DebugColor [Debug color for the slot]`
- `TArray<int> LinkedSlots [Linked slots - any slots in here will have their statuses linked with this slot
       Useful for things like a horse where you can get on from multiple sides, but both sides
       represent the same seat on the horse.]`
- `UInteractionSlotBehavior SlotInteractBehavior [This ability will be fired when a character interacts with this slot. The slot will release when the ability ends.]`
- `FGameplayTag SlotTag [Optional tag used for the slot]`
- `FTransform SlotTransform [NPCs will move to this transform when attempting to use the slot, and players can be motion warped to this spot etc if required.]`


**方法**:

- `FInteractionSlotConfig& opAssign(FInteractionSlotConfig Other)`

---

