### FLayeredMoveBase


Layered Moves are methods of affecting motion on a Mover-based actor, typically for a limited time.
Common uses would be for jumping, dashing, blast forces, etc.
They are ticked as part of the Mover simulation, and produce a proposed move. These proposed moves
are aggregated and applied to the overall attempted move.
Multiple layered moves can be active at any time, and may produce additive motion or motion that overrides
what the current Movement Mode may intend.
Layered moves can also set a preferred movement mode that only changes the movement mode at the start of
the move. Any movement mode changes that need to happen as part of the layered move after the start of the move
need to be queued through an Instant Effect or the QueueNextMode function
// Base class for all layered moves

**属性**:

- `float32 DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after a layered move has finished]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`


**方法**:

- `FLayeredMoveBase& opAssign(FLayeredMoveBase Other)`

---

