### FLayeredMove_AnimRootMotion


Anim Root Motion Move: handles root motion from a montage played on the primary visual component (skeletal mesh).
In this method, root motion is extracted independently from anim playback. The move will end itself if the animation
is interrupted on the mesh.

**属性**:

- `float32 DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after a layered move has finished]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `FMoverAnimMontageState MontageState []`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`


**方法**:

- `FLayeredMoveBase& ToParent()`
- `FLayeredMove_AnimRootMotion& opAssign(FLayeredMove_AnimRootMotion Other)`

---

