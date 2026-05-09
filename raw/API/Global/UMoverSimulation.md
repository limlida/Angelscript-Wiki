### UMoverSimulation


WIP Base class for a Mover simulation.
The simulation is intended to be the thing that updates the Mover
state and should be safe to run on an async thread

**方法**:

- `AttemptTeleport(FMoverTimeStep TimeStep, FTransform TargetTransform, bool bUseActorRotation, FMoverSyncState& OutputState)`  
  Attempt to teleport to TargetTransform. The teleport is not guaranteed to happen. This function is meant to be called by an instant movement effect as part of its effect application.
If it succeeds a FTeleportSucceededEventData will be emitted, if it fails a FTeleportFailedEventData will be sent.
@param TimeStep The time step of the current step or substep being simulated. This will come from the ApplyMovementEffect function.
@param TargetTransform The transform to teleport to. In the case bUseActorRotation is true, the rotation of this transform will be ignored.
@param bUseActorRotation If true, the rotation will not be modified upon teleportation. If false, the rotation in TargetTransform will be used to orient the teleported.
@param OutputState This is the sync state that me modified as a result of the application of this effect. Like TimeStep, this should come from the ApplyMovementEffect function.
- `const UMoverBlackboard GetBlackboard() const`  
  Warning: the regular blackboard will be fully replaced by the rollback blackboard in the future
- `UMoverBlackboard GetBlackboard_Mutable()`  
  Warning: the regular blackboard will be fully replaced by the rollback blackboard in the future
- `const URollbackBlackboard_InternalWrapper GetRollbackBlackboard() const`
- `URollbackBlackboard_InternalWrapper GetRollbackBlackboard_Mutable()`

---

