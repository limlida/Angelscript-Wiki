### FGameplayCueNotify_ForceFeedbackInfo


FGameplayCueNotify_ForceFeedbackInfo

    Properties that specify how to play a force feedback effect.

**属性**:

- `UForceFeedbackEffect ForceFeedbackEffect [Force feedback effect to play.]`
- `FName ForceFeedbackTag [Tag used to identify the force feedback effect so it can later be canceled.
Warning: If this is "None" it will stop ALL force feedback effects if it is canceled.]`
- `FGameplayCueNotify_PlacementInfo PlacementInfoOverride [Defines how the force feedback will be placed.]`
- `FGameplayCueNotify_SpawnCondition SpawnConditionOverride [Condition to check before playing the force feedback.]`
- `UForceFeedbackAttenuation WorldAttenuation [How the force feedback is attenuated over distance when played in world.]`
- `float32 WorldIntensity [Multiplier applied to the force feedback when played in world.]`
- `bool bIsLooping [If enabled, the force feedback will be set to loop.]`
- `bool bOverridePlacementInfo [If enabled, use the placement info override and not the default one.]`
- `bool bOverrideSpawnCondition [If enabled, use the spawn condition override and not the default one.]`
- `bool bPlayInWorld [If enabled, the force feedback will be played in the world and affect all players.]`


**方法**:

- `FGameplayCueNotify_ForceFeedbackInfo& opAssign(FGameplayCueNotify_ForceFeedbackInfo Other)`

---

