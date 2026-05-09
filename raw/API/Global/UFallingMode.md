### UFallingMode


FallingMode: a default movement mode for moving through the air and jumping, typically influenced by gravity and air control

**属性**:

- `float32 AirControlPercentage [When falling, amount of movement control available to the actor.
0 = no control, 1 = full control]`
- `float32 FallingDeceleration [Deceleration to apply to air movement when falling slower than terminal velocity.
Note: This is NOT applied to vertical velocity, only movement plane velocity]`
- `float32 FallingLateralFriction [Friction to apply to air movement.
Lateral velocity is scaled each tick by a factor (1-Friction * TimeStep) so friction
values greater than 1/TimeStep will result in all lateral velocity being removed.
Note: This is NOT applied to vertical velocity, only movement plane velocity]`
- `FMover_OnLanded OnLanded [Broadcast when this actor lands on a valid surface.]`
- `float32 OverTerminalSpeedFallingDeceleration [Deceleration to apply to air movement when falling faster than terminal velocity
Note: This is NOT applied to vertical velocity, only movement plane velocity]`
- `float32 TerminalMovementPlaneSpeed [If the actor's movement plane velocity is greater than this speed falling will start applying OverTerminalSpeedFallingDeceleration instead of FallingDeceleration
The expected behavior is to set OverTerminalSpeedFallingDeceleration higher than FallingDeceleration so the actor will slow down faster
when going over TerminalMovementPlaneSpeed.]`
- `float32 TerminalVerticalSpeed [If the actors vertical velocity is greater than this speed VerticalFallingDeceleration will be applied to vertical velocity]`
- `float32 VerticalFallingDeceleration [Deceleration to apply to vertical velocity when it's greater than TerminalVerticalSpeed. Only used if bShouldClampTerminalVerticalSpeed is false.]`
- `bool bCancelVerticalSpeedOnLanding [If true, actor will land and lose all speed in the vertical direction upon landing. If false, actor's vertical speed will be redirected based on the surface normal it hit.
Note: Actor's horizontal speed will not be affected if true. If false, horizontal speed may be increased on landing.]`
- `bool bShouldClampTerminalVerticalSpeed [When exceeding maximum vertical speed, should it be enforced via a hard clamp? If false, VerticalFallingDeceleration will be used for a smoother transition to the terminal speed limit.]`


**方法**:

- `ProcessLanded(FFloorCheckResult FloorResult, FVector& Velocity, FRelativeBaseInfo& BaseInfo, FMoverTickEndData& TickEndData) const`  
  Is called at the end of the tick in falling mode. Handles checking any landings that should occur and switching to specific modes
(i.e. landing on a walkable surface would switch to the walking movement mode)

---

