### FMoverOnImpactParams


Struct to hold params for when an impact happens. This contains all of the data for impacts including what gets passed to the FMover_OnImpact delegate

**属性**:

- `FVector AttemptedMoveDelta [The original move that was being performed when the impact happened]`
- `FHitResult HitResult [The hit result of the impact]`
- `FName MovementModeName [Name of the movement mode this actor is currently in at the time of the impact]`


**方法**:

- `FMoverOnImpactParams& opAssign(FMoverOnImpactParams Other)`

---

