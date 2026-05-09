### UCharacterMovementComponent


CharacterMovementComponent handles movement logic for the associated Character owner.
It supports various movement modes including: walking, falling, swimming, flying, custom.

Movement is affected primarily by current Velocity and Acceleration. Acceleration is updated each frame
based on the input vector accumulated thus far (see UPawnMovementComponent::GetPendingInputVector()).

Networking is fully implemented, with server-client correction and prediction included.

@see ACharacter, UPawnMovementComponent
@see https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Pawn/Character/

**属性**:

- `float32 AirControl [When falling, amount of lateral movement control available to the character.
0 = no control, 1 = full control at max speed of MaxWalkSpeed.]`
- `float32 AirControlBoostMultiplier [When falling, multiplier applied to AirControl when lateral velocity is less than AirControlBoostVelocityThreshold.
Setting this to zero will disable air control boosting. Final result is clamped at 1.]`
- `float32 AirControlBoostVelocityThreshold [When falling, if lateral velocity magnitude is less than this value, AirControl is multiplied by AirControlBoostMultiplier.
Setting this to zero will disable air control boosting.]`
- `float32 AvoidanceConsiderationRadius`
- `FNavAvoidanceMask AvoidanceGroup [Moving actor's group mask]`
- `int AvoidanceUID [No default value, for now it's assumed to be valid if GetAvoidanceManager() returns non-NULL.]`
- `float32 AvoidanceWeight [De facto default value 0.5 (due to that being the default in the avoidance registration function), indicates RVO behavior.]`
- `float32 BrakingDecelerationFalling [Lateral deceleration when falling and not applying acceleration.
@see MaxAcceleration]`
- `float32 BrakingDecelerationFlying [Deceleration when flying and not applying acceleration.
@see MaxAcceleration]`
- `float32 BrakingDecelerationSwimming [Deceleration when swimming and not applying acceleration.
@see MaxAcceleration]`
- `float32 BrakingDecelerationWalking [Deceleration when walking and not applying acceleration. This is a constant opposing force that directly lowers velocity by a constant value.
@see GroundFriction, MaxAcceleration]`
- `float32 BrakingFriction [Friction (drag) coefficient applied when braking (whenever Acceleration = 0, or if character is exceeding max speed); actual value used is this multiplied by BrakingFrictionFactor.
When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity.
Braking is composed of friction (velocity-dependent drag) and constant deceleration.
This is the current value, used in all movement modes; if this is not desired, override it or bUseSeparateBrakingFriction when movement mode changes.
@note Only used if bUseSeparateBrakingFriction setting is true, otherwise current friction such as GroundFriction is used.
@see bUseSeparateBrakingFriction, BrakingFrictionFactor, GroundFriction, BrakingDecelerationWalking]`
- `float32 BrakingFrictionFactor [Factor used to multiply actual value of friction used when braking.
This applies to any friction value that is currently used, which may depend on bUseSeparateBrakingFriction.
@note This is 2 by default for historical reasons, a value of 1 gives the true drag equation.
@see bUseSeparateBrakingFriction, GroundFriction, BrakingFriction]`
- `float32 BrakingSubStepTime [Time substepping when applying braking friction. Smaller time steps increase accuracy at the slight cost of performance, especially if there are large frame times.]`
- `float32 Buoyancy [Water buoyancy. A ratio (1.0 = neutral buoyancy, 0.0 = no buoyancy)]`
- `float32 CrouchedHalfHeight`
- `FFindFloorResult CurrentFloor [Information about the floor the Character is standing on (updated only during walking movement).]`
- `uint8 CustomMovementMode [Current custom sub-mode if MovementMode is set to Custom.
This is automatically replicated through the Character owner and for client-server movement functions.
@see SetMovementMode()]`
- `EMovementMode DefaultLandMovementMode [Default movement mode when not in water. Used at player startup or when teleported.
@see DefaultWaterMovementMode
@see bRunPhysicsWithNoController]`
- `EMovementMode DefaultWaterMovementMode [Default movement mode when in water. Used at player startup or when teleported.
@see DefaultLandMovementMode
@see bRunPhysicsWithNoController]`
- `float32 FallingLateralFriction [Friction to apply to lateral air movement when falling.
If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero).
@see BrakingFriction, bUseSeparateBrakingFriction]`
- `float32 FormerBaseVelocityDecayHalfLife [When applying a root motion override while falling off a moving object, this controls how long it takes to lose half the former base's velocity (in seconds).
Set to 0 to ignore former bases (default).
Set to -1 for no decay.
Any other positive value sets the half-life for exponential decay.]`
- `FVector GravityDirection [A normalized vector representing the direction of gravity for gravity relative movement modes: walking, falling,
and custom movement modes. Gravity direction remaps player input as being within the plane defined by the gravity
direction. Movement simulation values like velocity and acceleration are maintained in their existing world coordinate
space but are transformed internally as gravity relative (for instance moving forward up a vertical wall that gravity is
defined to be perpendicular to and jump "up" from that wall). If ShouldRemainVertical() is true the character's capsule
will be oriented to align with the gravity direction.]`
- `float32 GravityScale [Custom gravity scale. Gravity is multiplied by this amount for the character.]`
- `FQuat GravityToWorldTransform [A cached quaternion representing the inverse rotation from world space to gravity relative space defined by GravityDirection.]`
- `float32 GroundFriction [Setting that affects movement control. Higher values allow faster changes in direction.
If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero), where it is multiplied by BrakingFrictionFactor.
When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity.
This can be used to simulate slippery surfaces such as ice or oil by changing the value (possibly based on the material pawn is standing on).
@see BrakingDecelerationWalking, BrakingFriction, bUseSeparateBrakingFriction, BrakingFrictionFactor]`
- `FNavAvoidanceMask GroupsToAvoid [Will avoid other agents if they are in one of specified groups]`
- `FNavAvoidanceMask GroupsToIgnore [Will NOT avoid other agents if they are in one of specified groups, higher priority than GroupsToAvoid]`
- `float32 InitialPushForceFactor [Initial impulse force to apply when the player bounces into a blocking physics object.]`
- `float32 JumpOffJumpZFactor [Fraction of JumpZVelocity to use when automatically "jumping off" of a base actor that's not allowed to be a base for a character. (For example, if you're not allowed to stand on other players.)]`
- `float32 JumpOutOfWaterPitch [When exiting water, jump if control pitch angle is this high or above.]`
- `float32 JumpZVelocity [Initial velocity (instantaneous vertical acceleration) when jumping.]`
- `float32 LedgeCheckThreshold [Used in determining if pawn is going off ledge.  If the ledge is "shorter" than this value then the pawn will be able to walk off it. *]`
- `float32 ListenServerNetworkSimulatedSmoothLocationTime [Similar setting as NetworkSimulatedSmoothLocationTime but only used on Listen servers.]`
- `float32 ListenServerNetworkSimulatedSmoothRotationTime [Similar setting as NetworkSimulatedSmoothRotationTime but only used on Listen servers.]`
- `float32 Mass [Mass of pawn (for when momentum is imparted to it).]`
- `float32 MaxAcceleration [Max Acceleration (rate of change of velocity)]`
- `float32 MaxCustomMovementSpeed [The maximum speed when using Custom movement mode.]`
- `float32 MaxDepenetrationWithGeometry [Max distance we allow simulated proxies to depenetrate when moving out of anything but Pawns.
This is generally more tolerant than with Pawns, because other geometry is either not moving, or is moving predictably with a bit of delay compared to on the server.
@see MaxDepenetrationWithGeometryAsProxy, MaxDepenetrationWithPawn, MaxDepenetrationWithPawnAsProxy]`
- `float32 MaxDepenetrationWithGeometryAsProxy [Max distance we allow simulated proxies to depenetrate when moving out of anything but Pawns.
This is generally more tolerant than with Pawns, because other geometry is either not moving, or is moving predictably with a bit of delay compared to on the server.
@see MaxDepenetrationWithGeometry, MaxDepenetrationWithPawn, MaxDepenetrationWithPawnAsProxy]`
- `float32 MaxDepenetrationWithPawn [Max distance we are allowed to depenetrate when moving out of other Pawns.
@see MaxDepenetrationWithGeometry, MaxDepenetrationWithGeometryAsProxy, MaxDepenetrationWithPawnAsProxy]`
- `float32 MaxDepenetrationWithPawnAsProxy [Max distance we allow simulated proxies to depenetrate when moving out of other Pawns.
Typically we don't want a large value, because we receive a server authoritative position that we should not then ignore by pushing them out of the local player.
@see MaxDepenetrationWithGeometry, MaxDepenetrationWithGeometryAsProxy, MaxDepenetrationWithPawn]`
- `float32 MaxFlySpeed [The maximum flying speed.]`
- `int MaxJumpApexAttemptsPerSimulation [Max number of attempts per simulation to attempt to exactly reach the jump apex when falling movement reaches the top of the arc.
Limiting this prevents deep recursion when special cases cause collision or other conditions which reactivate the apex condition.]`
- `float32 MaxOutOfWaterStepHeight [Maximum step height for getting out of water]`
- `int MaxSimulationIterations [Max number of iterations used for each discrete simulation step.
Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking).
Increasing this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.

WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
@see MaxSimulationTimeStep]`
- `float32 MaxSimulationTimeStep [Max time delta for each discrete simulation step.
Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking).
Lowering this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.

WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
@see MaxSimulationIterations]`
- `float32 MaxStepHeight [Maximum height character can step up]`
- `float32 MaxSwimSpeed [The maximum swimming speed.]`
- `float32 MaxTouchForce [Maximum force applied to touched physics objects. If < 0.0f, there is no maximum.]`
- `float32 MaxWalkSpeed [The maximum ground speed when walking. Also determines maximum lateral speed when falling.]`
- `float32 MaxWalkSpeedCrouched [The maximum ground speed when walking and crouched.]`
- `float32 MinAnalogWalkSpeed [The ground speed that we should accelerate up to when walking at minimum analog stick tilt]`
- `float32 MinTouchForce [Minimum Force applied to touched physics objects. If < 0.0f, there is no minimum.]`
- `EMovementMode MovementMode [Actor's current movement mode (walking, falling, etc).
   - walking:  Walking on a surface, under the effects of friction, and able to "step up" barriers. Vertical velocity is zero.
   - falling:  Falling under the effects of gravity, after jumping or walking off the edge of a surface.
   - flying:   Flying, ignoring the effects of gravity.
   - swimming: Swimming through a fluid volume, under the effects of gravity and buoyancy.
   - custom:   User-defined custom movement mode, including many possible sub-modes.
This is automatically replicated through the Character owner and for client-server movement functions.
@see SetMovementMode(), CustomMovementMode]`
- `float32 NavMeshProjectionHeightScaleDown [Scale of the total capsule height to use for projection from navmesh to underlying geometry in the downward direction.
In other words, trace down to [CapsuleHeight * NavMeshProjectionHeightScaleDown] below nav mesh.]`
- `float32 NavMeshProjectionHeightScaleUp [Scale of the total capsule height to use for projection from navmesh to underlying geometry in the upward direction.
In other words, start the trace at [CapsuleHeight * NavMeshProjectionHeightScaleUp] above nav mesh.]`
- `float32 NavMeshProjectionInterpSpeed [Speed at which to interpolate agent navmesh offset between traces. 0: Instant (no interp) > 0: Interp speed")]`
- `float32 NavMeshProjectionInterval [How often we should raycast to project from navmesh to underlying geometry]`
- `float32 NavWalkingFloorDistTolerance [Ignore small differences in ground height between server and client data during NavWalking mode]`
- `float32 NetProxyShrinkHalfHeight [Shrink simulated proxy capsule half height by this amount, to account for network rounding that may cause encroachment. Changing during gameplay is not supported.
@see AdjustProxyCapsuleSize()]`
- `float32 NetProxyShrinkRadius [Shrink simulated proxy capsule radius by this amount, to account for network rounding that may cause encroachment. Changing during gameplay is not supported.
@see AdjustProxyCapsuleSize()]`
- `float32 NetworkLargeClientCorrectionDistance [If client error is larger than this, sets bNetworkLargeClientCorrection to reduce delay between client adjustments.
@see NetworkMinTimeBetweenClientAdjustments, NetworkMinTimeBetweenClientAdjustmentsLargeCorrection]`
- `float32 NetworkMaxSmoothUpdateDistance [Maximum distance character is allowed to lag behind server location when interpolating between updates.]`
- `float32 NetworkMinTimeBetweenClientAckGoodMoves [Minimum time on the server between acknowledging good client moves. This can save on bandwidth. Set to 0 to disable throttling.]`
- `float32 NetworkMinTimeBetweenClientAdjustments [Minimum time on the server between sending client adjustments when client has exceeded allowable position error.
Should be >= NetworkMinTimeBetweenClientAdjustmentsLargeCorrection (the larger value is used regardless).
This can save on bandwidth. Set to 0 to disable throttling.
@see ServerLastClientAdjustmentTime]`
- `float32 NetworkMinTimeBetweenClientAdjustmentsLargeCorrection [Minimum time on the server between sending client adjustments when client has exceeded allowable position error by a large amount (NetworkLargeClientCorrectionDistance).
Should be <= NetworkMinTimeBetweenClientAdjustments (the smaller value is used regardless).
@see NetworkMinTimeBetweenClientAdjustments]`
- `float32 NetworkNoSmoothUpdateDistance [Maximum distance beyond which character is teleported to the new server location without any smoothing.]`
- `float32 NetworkSimulatedSmoothLocationTime [How long to take to smoothly interpolate from the old pawn position on the client to the corrected one sent by the server. Not used by Linear smoothing.]`
- `float32 NetworkSimulatedSmoothRotationTime [How long to take to smoothly interpolate from the old pawn rotation on the client to the corrected one sent by the server. Not used by Linear smoothing.]`
- `ENetworkSmoothingMode NetworkSmoothingMode [Smoothing mode for simulated proxies in network game.]`
- `float32 OutofWaterZ [Z velocity applied when pawn tries to get out of water]`
- `float32 PerchAdditionalHeight [When perching on a ledge, add this additional distance to MaxStepHeight when determining how high above a walkable floor we can perch.
Note that we still enforce MaxStepHeight to start the step up; this just allows the character to hang off the edge or step slightly higher off the floor.
(@see PerchRadiusThreshold)]`
- `float32 PerchRadiusThreshold [Don't allow the character to perch on the edge of a surface if the contact is this close to the edge of the capsule.
Note that characters will not fall off if they are within MaxStepHeight of a walkable surface below.]`
- `float32 PushForceFactor [Force to apply when the player collides with a blocking physics object.]`
- `float32 PushForcePointZOffsetFactor [Z-Offset for the position the force is applied to. 0.0f is the center of the physics object, 1.0f is the top and -1.0f is the bottom of the object.]`
- `float32 RepulsionForce [Force per kg applied constantly to all overlapping components.]`
- `FRotator RotationRate [Change in rotation per second, used when UseControllerDesiredRotation or OrientRotationToMovement are true. Set a negative value for infinite rotation rate and instant turns.]`
- `float32 StandingDownwardForceScale [Force applied to objects we stand on (due to Mass and Gravity) is scaled by this amount.]`
- `float32 StayBasedInAirHeight [Property used to set how high above base characters should stay based on objects while jumping if bStayBasedInAir is set]`
- `float32 TouchForceFactor [Force to apply to physics objects that are touched by the player.]`
- `float32 WalkableFloorAngle [Max angle in degrees of a walkable surface. Any greater than this and it is too steep to be walkable.]`
- `FQuat WorldToGravityTransform [A cached quaternion representing the rotation from world space to gravity relative space defined by GravityDirection.]`
- `bool bAllowPhysicsRotationDuringAnimRootMotion`
- `bool bAlwaysCheckFloor [Whether we always force floor checks for stationary Characters while walking.
Normally floor checks are avoided if possible when not moving, but this can be used to force them if there are use-cases where they are being skipped erroneously
(such as objects moving up into the character from below).]`
- `bool bApplyGravityWhileJumping [Apply gravity while the character is actively jumping (e.g. holding the jump key).
Helps remove frame-rate dependent jump height, but may alter base jump height.]`
- `bool bBaseOnAttachmentRoot [Property to set if characters should stay based on objects attachment root instead of the traced object]`
- `bool bBasedMovementIgnorePhysicsBase [Property to set if UpdateBasedMovement should ignore collision with actors part of the current MovementBase, if the base is simulated by physics]`
- `bool bCanWalkOffLedges [If true, Character can walk off a ledge.]`
- `bool bCanWalkOffLedgesWhenCrouching [If true, Character can walk off a ledge when crouching.]`
- `bool bCrouchMaintainsBaseLocation [If true, crouching should keep the base of the capsule in place by lowering the center of the shrunken capsule. If false, the base of the capsule moves up and the center stays in place.
The same behavior applies when the character uncrouches: if true, the base is kept in the same location and the center moves up. If false, the capsule grows and only moves up if the base impacts something.
By default this variable is set when the movement mode changes: set to true when walking and false otherwise. Feel free to override the behavior when the movement mode changes.]`
- `bool bDontFallBelowJumpZVelocityDuringJump [True means while the jump key is held, we will not allow the vertical speed to fall below the JumpZVelocity tuning value
even if a stronger force, such as gravity, is opposing the jump.]`
- `bool bEnablePhysicsInteraction [If enabled, the player will interact with physics objects when walking into them.]`
- `bool bEnableScopedMovementUpdates [If true, high-level movement updates will be wrapped in a movement scope that accumulates updates and defers a bulk of the work until the end.
When enabled, touch and hit events will not be triggered until the end of multiple moves within an update, which can improve performance.

@see FScopedMovementUpdate]`
- `bool bEnableServerDualMoveScopedMovementUpdates [Optional scoped movement update to combine moves for cheaper performance on the server when the client sends two moves in one packet.
Be warned that since this wraps a larger scope than is normally done with bEnableScopedMovementUpdates, this can result in subtle changes in behavior
in regards to when overlap events are handled, when attached components are moved, etc.

@see bEnableScopedMovementUpdates]`
- `bool bForceNextFloorCheck [Force the Character in MOVE_Walking to do a check for a valid floor even if it hasn't moved. Cleared after next floor check.
Normally if bAlwaysCheckFloor is false we try to avoid the floor check unless some conditions are met, but this can be used to force the next check to always run.]`
- `bool bIgnoreBaseRotation [Whether the character ignores changes in rotation of the base it is standing on.
If true, the character maintains current world rotation.
If false, the character rotates with the moving base.]`
- `bool bIgnoreClientMovementErrorChecksAndCorrection [If true, we should ignore server location difference checks for client error on this movement component.
This can be useful when character is moving at extreme speeds for a duration and you need it to look
smooth on clients without the server correcting the client. Make sure to disable when done, as this would
break this character's server-client movement correction.
@see bServerAcceptClientAuthoritativePosition, ServerCheckClientError()]`
- `bool bImpartBaseAngularVelocity [If true, impart the base component's tangential components of angular velocity when jumping or falling off it.
Only those components of the velocity allowed by the separate component settings (bImpartBaseVelocityX etc) will be applied.
@see bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ]`
- `bool bImpartBaseVelocityX [If true, impart the base actor's X velocity when falling off it (which includes jumping)]`
- `bool bImpartBaseVelocityY [If true, impart the base actor's Y velocity when falling off it (which includes jumping)]`
- `bool bImpartBaseVelocityZ [If true, impart the base actor's Z velocity when falling off it (which includes jumping)]`
- `bool bJustTeleported [Used by movement code to determine if a change in position is based on normal movement or a teleport. If not a teleport, velocity can be recomputed based on the change in position.]`
- `bool bMaintainHorizontalGroundVelocity [If true, walking movement always maintains horizontal velocity when moving up ramps, which causes movement up ramps to be faster parallel to the ramp surface.
If false, then walking movement maintains velocity magnitude parallel to the ramp surface.]`
- `bool bNetworkAlwaysReplicateTransformUpdateTimestamp [Flag used on the server to determine whether to always replicate ReplicatedServerLastTransformUpdateTimeStamp to clients.
Normally this is only sent when the network smoothing mode on character movement is set to Linear smoothing (on the server), to save bandwidth.
Setting this to true will force the timestamp to replicate regardless, in case the server doesn't know about the smoothing mode, or if the timestamp is used for another purpose.]`
- `bool bNetworkSkipProxyPredictionOnNetUpdate [Whether we skip prediction on frames where a proxy receives a network update. This can avoid expensive prediction on those frames,
with the side-effect of predicting with a frame of additional latency.]`
- `bool bNotifyApex [If true, event NotifyJumpApex() to CharacterOwner's controller when at apex of jump. Is cleared when event is triggered.
By default this is off, and if you want the event to fire you typically set it to true when movement mode changes to "Falling" from another mode (see OnMovementModeChanged).]`
- `bool bOrientRotationToMovement [If true, rotate the Character toward the direction of acceleration, using RotationRate as the rate of rotation change. Overrides UseControllerDesiredRotation.
Normally you will want to make sure that other settings are cleared, such as bUseControllerRotationYaw on the Character.]`
- `bool bProjectNavMeshOnBothWorldChannels [Use both WorldStatic and WorldDynamic channels for NavWalking geometry conforming]`
- `bool bProjectNavMeshWalking [Whether to raycast to underlying geometry to better conform navmesh-walking characters]`
- `bool bPushForceScaledToMass [If enabled, the PushForceFactor is applied per kg mass of the affected object.]`
- `bool bPushForceUsingZOffset [If enabled, the PushForce location is moved using PushForcePointZOffsetFactor. Otherwise simply use the impact point.]`
- `bool bRequestedMoveUseAcceleration [Should use acceleration for path following?
If true, acceleration is applied when path following to reach the target velocity.
If false, path following velocity is set directly, disregarding acceleration.]`
- `bool bRunPhysicsWithNoController [If true, movement will be performed even if there is no Controller for the Character owner.
Normally without a Controller, movement will be aborted and velocity and acceleration are zeroed if the character is walking.
Characters that are spawned without a Controller but with this flag enabled will initialize the movement mode to DefaultLandMovementMode or DefaultWaterMovementMode appropriately.
@see DefaultLandMovementMode, DefaultWaterMovementMode]`
- `bool bScalePushForceToVelocity [If enabled, the applied push force will try to get the physics object to the same velocity than the player, not faster. This will only
              scale the force down, it will never apply more force than defined by PushForceFactor.]`
- `bool bServerAcceptClientAuthoritativePosition [If true, and server does not detect client position error, server will copy the client movement location/velocity/etc after simulating the move.
This can be useful for short bursts of movement that are difficult to sync over the network.
Note that if bIgnoreClientMovementErrorChecksAndCorrection is used, this means the server will not detect an error.
Also see GameNetworkManager->ClientAuthorativePosition which permanently enables this behavior.
@see bIgnoreClientMovementErrorChecksAndCorrection, ServerShouldUseAuthoritativePosition()]`
- `bool bSlideAlongNavMeshEdge [Should we attempt to slide along a navmesh instead of projecting a point on the navmesh and moving to that]`
- `bool bStayBasedInAir [Property to set if characters should stay based on objects while jumping]`
- `bool bSweepWhileNavWalking [Whether or not the character should sweep for collision geometry while walking.
@see USceneComponent::MoveComponent.]`
- `bool bTouchForceScaledToMass [If enabled, the TouchForceFactor is applied per kg mass of the affected object.]`
- `bool bUseControllerDesiredRotation [If true, smoothly rotate the Character toward the Controller's desired rotation (typically Controller->ControlRotation), using RotationRate as the rate of rotation change. Overridden by OrientRotationToMovement.
Normally you will want to make sure that other settings are cleared, such as bUseControllerRotationYaw on the Character.]`
- `bool bUseFlatBaseForFloorChecks [Performs floor checks as if the character is using a shape with a flat base.
This avoids the situation where characters slowly lower off the side of a ledge (as their capsule 'balances' on the edge).]`
- `bool bUseRVOAvoidance [If set, component will use RVO avoidance. This only runs on the server.]`
- `bool bUseSeparateBrakingFriction [If true, BrakingFriction will be used to slow the character to a stop (when there is no Acceleration).
If false, braking uses the same friction passed to CalcVelocity() (ie GroundFriction when walking), multiplied by BrakingFrictionFactor.
This setting applies to all movement modes; if only desired in certain modes, consider toggling it when movement modes change.
@see BrakingFriction]`
- `bool bWantsToCrouch [If true, try to crouch (or keep crouching) on next update. If false, try to stop crouching on next update.]`


**方法**:

- `AddForce(FVector Force)`  
  Add force to character. Forces are accumulated each tick and applied together
so multiple calls to this function will accumulate.
Forces are scaled depending on timestep, so they can be applied each frame. If you want an
instantaneous force, use AddImpulse.
Adding a force always takes the actor's mass into account.
Note that changing the momentum of characters like this can change the movement mode.

@param       Force                   Force to apply.
- `AddImpulse(FVector Impulse, bool bVelocityChange = false)`  
  Add impulse to character. Impulses are accumulated each tick and applied together
so multiple calls to this function will accumulate.
An impulse is an instantaneous force, usually applied once. If you want to continually apply
forces each frame, use AddForce().
Note that changing the momentum of characters like this can change the movement mode.

@param       Impulse                         Impulse to apply.
@param       bVelocityChange         Whether or not the impulse is relative to mass.
- `CalcVelocity(float32 DeltaTime, float32 Friction, bool bFluid, float32 BrakingDeceleration)`  
  Updates Velocity and Acceleration based on the current state, applying the effects of friction and acceleration or deceleration. Does not apply gravity.
This is used internally during movement updates. Normally you don't need to call this from outside code, but you might want to use it for custom movement modes.

@param       DeltaTime                                               time elapsed since last frame.
@param       Friction                                                coefficient of friction when not accelerating, or in the direction opposite acceleration.
@param       bFluid                                                  true if moving through a fluid, causing Friction to always be applied regardless of acceleration.
@param       BrakingDeceleration                             deceleration applied when not accelerating, or when exceeding max velocity.
- `ClearAccumulatedForces()`  
  Clears forces accumulated through AddImpulse() and AddForce(), and also pending launch velocity.
- `DisableMovement()`  
  Make movement impossible (sets movement mode to MOVE_None).
- `float32 GetAnalogInputModifier() const`  
  Returns modifier [0..1] based on the magnitude of the last input vector, which is used to modify the acceleration and max speed during movement.
- `ACharacter GetCharacterOwner() const`  
  Get the Character that owns UpdatedComponent.
- `float32 GetCrouchedHalfHeight() const`  
  Returns the collision half-height when crouching (component scale is applied separately)
- `FVector GetCurrentAcceleration() const`  
  Returns current acceleration, computed from input vector each update.
- `FVector GetGravityDirection() const`  
  Returns the current gravity direction.
- `FVector GetImpartedMovementBaseVelocity() const`  
  If we have a movement base, get the velocity that should be imparted by that base, usually when jumping off of it.
Only applies the components of the velocity enabled by bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ.
- `FVector GetLastUpdateLocation() const`  
  Returns the location at the end of the last tick.
- `FVector GetLastUpdateRequestedVelocity() const`  
  Returns velocity requested by path following
- `FRotator GetLastUpdateRotation() const`  
  Returns the rotation at the end of the last tick.
- `FVector GetLastUpdateVelocity() const`  
  Returns the velocity at the end of the last tick.
- `float32 GetMaxAcceleration() const`  
  Returns maximum acceleration for the current state.
- `float32 GetMaxBrakingDeceleration() const`  
  Returns maximum deceleration for the current state when braking (ie when there is no acceleration).
- `float32 GetMaxJumpHeight() const`  
  Compute the max jump height based on the JumpZVelocity velocity and gravity.
This does not take into account the CharacterOwner's MaxJumpHoldTime.
- `float32 GetMaxJumpHeightWithJumpTime() const`  
  Compute the max jump height based on the JumpZVelocity velocity and gravity.
This does take into account the CharacterOwner's MaxJumpHoldTime.
- `float32 GetMinAnalogSpeed() const`  
  Returns maximum acceleration for the current state.
- `UPrimitiveComponent GetMovementBase() const`  
  Return PrimitiveComponent we are based on (standing and walking on).
- `float32 GetPerchRadiusThreshold() const`  
  Returns The distance from the edge of the capsule within which we don't allow the character to perch on the edge of a surface.
- `float32 GetValidPerchRadius() const`  
  Returns the radius within which we can stand on the edge of a surface without falling (if this is a walkable surface).
Simply computed as the capsule radius minus the result of GetPerchRadiusThreshold().
- `bool HasCustomGravity() const`  
  Whether the gravity direction is different from UCharacterMovementComponent::DefaultGravityDirection.
- `bool IsWalkable(FHitResult Hit) const`  
  Return true if the hit result should be considered a walkable surface for the character.
- `bool IsWalking() const`  
  Returns true if the character is in the 'Walking' movement mode.
- `ComputeFloorDistance(FVector CapsuleLocation, float32 LineDistance, float32 SweepDistance, float32 SweepRadius, FFindFloorResult& FloorResult) const`  
  Compute distance to the floor from bottom sphere of capsule and store the result in FloorResult.
This distance is the swept distance of the capsule to the first point impacted by the lower hemisphere, or distance from the bottom of the capsule in the case of a line trace.
This function does not care if collision is disabled on the capsule (unlike FindFloor).

@param CapsuleLocation                Location where the capsule sweep should originate
@param LineDistance                   If non-zero, max distance to test for a simple line check from the capsule base. Used only if the sweep test fails to find a walkable floor, and only returns a valid result if the impact normal is a walkable normal.
@param SweepDistance                  If non-zero, max distance to use when sweeping a capsule downwards for the test. MUST be greater than or equal to the line distance.
@param SweepRadius                    The radius to use for sweep tests. Should be <= capsule radius.
@param FloorResult                    Result of the floor check
- `FindFloor(FVector CapsuleLocation, FFindFloorResult& FloorResult) const`  
  Sweeps a vertical trace to find the floor for the capsule at the given location. Will attempt to perch if ShouldComputePerchResult() returns true for the downward sweep result.
No floor will be found if collision is disabled on the capsule!

@param CapsuleLocation                Location where the capsule sweep should originate
@param FloorResult                    Result of the floor check
- `float32 GetWalkableFloorAngle() const`  
  Get the max angle in degrees of a walkable surface for the character.
- `float32 GetWalkableFloorZ() const`  
  Get the Z component of the normal of the steepest walkable surface for the character. Any lower than this and it is not walkable.
- `SetAvoidanceEnabled(bool bEnable)`  
  Change avoidance state and registers in RVO manager if needed
- `SetAvoidanceGroupMask(FNavAvoidanceMask GroupMask)`
- `SetCrouchedHalfHeight(float32 NewValue)`  
  Sets collision half-height when crouching and updates dependent computations
- `SetGravityDirection(FVector GravityDir)`  
  Set a custom, local gravity direction to use during movement simulation.
The gravity direction must be synchronized by external systems between the autonomous
and authority processes. The gravity direction will be corrected as part of movement
corrections should the movement state diverge.
SetGravityDirection is responsible for initializing cached values used to tranform to
from gravity relative space.
@param GravityDir            A non-zero vector representing the new gravity direction. The vector will be normalized.
- `SetGroupsToAvoidMask(FNavAvoidanceMask GroupMask)`
- `SetGroupsToIgnoreMask(FNavAvoidanceMask GroupMask)`
- `SetMovementMode(EMovementMode NewMovementMode, uint8 NewCustomMode = 0)`  
  Change movement mode.

@param NewMovementMode       The new movement mode
@param NewCustomMode         The new custom sub-mode, only applicable if NewMovementMode is Custom.
- `SetWalkableFloorAngle(float32 InWalkableFloorAngle)`  
  Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.
- `SetWalkableFloorZ(float32 InWalkableFloorZ)`  
  Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle.

---

