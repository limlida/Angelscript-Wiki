### FMoverSyncState


State we are evolving frame to frame and keeping in sync (frequently changing). It is composed of a collection of typed structs
that can be customized per project. Mover actors are required to have FMoverDefaultSyncState as one of these structs.

**属性**:

- `FLayeredMoveInstanceGroup LayeredMoveInstances [Additional moves influencing our proposed motion]`
- `FLayeredMoveGroup LayeredMoves [Additional moves influencing our proposed motion]`
- `FName MovementMode [The mode we ended up in from the prior frame, and which we'll start in during the next frame]`
- `FMovementModifierGroup MovementModifiers [Additional modifiers influencing our simulation]`
- `FMoverDataCollection SyncStateCollection []`


**方法**:

- `FMoverSyncState& opAssign(FMoverSyncState Other)`

---

