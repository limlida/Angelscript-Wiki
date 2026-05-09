### UWaterRuntimeSettings


Implements the runtime settings for the Water plugin.

**属性**:

- `ECollisionChannel CollisionChannelForWaterTraces [Collision channel to use for tracing and blocking water bodies]`
- `TSoftObjectPtr<UMaterialInterface> DefaultWaterInfoMaterial []`
- `TSoftObjectPtr<UMaterialParameterCollection> MaterialParameterCollection [Material Parameter Collection for everything water-related]`
- `float32 WaterBodyIconWorldZOffset [Offset in Z for the water body icon in world-space.]`
- `bool bWarnOnMismatchOceanExtent [If enabled, MapCheck will notify users that their ocean does not completely fill the water zone. This can be desirable in some cases but the default should be to fill completely.]`

---

