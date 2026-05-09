### FFindFloorResult


Data about the floor for walking movement, used by CharacterMovementComponent.

**属性**:

- `float32 FloorDist [The distance to the floor, computed from the swept capsule trace.]`
- `FHitResult HitResult [Hit result of the test that found a floor. Includes more specific data about the point of impact and surface normal at that point.]`
- `float32 LineDist [The distance to the floor, computed from the trace. Only valid if bLineTrace is true.]`
- `bool bBlockingHit [True if there was a blocking hit in the floor test that was NOT in initial penetration.
The HitResult can give more info about other circumstances.]`
- `bool bLineTrace [True if the hit found a valid walkable floor using a line trace (rather than a sweep test, which happens when the sweep test fails to yield a walkable surface).]`
- `bool bWalkableFloor [True if the hit found a valid walkable floor.]`


**方法**:

- `FFindFloorResult& opAssign(FFindFloorResult Other)`

---

