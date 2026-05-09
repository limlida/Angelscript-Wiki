### AGameplayCueNotify_Looping


AGameplayCueNotify_Looping

    This is an instanced gameplay cue notify for continuous looping effects.
    The game is responsible for defining the start/stop by adding/removing the gameplay cue.

**属性**:

- `FGameplayCueNotify_BurstEffects ApplicationEffects [List of effects to spawn on application.  These should not be looping effects!]`
- `FGameplayCueNotify_SpawnResult ApplicationSpawnResults [Results of spawned application effects.]`
- `FGameplayCueNotify_PlacementInfo DefaultPlacementInfo [Default placement rules.  Applies for all spawns unless overridden.]`
- `FGameplayCueNotify_SpawnCondition DefaultSpawnCondition [Default condition to check before spawning anything.  Applies for all spawns unless overridden.]`
- `FGameplayCueNotify_LoopingEffects LoopingEffects [List of effects to spawn on loop start.]`
- `FGameplayCueNotify_SpawnResult LoopingSpawnResults [Results of spawned looping effects.]`
- `FGameplayCueNotify_BurstEffects RecurringEffects [List of effects to spawn for a recurring gameplay effect (e.g. each time a DOT ticks).  These should not be looping effects!]`
- `FGameplayCueNotify_SpawnResult RecurringSpawnResults [Results of spawned recurring effects.]`
- `FGameplayCueNotify_BurstEffects RemovalEffects [List of effects to spawn on removal.  These should not be looping effects!]`
- `FGameplayCueNotify_SpawnResult RemovalSpawnResults [Results of spawned removal effects.]`


**方法**:

- `OnApplication(AActor Target, FGameplayCueParameters Parameters, FGameplayCueNotify_SpawnResult SpawnResults)`
- `OnLoopingStart(AActor Target, FGameplayCueParameters Parameters, FGameplayCueNotify_SpawnResult SpawnResults)`
- `OnRecurring(AActor Target, FGameplayCueParameters Parameters, FGameplayCueNotify_SpawnResult SpawnResults)`
- `OnRemoval(AActor Target, FGameplayCueParameters Parameters, FGameplayCueNotify_SpawnResult SpawnResults)`

---

