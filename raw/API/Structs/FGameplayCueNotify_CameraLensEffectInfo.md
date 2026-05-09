### FGameplayCueNotify_CameraLensEffectInfo


FGameplayCueNotify_CameraLensEffectInfo

    Properties that specify how to play a camera lens effect.

**属性**:

- `TSubclassOf<AActor> CameraLensEffect [Camera lens effect to play.]`
- `FGameplayCueNotify_PlacementInfo PlacementInfoOverride [Defines how the camera lens effect will be placed.]`
- `FGameplayCueNotify_SpawnCondition SpawnConditionOverride [Condition to check before playing the camera lens effect.]`
- `float32 WorldInnerRadius [Players inside this radius get the full intensity camera lens effect.]`
- `float32 WorldOuterRadius [Players outside this radius do not get the camera lens effect applied.]`
- `bool bOverridePlacementInfo [If enabled, use the placement info override and not the default one.]`
- `bool bOverrideSpawnCondition [If enabled, use the spawn condition override and not the default one.]`
- `bool bPlayInWorld [If enabled, the camera lens effect will be played in the world and affect all players.]`


**方法**:

- `FGameplayCueNotify_CameraLensEffectInfo& opAssign(FGameplayCueNotify_CameraLensEffectInfo Other)`

---

