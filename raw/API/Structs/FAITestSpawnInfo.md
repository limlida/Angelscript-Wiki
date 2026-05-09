### FAITestSpawnInfo


FAITestSpawnInfo

Generic AI Test Spawn Info used in FAITestSpawnSet within a generic AFunctionalAITest test.

**属性**:

- `UBehaviorTree BehaviorTree [if set will be applied to spawned AI]`
- `TSubclassOf<AAIController> ControllerClass [class to override default pawn's controller class. If None the default will be used]`
- `int NumberToSpawn`
- `TSubclassOf<APawn> PawnClass [Determines AI to be spawned]`
- `float32 PreSpawnDelay [delay before attempting first spawn]`
- `float32 SpawnDelay [delay between consecutive spawn attempts]`
- `AActor SpawnLocation [Where should AI be spawned]`
- `FGenericTeamId TeamID`


**方法**:

- `FAITestSpawnInfo& opAssign(FAITestSpawnInfo Other)`

---

