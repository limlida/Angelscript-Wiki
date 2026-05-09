### FGameplayCueNotify_DecalInfo


FGameplayCueNotify_DecalInfo

    Properties that specify how to spawn a decal.

**属性**:

- `UMaterialInterface DecalMaterial [Decal material to spawn.]`
- `FVector DecalSize [Decal size in local space (does not include the component scale).]`
- `float32 FadeOutDuration [Sets how long it takes for decal actor to fade out.  Will override setting in class.]`
- `float32 FadeOutStartDelay [Sets when the decal actor will start fading out.  Will override setting in class.]`
- `FGameplayCueNotify_PlacementInfo PlacementInfoOverride [Defines how the decal will be placed.]`
- `FGameplayCueNotify_SpawnCondition SpawnConditionOverride [Condition to check before spawning the decal.]`
- `bool bOverrideFadeOut [If enabled, override default decal actor fade out values.]`
- `bool bOverridePlacementInfo [If enabled, use the placement info override and not the default one.]`
- `bool bOverrideSpawnCondition [If enabled, use the spawn condition override and not the default one.]`


**方法**:

- `FGameplayCueNotify_DecalInfo& opAssign(FGameplayCueNotify_DecalInfo Other)`

---

