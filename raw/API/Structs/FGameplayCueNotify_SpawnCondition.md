### FGameplayCueNotify_SpawnCondition


FGameplayCueNotify_SpawnCondition

    Conditions used to determine if the gameplay cue notify should spawn.

**属性**:

- `TArray<EPhysicalSurface> AllowedSurfaceTypes [The gameplay cue effects will only spawn if the surface type is in this list.
An empty list means everything is allowed.]`
- `float32 ChanceToPlay [Random chance to play the effects.  (1.0 = always play,  0.0 = never play)]`
- `EGameplayCueNotify_LocallyControlledPolicy LocallyControlledPolicy [Locally controlled policy used to determine if the gameplay cue effects should spawn.]`
- `EGameplayCueNotify_LocallyControlledSource LocallyControlledSource [Source actor to use when determining if it is locally controlled.]`
- `TArray<EPhysicalSurface> RejectedSurfaceTypes [The gameplay cue effects will only spawn if the surface type is NOT in this list.
An empty list means nothing will be rejected.]`


**方法**:

- `FGameplayCueNotify_SpawnCondition& opAssign(FGameplayCueNotify_SpawnCondition Other)`

---

