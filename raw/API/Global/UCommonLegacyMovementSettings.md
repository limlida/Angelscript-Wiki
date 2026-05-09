### UCommonLegacyMovementSettings


CommonLegacyMovementSettings: collection of settings that are shared between several of the legacy movement modes

**属性**:

- `float32 Acceleration [Default max linear rate of acceleration for controlled input. May be scaled based on magnitude of input.]`
- `FName AirMovementModeName [What movement mode to use when airborne.]`
- `float32 BrakingFriction [Friction (drag) coefficient applied when braking (whenever Acceleration = 0, or if character is exceeding max speed); actual value used is this multiplied by BrakingFrictionFactor.
When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity.
Braking is composed of friction (velocity-dependent drag) and constant deceleration.
This is the current value, used in all movement modes; if this is not desired, override it or bUseSeparateBrakingFriction when movement mode changes.
@note Only used if bUseSeparateBrakingFriction setting is true, otherwise current friction such as GroundFriction is used.
@see bUseSeparateBrakingFriction, BrakingFrictionFactor, GroundFriction, BrakingDecelerationWalking]`
- `float32 BrakingFrictionFactor [Factor used to multiply actual value of friction used when braking.
This applies to any friction value that is currently used, which may depend on bUseSeparateBrakingFriction.
@note This is 2 by default for historical reasons, a value of 1 gives the true drag equation.]`
- `float32 Deceleration [Default max linear rate of deceleration when there is no controlled input]`
- `float32 FloorSweepDistance [Max distance to scan for floor surfaces under a Mover actor]`
- `float32 GroundFriction [Setting that affects movement control. Higher values allow faster changes in direction. This can be used to simulate slippery
surfaces such as ice or oil by lowering the value (possibly based on the material the actor is standing on).]`
- `FName GroundMovementModeName [What movement mode to use when on the ground.]`
- `float32 JumpUpwardsSpeed [Instantaneous speed induced in an actor upon jumping]`
- `float32 MaxSpeed [Maximum speed in the movement plane]`
- `float32 MaxStepHeight [Mover actors will be able to step up onto or over obstacles shorter than this]`
- `float32 MaxWalkSlopeCosine [Walkable slope angle, represented as cosine(max slope angle) for performance reasons. Ex: for max slope angle of 30 degrees, value is cosine(30 deg) = 0.866]`
- `float32 SwimmingIdealImmersionDepth [Depth at which the pawn will float when in water]`
- `FName SwimmingMovementModeName [What movement mode to use when airborne.]`
- `float32 SwimmingStartImmersionDepth [Depth at which the pawn starts swimming]`
- `float32 SwimmingStopImmersionDepth [Depth at which the pawn stops swimming]`
- `float32 TurningBoost [Speeds velocity direction changes while turning, to reduce sliding]`
- `float32 TurningRate [Maximum rate of turning rotation (degrees per second). Negative numbers indicate instant rotation and should cause rotation to snap instantly to desired direction.]`
- `bool bIgnoreBaseRotation [Whether the actor ignores changes in rotation of the base it is standing on when using based movement.
If true, the actor maintains its current world rotation.
If false, the actor rotates with the moving base.]`
- `bool bShouldRemainVertical [If true, the actor will remain upright with gravity despite any rotation applied to the actor]`
- `bool bUseAccelerationForVelocityMove [Should use acceleration for velocity based movement intent?
If true, acceleration is applied when using velocity input to reach the target velocity.
If false, velocity is set directly, disregarding acceleration.]`
- `bool bUseFlatBaseForFloorChecks [Performs floor checks as if the object is using a shape with a flat base.
This avoids the situation where we slowly lower off the side of a ledge when using shapes with rounded bottoms, like a capsule.]`
- `bool bUseSeparateBrakingFriction [If true, BrakingFriction will be used to slow the character to a stop (when there is no Acceleration).
If false, braking uses the same friction passed to CalcVelocity() (ie GroundFriction when walking), multiplied by BrakingFrictionFactor.
This setting applies to all movement modes; if only desired in certain modes, consider toggling it when movement modes change.
@see BrakingFriction]`

---

