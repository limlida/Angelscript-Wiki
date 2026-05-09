### FNiagaraEventScriptProperties


**属性**:

- `EScriptExecutionMode ExecutionMode [Controls which particles have the event script run on them.]`
- `uint MaxEventsPerFrame [Controls how many events are consumed by this event handler. If there are more events generated than this value, they will be ignored.]`
- `uint MinSpawnNumber [The minimum spawn number when random spawn is used. Spawn Number is used as the maximum range.]`
- `FGuid SourceEmitterID [Id of the Emitter Handle that generated the event. If all zeroes, the event generator is assumed to be this emitter.]`
- `FName SourceEventName [The name of the event generated. This will be "Collision" for collision events and the Event Name field on the DataSetWrite node in the module graph for others.]`
- `uint SpawnNumber [Controls whether or not particles are spawned as a result of handling the event. Only valid for EScriptExecutionMode::SpawnedParticles. If Random Spawn Number is used, this will act as the maximum spawn range.]`
- `bool UpdateAttributeInitialValues [Should Event Spawn Scripts modify the Initial values for particle attributes they modify.]`
- `bool bRandomSpawnNumber [Whether using a random spawn number.]`


**方法**:

- `FNiagaraEventScriptProperties& opAssign(FNiagaraEventScriptProperties Other)`

---

