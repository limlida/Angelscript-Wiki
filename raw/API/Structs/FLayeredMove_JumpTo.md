### FLayeredMove_JumpTo


JumpTo: Moves this actor in a more jump-like manner - specifying height and distance of jump rather than just upwards speed
Note: this layered move is only intended for Mover actors using Z as it's up direction

**属性**:

- `float32 DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after a layered move has finished]`
- `float32 JumpDistance [Distance this jump impulse is supposed to reach]`
- `float32 JumpHeight [Height this jump impulse is supposed to reach]`
- `FRotator JumpRotation [Direction to jump in. Only used if bUseActorRotation is false]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `UCurveVector PathOffsetCurve [Optional CurveVector used to offset the actor from the path]`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`
- `UCurveFloat TimeMappingCurve [Optional CurveFloat to modify jump impulse over the duration of the impulse]`
- `bool bUseActorRotation [If true this jump will use the actor's rotation for jump direction instead of the Jump Rotation property.]`


**方法**:

- `FLayeredMove_JumpTo& opAssign(FLayeredMove_JumpTo Other)`

---

