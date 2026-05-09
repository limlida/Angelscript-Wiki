### FLayeredMove_MoveTo


MoveTo: Move Actor from the starting location to the target location over a duration of time.

**属性**:

- `float32 DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after a layered move has finished]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `UCurveVector PathOffsetCurve [Optional CurveVector used to offset the actor from the path]`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`
- `FVector StartLocation [Location to Start the MoveTo move from]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`
- `FVector TargetLocation [Location to move towards]`
- `UCurveFloat TimeMappingCurve [Optional CurveFloat to apply to how fast the actor moves as they get closer to the target location]`
- `bool bRestrictSpeedToExpected [if true, will restrict speed to where the actor is expected to be (in regard to start, end and duration)]`


**方法**:

- `FLayeredMove_MoveTo& opAssign(FLayeredMove_MoveTo Other)`

---

