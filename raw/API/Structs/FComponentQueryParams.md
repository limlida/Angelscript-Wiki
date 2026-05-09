### FComponentQueryParams


**属性**:

- `uint8 IgnoreMask`
- `EQueryMobilityType MobilityType`
- `FName OwnerTag`
- `FCollisionEnabledMask ShapeCollisionMask`
- `FName TraceTag`
- `bool bFindInitialOverlaps`
- `bool bIgnoreBlocks`
- `bool bIgnoreTouches`
- `bool bReturnFaceIndex`
- `bool bReturnPhysicalMaterial`
- `bool bSkipNarrowPhase`
- `bool bTraceComplex`


**方法**:

- `FComponentQueryParams& opAssign(FComponentQueryParams Other)`
- `TArray<uint> GetIgnoredComponents() const`
- `TArray<uint> GetIgnoredActors() const`
- `ClearIgnoredComponents()`
- `ClearIgnoredActors()`
- `SetNumIgnoredComponents(int NewNum)`
- `AddIgnoredActor(const AActor InIgnoreActor)`
- `AddIgnoredActor(uint InIgnoreActorID)`
- `AddIgnoredActors(TArray<AActor> InIgnoreActors)`
- `AddIgnoredActors(TArray<const AActor> InIgnoreActors)`
- `AddIgnoredComponent(const UPrimitiveComponent InIgnoreComponent)`
- `AddIgnoredComponents(TArray<UPrimitiveComponent> InIgnoreComponents)`
- `AddIgnoredComponent_LikelyDuplicatedRoot(const UPrimitiveComponent InIgnoreComponent)`
- `FString ToString() const`

---

