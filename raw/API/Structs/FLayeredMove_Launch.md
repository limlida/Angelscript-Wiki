### FLayeredMove_Launch


Launch Move: provides an impulse velocity to the actor after (optionally) forcing them into a particular movement mode

**属性**:

- `float32 DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after a layered move has finished]`
- `FName ForceMovementMode [Optional movement mode name to force the actor into before applying the impulse velocity.]`
- `FVector LaunchVelocity [Velocity to apply to the actor. Could be additive or overriding depending on MixMode setting.]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`


**方法**:

- `FLayeredMove_Launch& opAssign(FLayeredMove_Launch Other)`

---

