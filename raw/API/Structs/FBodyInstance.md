### FBodyInstance


Container for a physics representation of an object

**属性**:

- `float32 AngularDamping ['Drag' force added to reduce angular movement]`
- `FVector COMNudge [User specified offset for this object's Center of Mass. The offset is defined in bone space and will be added to the calculated location.]`
- `ECollisionEnabled CollisionEnabled [Type of collision enabled.

      No Collision      : Will not create any representation in the physics engine. Cannot be used for spatial queries (raycasts, sweeps, overlaps) or simulation (rigid body, constraints). Best performance possible (especially for moving objects)
      Query Only        : Only used for spatial queries (raycasts, sweeps, and overlaps). Cannot be used for simulation (rigid body, constraints). Useful for character movement and things that do not need physical simulation. Performance gains by keeping data out of simulation tree.
      Physics Only      : Only used only for physics simulation (rigid body, constraints). Cannot be used for spatial queries (raycasts, sweeps, overlaps). Useful for jiggly bits on characters that do not need per bone detection. Performance gains by keeping data out of query tree
      Collision Enabled : Can be used for both spatial queries (raycasts, sweeps, overlaps) and simulation (rigid body, constraints).]`
- `FName CollisionProfileName [Collision Profile Name *]`
- `FCollisionResponse CollisionResponses [Custom Channels for Responses]`
- `FVector CustomDOFPlaneNormal [Locks physical movement along a custom plane for a given normal.]`
- `float32 CustomSleepThresholdMultiplier [If the SleepFamily is set to custom, multiply the natural sleep threshold by this amount. A higher number will cause the body to sleep sooner.]`
- `EDOFMode DOFMode [Locks physical movement along specified axis.]`
- `uint8 GravityGroupIndex [What gravity group the BI should use, which determines rate of acceleration]`
- `FVector InertiaTensorScale [Per-instance scaling of inertia (bigger number means  it'll be harder to rotate)]`
- `float32 LinearDamping ['Drag' force added to reduce linear movement]`
- `float32 MassInKgOverride [Mass of the body in KG. By default we compute this based on physical material and mass scale.
@see bOverrideMass to set this directly]`
- `float32 MassScale [Per-instance scaling of mass]`
- `float32 MaxAngularVelocity [The maximum angular velocity for this instance [degrees/s]]`
- `float32 MaxDepenetrationVelocity [The maximum velocity used to depenetrate this object from others when spawned or teleported with initial overlaps (does not affect overlaps as a result of normal movement).
A value of zero will allow objects that are spawned overlapping to go to sleep without moving rather than pop out of each other. E.g., use zero if you spawn dynamic rocks
partially embedded in the ground and want them to be interactive but not pop out of the ground when touched.
A negative value is equivalent to bOverrideMaxDepenetrationVelocity = false, meaning use the project setting.
This overrides the CollisionInitialOverlapDepenetrationVelocity project setting on a per-body basis (and not the MaxDepenetrationVelocity solver setting that will be deprecated).]`
- `ECollisionChannel ObjectType [Enum indicating what type of object this should be considered as when it moves]`
- `UPhysicalMaterial PhysMaterialOverride [Allows you to override the PhysicalMaterial to use for simple collision on this body.]`
- `uint8 PositionSolverIterationCount [Override the project-settings position iteration count for this body (if bOverrideIterationCounts is set). Increasing this will be more CPU intensive, but better stabilized. 0 will lead to unresolved penetration and no static friction.]`
- `uint8 ProjectionSolverIterationCount [Override the project-settings projection iteration count for this body (if bOverrideIterationCounts is set). Usually 0 or 1.]`
- `ESleepFamily SleepFamily [The set of values used in considering when put this body to sleep.]`
- `float32 SolverAsyncDeltaTime [Override value for physics solver async delta time.  With multiple actors specifying this, the solver will use the smallest delta time *]`
- `float32 StabilizationThresholdMultiplier [Stabilization factor for this body if Physics stabilization is enabled. A higher number will cause more aggressive stabilization at the risk of loss of momentum at low speeds. A value of 0 will disable stabilization for this body.]`
- `uint8 VelocitySolverIterationCount [Override the project-settings velocity iteration count for this body (if bOverrideIterationCounts is set). Increasing this will be more CPU intensive, but better stabilized. 0 will lead to unresolved restitution and lower quality dynamic friction.]`
- `FWalkableSlopeOverride WalkableSlopeOverride [Custom walkable slope override setting for this instance.
@see GetWalkableSlopeOverride(), SetWalkableSlopeOverride()]`
- `bool bAllowPartialIslandSleep [[EXPERIMENTAL] If true Partial Island Sleeping is permitted for the entire island this body is in]`
- `bool bAutoWeld [If true and is attached to a parent, the two bodies will be joined into a single rigid body. Physical settings like collision profile and body settings are determined by the root]`
- `bool bEnableGravity [If object should have the force of gravity applied]`
- `bool bGenerateWakeEvents [Should 'wake/sleep' events fire when this object is woken up or put to sleep by the physics simulation.]`
- `bool bGyroscopicTorqueEnabled [Enabled/disables whether this body is affected by gyroscopic torque, mainly useful for long/thin objects that spin]`
- `bool bIgnoreAnalyticCollisions [If true ignore analytic collisions and treat objects as a general implicit surface]`
- `bool bInertiaConditioning [@brief Enable automatic inertia conditioning to stabilize constraints.

Inertia conditioning increases inertia when an object is long and thin and also when it has joints that are outside the
collision shapes of the body. Increasing the inertia reduces the amount of rotation applied at joints which helps stabilize
joint chains, especially when bodies are small. In principle you can get the same behaviour by setting the InertiaTensorScale
appropriately, but this takes some of the guesswork out of it.

@note This only changes the inertia used in the low-level solver. That inertia is not visible to the BodyInstance
which will still report the inertia calculated from the mass, shapes, and InertiaTensorScale.

@note When enabled, the effective inertia depends on the joints attached to the body so the inertia will change when
joints are added or removed (automatically - no user action required).]`
- `bool bLockRotation [When a Locked Axis Mode is selected, will lock rotation to the specified axis]`
- `bool bLockTranslation [When a Locked Axis Mode is selected, will lock translation on the specified axis]`
- `bool bLockXRotation [Lock rotation about the X-axis]`
- `bool bLockXTranslation [Lock translation along the X-axis]`
- `bool bLockYRotation [Lock rotation about the Y-axis]`
- `bool bLockYTranslation [Lock translation along the Y-axis]`
- `bool bLockZRotation [Lock rotation about the Z-axis]`
- `bool bLockZTranslation [Lock translation along the Z-axis]`
- `bool bNotifyRigidBodyCollision [Should 'Hit' events fire when this object collides during physics simulation.]`
- `bool bOneWayInteraction [If set to true, this body will treat bodies that do not have the flag set as having infinite mass]`
- `bool bOverrideIterationCounts [Enable per-body iterations counts]`
- `bool bOverrideMass [If true, mass will not be automatically computed and you must set it directly]`
- `bool bOverrideMaxAngularVelocity [Override the default max angular velocity]`
- `bool bOverrideMaxDepenetrationVelocity [Whether this body instance has its own custom MaxDepenetrationVelocity]`
- `bool bOverrideSolverAsyncDeltaTime [Set the desired delta time for the body. *]`
- `bool bOverrideWalkableSlopeOnInstance [Whether this instance of the object has its own custom walkable slope override setting.]`
- `bool bSimulatePhysics [If true, this body will use simulation. If false, will be 'fixed' (ie kinematic) and move where it is told.
For a Skeletal Mesh Component, simulating requires a physics asset setup and assigned on the SkeletalMesh asset.
For a Static Mesh Component, simulating requires simple collision to be setup on the StaticMesh asset.]`
- `bool bSmoothEdgeCollisions [Remove unnecessary edge collisions to allow smooth sliding over surfaces composed of multiple actors/components.
This is fairly expensive and should only be enabled on hero objects.]`
- `bool bStartAwake [If object should start awake, or if it should initially be sleeping]`
- `bool bUpdateKinematicFromSimulation [When kinematic, whether the actor transform should be updated as a result of movement in the simulation, rather than immediately whenever a target transform is set.]`
- `bool bUpdateMassWhenScaleChanges [If true, it will update mass when scale change *]`
- `bool bUseCCD [If true Continuous Collision Detection (CCD) will be used for this component]`
- `bool bUseMACD [[EXPERIMENTAL] If true Motion-Aware Collision Detection (MACD) will be used for this component]`


**方法**:

- `UBodySetup GetBodySetup() const`
- `bool Weld(FBodyInstance& TheirBody, FTransform TheirTM)`
- `UnWeld(FBodyInstance& TheirBI)`
- `SetUseCCD(bool bInUseCCD)`

---

