### UMassStateTreeProcessor


The processor that the UMassStateTreeSubsystem will instantiate for every unique StateTree Mass-requirements.
The user is not expected to instantiate these processors manually, but a project-specific extension can be implemented.
It needs to derive from UMassStateTreeProcessor and set as the value of UMassStateTreeSubsystem.DynamicProcessorClass.

**属性**:

- `bool bProcessEntitiesInParallel [Configures whether parallel update for FMassArchetypeChunks should be used instead of the default single threaded update (i.e., ParallelForEachEntityChunk instead of ForEachEntityChunk).]`

---

