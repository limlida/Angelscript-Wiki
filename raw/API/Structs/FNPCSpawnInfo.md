### FNPCSpawnInfo


Information about where the NPC spawned, what owns it

**属性**:

- `TWeakObjectPtr<UNPCSpawnComponent> OwningSpawn [Weak ptr to our spawn, only valid if WP still has our spawn loaded in.]`
- `FGuid OwningSpawnerGUID [GUID of the spawner that created us.]`
- `FGuid SpawnAssignedSaveGUID [The save GUID our spawner assigned us.]`
- `FName SpawnName [Name of our spawn in that spawner.]`
- `FNPCSpawnParams SpawnParams [The spawn params that were passed in by whatever spawned us]`
- `FTransform SpawnTransform [Transform of our spawn, so we know roughly in which directly to run back to our settlement]`


**方法**:

- `FNPCSpawnInfo& opAssign(FNPCSpawnInfo Other)`

---

