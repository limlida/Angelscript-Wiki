### AMassSpawner


A spawner you can put on a map and configure it to spawn different things

**属性**:

- `int Count []`
- `TArray<FMassSpawnedEntityType> EntityTypes [Array of entity types to spawn. These define which entities to spawn.]`
- `FMassSpawnerOnDespawningFinishedEvent OnDespawningFinishedEvent [Called once DoDespawning completes and all mass agents spawned by this spawner have been despawned.]`
- `FMassSpawnerOnSpawningFinishedEvent OnSpawningFinishedEvent [Called once DoSpawning completes and all entities have been spawned.]`
- `TArray<FMassSpawnDataGenerator> SpawnDataGenerators [Array of entity spawn generators. These define where to spawn entities.]`
- `float32 SpawningCountScale [Scale of the spawning count]`
- `bool bAutoSpawnOnBeginPlay`
- `bool bOverrideSchematics [By default TickSchematics will be appended to the simulation's schematics. If this property is set to true the
TickSchematics will override the original simulation schematics]`


**方法**:

- `ClearTemplates()`
- `DEBUG_Clear()`  
  Remove all the entities
- `DEBUG_Spawn()`
- `DoDespawning()`  
  Despawn all mass agent that was spawned by this spawner
- `DoSpawning()`  
  Starts the spawning of all the agent types of this spawner
- `int GetCount() const`
- `float32 GetSpawningCountScale() const`
- `ScaleSpawningCount(float32 Scale)`  
  Scales the spawning counts
@param Scale is the number to multiply the all counts of each agent types
- `UnloadConfig()`

---

