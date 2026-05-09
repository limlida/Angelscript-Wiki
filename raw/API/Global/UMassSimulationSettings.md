### UMassSimulationSettings


Implements the settings for MassSimulation

**属性**:

- `float DesiredActorDestructionTimeSlicePerTick [The desired budget in seconds allowed to do actor destruction per frame]`
- `float32 DesiredActorFailedSpawningRetryMoveDistance [The distance a failed spawned actor needs to move before we retry, default 10 meters]`
- `float32 DesiredActorFailedSpawningRetryTimeInterval [The time to wait before retrying to spawn an actor that previously failed, default 10 seconds]`
- `float DesiredActorSpawningTimeSlicePerTick [The desired budget in seconds allowed to do actor spawning per frame]`
- `float DesiredEntityCompactionTimeSlicePerTick [The desired budget in seconds allowed to do entity compaction per frame]`
- `bool bEntityCompactionEnabled [Whether the Entity Compaction is allowed. When enabled all the archetypes will be processed on a regular basis
and the entities will be moved around to optimize archetype chunk memory utilization. Note that this might not be
desired if your set up results in individual chunks being often not compatible due to the number and value of chunk
and shared fragments.]`

---

