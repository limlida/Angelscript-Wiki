### FMapPlayerKeyArgs


Arguments that can be used when mapping a player key

**属性**:

- `FName HardwareDeviceId [An OPTIONAL specifier about what kind of hardware this mapping is for.]`
- `FName MappingName [The name of the mapping for this key. This is either the default mapping name from an Input Action asset, or one
that is overridden in the Input Mapping Context.]`
- `FKey NewKey [The new Key that this should be mapped to]`
- `FString ProfileIdString [The Key Mapping Profile identifier that this mapping should be set on.

If this is empty, then the currently equipped profile will be used.]`
- `EPlayerMappableKeySlot Slot [What slot this key mapping is for]`
- `bool bCreateMatchingSlotIfNeeded [If there is not a player mapping already with the same Slot and Hardware Device ID, then create a new mapping for this slot.]`
- `bool bDeferOnSettingsChangedBroadcast [Defers setting changed delegates until the next frame if set to true.]`


**方法**:

- `FMapPlayerKeyArgs& opAssign(FMapPlayerKeyArgs Other)`

---

