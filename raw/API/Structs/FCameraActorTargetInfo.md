### FCameraActorTargetInfo


Targeting information for a camera rig.

**属性**:

- `AActor Actor [The actor to target.]`
- `FName BoneName [An optional bone to target on the actor.]`
- `FName SocketName [An optional socket to target on the actor.]`
- `ECameraTargetShape TargetShape [Specifies the shape of the target.]`
- `float32 TargetSize [Specifies the size of target. Only used if TargetShape is set to manual bounds.]`
- `float32 Weight [The weight of this target. Unused when only one target is used.]`


**方法**:

- `FCameraActorTargetInfo& opAssign(FCameraActorTargetInfo Other)`

---

