### FPredictProjectilePathParams


Input parameters to PredictProjectilePath functions.

**属性**:

- `TArray<TObjectPtr<AActor>> ActorsToIgnore [Actors to ignore when tracing with collision.]`
- `float32 DrawDebugTime [Duration of debug lines (only relevant for DrawDebugType::Duration)]`
- `EDrawDebugTrace DrawDebugType [Debug drawing duration option.]`
- `FVector LaunchVelocity [Initial launch velocity at the start of the trace.]`
- `float32 MaxSimTime [Maximum simulation time for the virtual projectile.]`
- `TArray<EObjectTypeQuery> ObjectTypes [Object type to use, if tracing with collision.]`
- `float32 OverrideGravityZ [Optional override of Gravity (if 0, uses WorldGravityZ).]`
- `float32 ProjectileRadius [Projectile radius, used when tracing for collision. If <= 0, a line trace is used instead.]`
- `float32 SimFrequency [Determines size of each sub-step in the simulation (chopping up MaxSimTime). Recommended between 10 to 30 depending on desired quality versus performance.]`
- `FVector StartLocation [Location of the start of the trace.]`
- `ECollisionChannel TraceChannel [Trace channel to use, if tracing with collision.]`
- `bool bTraceComplex [Trace against complex collision (triangles rather than simple primitives) if tracing with collision.]`
- `bool bTraceWithChannel [Whether or not to use TraceChannel, if tracing with collision.]`
- `bool bTraceWithCollision [Whether to trace along the path looking for blocking collision and stopping at the first hit.]`


**方法**:

- `FPredictProjectilePathParams& opAssign(FPredictProjectilePathParams Other)`

---

