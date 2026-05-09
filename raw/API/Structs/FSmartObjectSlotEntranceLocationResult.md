### FSmartObjectSlotEntranceLocationResult


Validated result from FindEntranceLocationForSlot().

**属性**:

- `FSmartObjectSlotEntranceHandle EntranceHandle [Handle identifying the entrance that was found.]`
- `FVector Location [The location to enter the slot.]`
- `FRotator Rotation [The expected direction to enter the slot.]`
- `FGameplayTagContainer Tags [Gameplay tags associated with the entrance.]`
- `bool bIsValid [True if the result has passed validation tests.]`


**方法**:

- `FSmartObjectSlotEntranceLocationResult& opAssign(FSmartObjectSlotEntranceLocationResult Other)`

---

