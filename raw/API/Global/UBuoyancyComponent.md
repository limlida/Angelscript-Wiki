### UBuoyancyComponent


**属性**:

- `FBuoyancyData BuoyancyData`
- `FOnPontoonEnteredWater OnEnteredWaterDelegate`
- `FOnPontoonExitedWater OnExitedWaterDelegate`


**方法**:

- `TArray<UWaterBodyComponent> GetCurrentWaterBodyComponents() const`
- `GetLastWaterSurfaceInfo(FVector& OutWaterPlaneLocation, FVector& OutWaterPlaneNormal, FVector& OutWaterSurfacePosition, float32& OutWaterDepth, int& OutWaterBodyIdx, FVector& OutWaterVelocity)`
- `bool IsInWaterBody() const`
- `bool IsOverlappingWaterBody() const`
- `OnPontoonEnteredWater(FSphericalPontoon Pontoon)`
- `OnPontoonExitedWater(FSphericalPontoon Pontoon)`

---

