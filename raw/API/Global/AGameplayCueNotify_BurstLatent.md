### AGameplayCueNotify_BurstLatent


AGameplayCueNotify_BurstLatent

    This is an instanced gameplay cue notify for effects that are one-offs.
    Since it is instanced, it can do latent things like time lines or delays.

**属性**:

- `FGameplayCueNotify_BurstEffects BurstEffects [List of effects to spawn on burst.]`
- `FGameplayCueNotify_SpawnResult BurstSpawnResults [Results of spawned burst effects.]`
- `FGameplayCueNotify_PlacementInfo DefaultPlacementInfo [Default placement rules.  Applies for all spawns unless overridden.]`
- `FGameplayCueNotify_SpawnCondition DefaultSpawnCondition [Default condition to check before spawning anything.  Applies for all spawns unless overridden.]`


**方法**:

- `OnBurst(AActor Target, FGameplayCueParameters Parameters, FGameplayCueNotify_SpawnResult SpawnResults)`

---

