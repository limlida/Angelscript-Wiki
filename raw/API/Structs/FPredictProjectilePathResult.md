### FPredictProjectilePathResult


Container for the result of a projectile path trace (using PredictProjectilePath).

**属性**:

- `FHitResult HitResult [Hit along the trace, if tracing with collision was enabled.]`
- `FPredictProjectilePathPointData LastTraceDestination [Info on the last point we tried to trace to, which may have been beyond the final hit.]`
- `TArray<FPredictProjectilePathPointData> PathData [Info for each point on the path.]`


**方法**:

- `FPredictProjectilePathResult& opAssign(FPredictProjectilePathResult Other)`

---

