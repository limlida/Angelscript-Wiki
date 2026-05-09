### UCableComponent


Component that allows you to specify custom triangle mesh geometry

**属性**:

- `FComponentReference AttachEndTo [Actor or Component that the defines the end position of the cable]`
- `FName AttachEndToSocketName [Socket name on the AttachEndTo component to attach to]`
- `FVector CableForce [Force vector (world space) applied to all particles in cable.]`
- `float32 CableGravityScale [Scaling applied to world gravity affecting this cable.]`
- `float32 CableLength [Rest length of the cable]`
- `float32 CableWidth [How wide the cable geometry is]`
- `float32 CollisionFriction [If collision is enabled, control how much sliding friction is applied when cable is in contact.]`
- `FVector EndLocation [End location of cable, relative to AttachEndTo (or AttachEndToSocketName) if specified, otherwise relative to cable component.]`
- `int NumSegments [How many segments the cable has]`
- `int NumSides [Number of sides of the cable geometry]`
- `int SolverIterations [The number of solver iterations controls how 'stiff' the cable is]`
- `float32 SubstepTime [Controls the simulation substep time for the cable]`
- `float32 TeleportDistanceThreshold [Conduct teleportation if the movement of either fixed end point of the cable is greater than this threshold in 1 frame.
Zero or negative values will skip the check.]`
- `float32 TeleportRotationThreshold [Rotation threshold in degrees.
Conduct teleportation if the cable's rotation is greater than this threshold in 1 frame.
Zero or negative values will skip the check.]`
- `float32 TileMaterial [How many times to repeat the material along the length of the cable]`
- `bool bAttachEnd [Should we fix the end to something (using AttachEndTo and EndLocation), or leave it free.
If false, AttachEndTo and EndLocation are just used for initial location of end of cable]`
- `bool bAttachStart [Should we fix the start to something, or leave it free.
If false, component transform is just used for initial location of start of cable]`
- `bool bEnableCollision [EXPERIMENTAL. Perform sweeps for each cable particle, each substep, to avoid collisions with the world.
Uses the Collision Preset on the component to determine what is collided with.
This greatly increases the cost of the cable simulation.]`
- `bool bEnableStiffness [Add stiffness constraints to cable.]`
- `bool bResetAfterTeleport [Always reset cable particle positions and velocities on a teleport.]`
- `bool bSkipCableUpdateWhenNotOwnerRecentlyRendered`
- `bool bSkipCableUpdateWhenNotVisible`
- `bool bTeleportAfterReattach [Teleport the cable particles on reattaching any end of the cable.]`
- `bool bUseSubstepping [When false, will still wait for SubstepTime to elapse before updating, but will only run the cable simulation once using all of accumulated simulation time]`


**方法**:

- `AActor GetAttachedActor() const`  
  Gets the Actor that the cable is attached to *
- `USceneComponent GetAttachedComponent() const`  
  Gets the specific USceneComponent that the cable is attached to *
- `GetCableParticleLocations(TArray<FVector>& Locations) const`  
  Get array of locations of particles (in world space) making up the cable simulation.
- `SetAttachEndTo(AActor Actor, FName ComponentProperty, FName SocketName = NAME_None)`  
  Attaches the end of the cable to a specific Component within an Actor *
- `SetAttachEndToComponent(USceneComponent Component, FName SocketName = NAME_None)`  
  Attaches the end of the cable to a specific Component *

---

