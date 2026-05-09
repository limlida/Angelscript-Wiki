### UMassSmartObjectSettings


Settings for the MassSmartObject module.

**属性**:

- `float32 MRUSlotsCooldown [Period of time during which a given slot will not be considered after being used
This option requires 'bUseCooldownForMRUSlots' to be true and 'MRUSlotsMaxCount' to be a non-zero value
@see bUseCooldownForMRUSlots
@see MRUSlotsMaxCount]`
- `int MRUSlotsMaxCount [Can be used to prevent smart object users from reusing the same smart object slots more than once.
The list of most recently used slots can contain up to 4 slots, then a newly used slot will
replace the least recently used one.
It is also possible to use a cooldown to allow slots to be considered again after a given
period of time.
@see bUseCooldownForMRUSlots
@see MRUSlotsCooldown]`
- `float32 SearchExtents [Extents used to find precomputed entry points to reach a smart object from a zone graph lane.]`
- `FZoneGraphTag SmartObjectTag [Tag used to indicate that smart objects are associated to a lane for queries using lanes.]`
- `bool bUseCooldownForMRUSlots [Set this flag to allow the most recently used slots to be considered again after the period of time specified by MRUSlotsCooldown
This option requires MRUSlotsMaxCount to be a non-zero value
@see MRUSlotsCooldown
@see MRUSlotsMaxCount]`

---

