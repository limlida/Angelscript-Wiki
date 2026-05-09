### FLayeredMove_RootMotionAttribute


Root Motion Attribute Move: handles root motion from a mesh's custom attribute, ignoring scaling.
Currently only supports Independent ticking mode, and allows controlled movement while jumping/falling or when a SkipAnimRootMotion tag is active.

**属性**:

- `float32 DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after a layered move has finished]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`
- `bool bConstrainWorldRotToMovementPlane [If true, any root motion rotations will be projected onto the movement plane (in worldspace), relative to the "up" direction. Otherwise, they'll be taken as-is.]`


**方法**:

- `FLayeredMove_RootMotionAttribute& opAssign(FLayeredMove_RootMotionAttribute Other)`

---

