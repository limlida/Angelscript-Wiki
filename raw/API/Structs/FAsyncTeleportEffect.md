### FAsyncTeleportEffect


Async Teleport: instantly moves an actor to a new location and rotation (compatible with async movement simulation)

**属性**:

- `FVector TargetLocation [Location to teleport to, in world space]`
- `FRotator TargetRotation [Actor rotation is set to this value on teleport if bUseActorRotation is false]`
- `bool bUseActorRotation [Whether this teleport effect should keep the actor's current rotation or use a specified one (TargetRotation)]`


**方法**:

- `FAsyncTeleportEffect& opAssign(FAsyncTeleportEffect Other)`

---

