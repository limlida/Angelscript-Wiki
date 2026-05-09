### UMountComponent


Base interactable class for mounts such as horses, vehicles, etc.

**属性**:

- `TArray<UNPCDefinition> AutoAddOccupants [On beginplay we'll use this to populate the car with occupants for you.]`
- `bool bAddOccupantsOnBeginPlay [Need this so sequencer can key these on if required.]`


**方法**:

- `bool AddOccupants(TArray<UNPCDefinition> OccupantDefs, int OptionalSeed = - 1)`  
  Add a bunch of NPC occupants to the mount. Gameplay code will very often want to do this, such as mass traffic,
       prerecorded cinematic vehicles and so on often won't have any occupants by default, and you need to quickly add
       a bunch.

---

