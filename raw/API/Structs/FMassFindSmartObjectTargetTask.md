### FMassFindSmartObjectTargetTask


Computes move target to a smart object based on current location.
The move target will use the entrance location found by the EntranceRequest if possible,
otherwise the slot location will be used.

**属性**:

- `FName Name [Name of the node.]`
- `bool bUseEntranceLocationRequest [Whether the entrance location request should be used first to find an entrance location
to use instead of the slot location. Slot location will be used if not entrances can be found.]`


**方法**:

- `FMassFindSmartObjectTargetTask& opAssign(FMassFindSmartObjectTargetTask Other)`

---

