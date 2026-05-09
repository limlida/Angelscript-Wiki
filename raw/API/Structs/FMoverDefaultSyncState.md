### FMoverDefaultSyncState


Data block containing basic sync state information

**属性**:

- `FVector AngularVelocityDegrees [Angular velocity, degrees per second, relative to MovementBase if set, world space otherwise.]`
- `FVector Location [Position relative to MovementBase if set, world space otherwise]`
- `FVector MoveDirectionIntent [Movement intent direction relative to MovementBase if set, world space otherwise. Magnitude of range (0-1)]`
- `TWeakObjectPtr<UPrimitiveComponent> MovementBase [Optional: when moving on a base, input may be relative to this object]`
- `FName MovementBaseBoneName [Optional: for movement bases that are skeletal meshes, this is the bone we're based on. Only valid if MovementBase is set.]`
- `FVector MovementBasePos []`
- `FQuat MovementBaseQuat []`
- `FRotator Orientation [Forward-facing rotation relative to MovementBase if set, world space otherwise.]`
- `FVector Velocity [Linear velocity, units per second, relative to MovementBase if set, world space otherwise.]`


**方法**:

- `FMoverDefaultSyncState& opAssign(FMoverDefaultSyncState Other)`

---

