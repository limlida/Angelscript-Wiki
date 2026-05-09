### FLayeredMove_LinearVelocity


Linear Velocity: A method of inducing a straight-line velocity on an actor over time

**属性**:

- `float32 DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after a layered move has finished]`
- `UCurveFloat MagnitudeOverTime [Optional curve float for controlling the magnitude of the velocity applied to the actor over the duration of the move]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`
- `uint8 SettingsFlags [@see ELayeredMove_ConstantVelocitySettingsFlags]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`
- `FVector Velocity [Units per second, could be worldspace vs relative depending on Flags]`


**方法**:

- `FLayeredMove_LinearVelocity& opAssign(FLayeredMove_LinearVelocity Other)`

---

