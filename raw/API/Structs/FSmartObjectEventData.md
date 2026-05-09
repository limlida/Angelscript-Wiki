### FSmartObjectEventData


Struct describing a change in Smart Object or Slot.

**属性**:

- `ESmartObjectChangeReason Reason [Change reason.]`
- `FSmartObjectSlotHandle SlotHandle [Handle to the changed slot, if invalid, the event is for the object.]`
- `FSmartObjectHandle SmartObjectHandle [Handle to the changed Smart Object.]`
- `FGameplayTag Tag [Added/Removed tag, or event tag, depending on Reason.]`


**方法**:

- `FSmartObjectEventData& opAssign(FSmartObjectEventData Other)`

---

