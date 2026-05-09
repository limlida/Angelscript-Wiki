### UFloatingPawnMovement


FloatingPawnMovement is a movement component that provides simple movement for any Pawn class.
Limits on speed and acceleration are provided, while gravity is not implemented.

Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).
During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.

**属性**:

- `float32 Acceleration [Acceleration applied by input (rate of change of velocity)]`
- `float32 Deceleration [Deceleration applied when there is no input (rate of change of velocity)]`
- `float32 MaxSpeed [Maximum velocity magnitude allowed for the controlled Pawn.]`
- `float32 TurningBoost [Setting affecting extra force applied when changing direction, making turns have less drift and become more responsive.
Velocity magnitude is not allowed to increase, that only happens due to normal acceleration. It may decrease with large direction changes.
Larger values apply extra force to reach the target direction more quickly, while a zero value disables any extra turn force.]`

---

