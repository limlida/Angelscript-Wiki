### FAITestSpawnInfoBase


FAITestSpawnInfoBase

Base struct defining where & when to spawn. Used within a FAITestSpawnSetBase class.

**属性**:

- `int NumberToSpawn`
- `float32 PreSpawnDelay [delay before attempting first spawn]`
- `float32 SpawnDelay [delay between consecutive spawn attempts]`
- `AActor SpawnLocation [Where should AI be spawned]`


**方法**:

- `FAITestSpawnInfoBase& opAssign(FAITestSpawnInfoBase Other)`

---

