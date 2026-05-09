### FAIESelectionSetItemName


Individual 'Name" within a Seletion Set, maybe Actor Labe or Control Rig Control Name

**属性**:

- `FString MirrorName [The Name of the selection set mirrored item for Control Rig Controls that have them]`
- `FString Name [The Name of the selection set item*, maybe an Actor Label or a ControlRig Control Name]`
- `FString OwnerActorName [The Name of the Owner Actor for Multi-Sets containing multiple rigs, may not be set]`
- `int Type [The EAIESelectionSetItemType, 0 is a Control Rig Control, 1 is an Actor]`


**方法**:

- `FAIESelectionSetItemName& opAssign(FAIESelectionSetItemName Other)`

---

