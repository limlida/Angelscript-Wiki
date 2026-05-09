### FPlayerKeyMapping


Represents a single key mapping that is set by the player

**属性**:

- `TSoftObjectPtr<UInputAction> AssociatedInputActionSoft [The input action associated with this player key mapping]`
- `FKey CurrentKey [The key that the player has mapped to]`
- `FKey DefaultKey [The default key that this mapping was set to in its input mapping context]`
- `FText DisplayCategory [Localized display category of this mapping]`
- `FText DisplayName [Localized display name of this mapping]`
- `FHardwareDeviceIdentifier HardwareDeviceId [An optional Hardware Device specifier for this mapping]`
- `FName MappingName [The name of the mapping for this key]`
- `EPlayerMappableKeySlot Slot [What slot this key is mapped to]`
- `bool bIsDirty [True if this key mapping is dirty (i.e. has been changed by the player)]`


**方法**:

- `FPlayerKeyMapping& opAssign(FPlayerKeyMapping Other)`

---

