### FNiagaraDebuggerSpawnData


**属性**:

- `FVector Location [The location we should use to spawn the system at, either world or local to the player depending on WorldLocation flag.]`
- `TArray<TSoftObjectPtr<UNiagaraSystem>> SystemsToSpawn [List of all the systems we want to spawn.]`
- `float32 TimeBetweenSpawns [The time delay we should use between spawning if we have a list to spawn.]`
- `bool bAttachToPlayer [Should we attach to the player controlled by the camera or not]`
- `bool bAutoActivate [Should we auto activate or not]`
- `bool bAutoDestroy [Should we auto destroy when complete or not]`
- `bool bDoPreCullCheck [Should we perform the pre cull check or not]`
- `bool bKillBeforeSpawn [Should we kill systems we spawn before we spawn another.]`
- `bool bSpawnAllAtOnce []`
- `bool bWorldLocation [When true the location is a world location, when false it's relative to the player and is in camera space.]`


**方法**:

- `FNiagaraDebuggerSpawnData& opAssign(FNiagaraDebuggerSpawnData Other)`

---

