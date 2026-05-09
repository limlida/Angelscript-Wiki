### FGameplayCueNotify_CameraShakeInfo


FGameplayCueNotify_CameraShakeInfo

    Properties that specify how to play a camera shake.

**属性**:

- `TSubclassOf<UCameraShakeBase> CameraShake [Camera shake to play.]`
- `FGameplayCueNotify_PlacementInfo PlacementInfoOverride [Defines how the camera shake will be placed.]`
- `EGameplayCueNotify_EffectPlaySpace PlaySpace [What coordinate space to play the camera shake relative to.]`
- `float32 ShakeScale [Scale applied to the camera shake.]`
- `FGameplayCueNotify_SpawnCondition SpawnConditionOverride [Condition to check before playing the camera shake.]`
- `float32 WorldFalloffExponent [Exponent that describes the shake intensity falloff curve between the inner and outer radii.  (1.0 is linear)]`
- `float32 WorldInnerRadius [Players inside this radius get the full intensity camera shake.]`
- `float32 WorldOuterRadius [Players outside this radius do not get the camera shake applied.]`
- `bool bOverridePlacementInfo [If enabled, use the placement info override and not the default one.]`
- `bool bOverrideSpawnCondition [If enabled, use the spawn condition override and not the default one.]`
- `bool bPlayInWorld [If enabled, the camera shake will be played in the world and affect all players.]`


**方法**:

- `FGameplayCueNotify_CameraShakeInfo& opAssign(FGameplayCueNotify_CameraShakeInfo Other)`

---

