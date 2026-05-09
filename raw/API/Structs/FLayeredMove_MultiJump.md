### FLayeredMove_MultiJump


MultiJump: layered move for handling multiple jumps without touching the ground i.e. a double jump.
Note: This layered move ends automatically when the actor hits a valid floor so duration is expected to be less than 0.

**属性**:

- `float32 DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after a layered move has finished]`
- `int JumpsInAirRemaining`
- `int MaximumInAirJumps [Maximum Jumps an actor could perform while in the air]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`
- `float TimeOfLastJumpMS`
- `float32 UpwardsSpeed [Units per second, in whatever direction the target actor considers 'up']`


**方法**:

- `FLayeredMove_MultiJump& opAssign(FLayeredMove_MultiJump Other)`

---

