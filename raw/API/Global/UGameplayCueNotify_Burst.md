### UGameplayCueNotify_Burst


UGameplayCueNotify_Burst

    This is a non-instanced gameplay cue notify for effects that are one-offs.
    Since it is not instanced, it cannot do latent actions such as delays and time lines.

**属性**:

- `FGameplayCueNotify_BurstEffects BurstEffects [List of effects to spawn on burst.]`
- `FGameplayCueNotify_PlacementInfo DefaultPlacementInfo [Default placement rules.  Applies for all spawns unless overridden.]`
- `FGameplayCueNotify_SpawnCondition DefaultSpawnCondition [Default condition to check before spawning anything.  Applies for all spawns unless overridden.]`


**方法**:

- `OnBurst(AActor Target, FGameplayCueParameters Parameters, FGameplayCueNotify_SpawnResult SpawnResults) const`

---

