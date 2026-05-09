### UNPCInteractionComponent


Interaction component used by NPCCharacters.

**属性**:

- `FOnTargetedInteractionSlotChanged OnTargetedInteractionSlotChanged [We broadcast this whenever our targeted slot changes so interact activity can change its BB values.]`


**方法**:

- `bool TargetBestInteractionSlot(UNarrativeInteractableComponent Interactable, bool bFindNewSlotIfSlotTaken)`  
  Start targeting an interaction slot
- `bool TargetInteractionSlot(UNarrativeInteractableComponent Interactable, int Index, bool bAutoUpdateIfSlotStolen)`  
  Start targeting an interaction slot
@param  bAutoUpdateIfSlotStolen Will automatically target a new slot if our one is lost.

---

