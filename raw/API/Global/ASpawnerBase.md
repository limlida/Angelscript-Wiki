### ASpawnerBase


A big problem with world partition is that it doesn't work well on dynamically spawned actors. Spawners address this by existing in the world
and thus being managed by world partition. They save their spawned actors to a save record and so remember which of their actors to respawn.

ie if we had a Pickup Spawner, and the player took the pickups, the spawner wouldn't respawn the pickups as it would see which pickups were taken in its saved records.

Spawners replace settlements for spawning NPCs in Narrative 1.2.

**属性**:

- `USceneComponent SpawnerRoot [Root component - we want the settlement to have a transform]`
- `FGuid SpawnerSaveGUID [The GUID that the save system uses to identify and save the settlement]`
- `UBillboardComponent SpriteComponent`
- `bool bActivateOnBeginPlay [Whether the spawner is enabled or not]`


**方法**:

- `RemoveActors()`
- `SpawnActors()`

---

