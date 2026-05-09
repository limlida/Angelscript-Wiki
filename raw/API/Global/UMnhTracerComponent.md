### UMnhTracerComponent


**属性**:

- `EMnhFilterType FilterType`
- `FMnhOnHitDetected OnHitDetected`
- `TArray<FMnhTracerConfig> TracerConfigs`


**方法**:

- `AddNewAnimNotifyTracer(FGameplayTag TracerTag, FMnhTraceSettings TraceSettings, EMnhTracerTickType TracerTickType, int TargetFps, int TargetDistanceTraveled, EDrawDebugTrace DrawDebugType, float32 DrawDebugLifetime = 0.500000)`
- `AddNewMnhComponentTracer(FGameplayTag TracerTag, FMnhTraceSettings TraceSettings, EMnhTracerTickType TracerTickType, int TargetFps, int TargetDistanceTraveled, EDrawDebugTrace DrawDebugType, float32 DrawDebugLifetime = 0.500000)`
- `AddNewPhysicsAssetTracer(FGameplayTag TracerTag, FName SocketOrBoneName, FMnhTraceSettings TraceSettings, EMnhTracerTickType TracerTickType, int TargetFps, int TargetDistanceTraveled, EDrawDebugTrace DrawDebugType, float32 DrawDebugLifetime = 0.500000)`
- `AddNewSkeletalMeshSocketsTracer(FGameplayTag TracerTag, FName MeshSocket1, FName MeshSocket2, float32 MeshSocketTracerRadius, float32 MeshSocketTracerLengthOffset, FMnhTraceSettings TraceSettings, EMnhTracerTickType TracerTickType, int TargetFps, int TargetDistanceTraveled, EDrawDebugTrace DrawDebugType, float32 DrawDebugLifetime = 0.500000)`
- `AddNewStaticMeshSocketsTracer(FGameplayTag TracerTag, FName MeshSocket1, FName MeshSocket2, float32 MeshSocketTracerRadius, float32 MeshSocketTracerLengthOffset, FMnhTraceSettings TraceSettings, EMnhTracerTickType TracerTickType, int TargetFps, int TargetDistanceTraveled, EDrawDebugTrace DrawDebugType, float32 DrawDebugLifetime = 0.500000)`
- `int AddNewTracerConfig(FMnhTracerConfig TracerConfig)`
- `int AddNewTracerConfigInitialized(FMnhTracerConfig TracerConfig, UPrimitiveComponent TracerSource)`
- `AddToIgnoredActors(FGameplayTagContainer TracerTags, AActor Actor)`
- `AddToIgnoredActorsArray(FGameplayTagContainer TracerTags, TArray<AActor> Actors)`
- `InitializeTracers(FGameplayTagContainer TracerTags, UPrimitiveComponent TracerSource)`
- `RemoveTracerConfigsByComponent(const UPrimitiveComponent TracerSource)`
- `RemoveTracerConfigsByTags(FGameplayTagContainer TracerTags)`
- `ResetHitCache()`
- `ResetHitCacheByTags(FGameplayTagContainer TracerTags)`
- `ResetIgnoredActors(FGameplayTagContainer TracerTags)`
- `SetTracerTickRate(FGameplayTagContainer TracerTags, int TicksPerSecond)`
- `StartTracers(FGameplayTagContainer TracerTags, bool bResetHitCache = true)`
- `StartTracersByComponent(const UPrimitiveComponent Component)`
- `StopAllTracers()`
- `StopTracers(FGameplayTagContainer TracerTags)`
- `StopTracersByComponent(const UPrimitiveComponent Component)`
- `UpdateDebugDrawState(FGameplayTagContainer TracerTags, EDrawDebugTrace DrawDebugType)`

---

