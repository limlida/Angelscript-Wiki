### USpawnComponent


Lives on a spawner, and will spawn an actor at its transform when requested.

**属性**:

- `TArray<TObjectPtr<USpawnBehavior>> SpawnBehaviors [Define the behaviors when spawning actor]`
- `TWeakObjectPtr<AActor> SpawnedActor [Holds a reference to the spawned actor]`


**方法**:

- `FString GetEditorLabel() const`
- `bool RemoveActor()`
- `AActor SpawnActor()`

---

