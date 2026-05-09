### FLaunchMoveActivationParams


**属性**:

- `float DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FName ForceMovementMode [Optional movement mode name to force the actor into before applying the impulse velocity.]`
- `FVector LaunchVelocity [Velocity to apply to the updated component. Could be additive or overriding depending on MixMode setting.]`


**方法**:

- `FLaunchMoveActivationParams& opAssign(FLaunchMoveActivationParams Other)`

---

