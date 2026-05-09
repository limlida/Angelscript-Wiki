### FSwimmingControlSettings


Controls for the Swimming Movement

**属性**:

- `float32 AngledSpeedCosAngle [Angled multiplier is applied when dot product of velocity and acceleration is < this.]`
- `float32 AngledSpeedMultiplier [Speed multiplier when moving off angle (velocity and acceleration divergent)]`
- `float32 BackwardsSpeedCosAngle [Directional multiplier is applied when dot product of velocity and player facing direction is < this.]`
- `float32 BackwardsSpeedMultiplier [Directional multiplier when moving mostly backwards]`
- `float32 BobbingExpDragDown [Bobbing: friction/drag opposed to downward velocity, squared with velocity per second. Ramps up faster with higher speeds, less effect at low speeds.]`
- `float32 BobbingExpDragDownSubmerged [Bobbing: friction/drag opposed to upward velocity, squared with velocity per second. Ramps up faster with higher speeds, less effect at low speeds.]`
- `float32 BobbingExpDragMultiplier [Bobbing: multiplier for the exponential drag.]`
- `float32 BobbingExpDragUp [Bobbing: friction/drag opposed to upward velocity, squared with velocity per second. Ramps up faster with higher speeds, less effect at low speeds.]`
- `float32 BobbingFrictionDown [Bobbing: friction/drag opposed to downward velocity, linear multiplier per second]`
- `float32 BobbingFrictionDownSubmerged [Bobbing: friction/drag opposed to downward velocity, linear multiplier per second. Only used when fully submerged (replaces other value).]`
- `float32 BobbingFrictionMultiplier [Bobbing: friction multiplier, multiplies the fluid friction value.]`
- `float32 BobbingFrictionUp [Bobbing: friction/drag opposed to upward velocity, linear multiplier per second]`
- `float32 BobbingIdealDepthTolerance [Bobbing: Slow down strongly when within this tolerance of the ideal immersion depth. Normally we apply drag only when going away from the ideal depth, this allows some slowdown when approaching it.]`
- `float32 BobbingMaxForce [Bobbing:]`
- `float32 BoostDragMultiplier [Bobbing: multiplier when in sprint boost to keep from popping up and out as much.]`
- `float32 BrakingDeceleration [Braking deceleration (decel when letting go of input)]`
- `float32 CancelCrouchImmersionDepth [At or below this depth, cancel and disallow crouching.]`
- `float32 DBNOSwimImmersionDepth [At or below this depth, start swimming in DBNO]`
- `float32 Friction [Friction, ie how floaty or snappy is changing direction.]`
- `float32 FrictionDirectionChangeDot [If Dot(Velocity, Acceleration) < this value, apply FrictionDirectionChangeMultiplier to friction value used. Allows lower friction when changing direction hard, which slows velocity change.]`
- `float32 FrictionDirectionChangeMultiplier [Friction multiplier (usually < 1) when changing direction.]`
- `float32 FrictionSprinting [Friction, ie how floaty or snappy is changing direction.]`
- `float32 JumpMultiplier [Multiplies ground's jump speed]`
- `float32 MaxAcceleration [Max acceleration.]`
- `float32 MaxAccelerationSprinting [Max acceleration while sprinting.]`
- `float32 MaxHorizontalEntrySpeed`
- `float32 MaxNormalSpeed [Max speed when not sprinting and moving normally (before water velocity is applied)]`
- `float32 MaxSpeedDown`
- `float32 MaxSpeedUp`
- `float32 MaxSprintSpeed [Max sprint speed (before water velocity is applied)]`
- `float32 MaxTargetingSpeed [Max speed when targeting (before water velocity is applied)]`
- `float32 MaxWaterForce [Max water force, after WaterVelocity * (WaterForceMultiplier * WaterForceSecondMultiplier).]`
- `float32 MinSprintJumpSpeed [Min speed required (relative to water) to maintain sprint while jumping, otherwise will stop sprint (and change anims).]`
- `float32 SprintDelayAfterFiring`
- `float32 SprintJumpAirAccelAngleLimit [If accel deviates from velocity by this angle while sprint jumping in air, stop sprint (and change anims).]`
- `float32 SprintRetriggerDelay`
- `float32 WaterForceMultiplier [Multiplier to water force acceleration in direction of current.]`
- `float32 WaterForceSecondMultiplier [Multiplier applied on the top of WaterForceMultiplier, to water force acceleration in direction of current. Used only for inherited objects.]`
- `float32 WaterSimMaxTimeStep [Max time step allowed, to prevent huge forces on hitches.]`
- `float32 WaterSimSubStepTime [Simulation sub-step time allowed for higher quality movement (local player and server).]`
- `float32 WaterVelocityDepthForMax [At or above this depth, use max velocity. Interps down to WaterVelocityMinMultiplier at wading depth (where player can start swimming)]`
- `float32 WaterVelocityMinMultiplier [Min velocity multiplier applied when depth equals min swimming depth (where they transition from wading to swimming). Interps between this and 1.0 at WaterVelocityDepthForMax.]`


**方法**:

- `FSwimmingControlSettings& opAssign(FSwimmingControlSettings Other)`

---

