### UDirectionMasterComponent


**属性**:

- `float32 CurrentDirection []`
- `float32 CurrentVerticalDirection []`
- `UDirectionIndicatorWidget DirectionWidget`
- `FDirectionSettings Settings`
- `float32 SmoothingSpeed`
- `AActor TargetActor`
- `FVector TargetLocation`
- `bool bIsUpdatingEnabled`


**方法**:

- `ResumeUpdatingDirection()`
- `SetDirectionMode(EDirectionMode NewMode)`
- `SetManualDirection(float32 NewCurrentDirection)`
- `SetTarget(AActor NewTarget)`
- `SetTargetLocation(FVector NewLocation)`
- `float32 SnapAngleToSides(float32 Angle, int Sides, float32 OffsetAngle)`
- `StopUpdatingDirection()`
- `UpdateDirectionFromInput(float32 InputX, float32 InputY, float32 DeltaTime)`

---

