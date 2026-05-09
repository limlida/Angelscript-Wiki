### FNDCGameplayBurstAttachmentSettings


Settings controlling whether the NDC Gameplay Burst will use it's attached FX path and route data to a bucket targeted to a single owning component.

**属性**:

- `TArray<TSubclassOf<USceneComponent>> ComponentTypes [Use attached path if the owning component is one of these component types (including a subclass).]`
- `FGameplayTagContainer GameplayTags [Use attached path if the owning component contains any of the following game play tags.]`
- `float32 SpeedThreshold [Use attached path if the owning component is traveling >= this speed. Defaults to -ve to indicate we should not attach based on speed.]`


**方法**:

- `FNDCGameplayBurstAttachmentSettings& opAssign(FNDCGameplayBurstAttachmentSettings Other)`

---

