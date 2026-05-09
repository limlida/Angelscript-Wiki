### AFunctionalAITestBase


AFunctionalAITestBase

Base abstract class defining a Functional AI Test.
You can derive from this base class to create a test with a different type of SpawnSets.

**属性**:

- `int CurrentSpawnSetIndex []`
- `FString CurrentSpawnSetName []`
- `FVector NavMeshDebugExtent [navmesh debug: extent around NavMeshDebugOrigin]`
- `FVector NavMeshDebugOrigin [navmesh debug: log navoctree modifiers around this point]`
- `FFunctionalTestAISpawned OnAISpawned [Called when a single AI finished spawning]`
- `FFunctionalTestEventSignature OnAllAISPawned [Called when a all AI finished spawning]`
- `TArray<FPendingDelayedSpawn> PendingDelayedSpawns []`
- `float32 SpawnLocationRandomizationRange`
- `TArray<TObjectPtr<APawn>> SpawnedPawns []`
- `bool bDebugNavMeshOnTimeout [if set, ftest will postpone start until navmesh is fully generated]`
- `bool bWaitForNavMesh [if set, ftest will postpone start until navmesh is fully generated]`


**方法**:

- `bool IsOneOfSpawnedPawns(AActor Actor)`

---

