### UComboGraphCollisionComponent


Actor Component providing basic collision detection mechanism for registered meshes using traces.

It implements simple logic for hit detection not meant to replace more robust solutions such as Combat Components or AGR Pro (Combat Manager in v4).

Rather to provide a quick and easy way to handle collision for those not having or not willing to use aforementioned plugins, or not having a game-specific custom collision system already in place.

Registered meshes can be Static or Skeletal meshes, this component relies on Sockets attached to those primitives to draw traces for each socket.

No sub-stepping is involved, we simply draw traces for each frame checking for collisions between last frame position and current frame position for a given socket.

**属性**:

- `TArray<TSubclassOf<AActor>> ActorTypesToIgnore [List of Actor classes to ignore during hit collisions]`
- `TArray<FName> CollisionProfilesToIgnore [List of collision profile names to ignore during hit collision. Can be useful to ignore profile for capsule component and ensure hits only register against character meshes]`
- `ETraceTypeQuery CollisionTraceChannel [Trace channel to use when we perform collision traces (Default set to "Camera" for ease of use, but custom collision profiles can be used for further tuning)]`
- `float32 DebugDrawTime [In debug mode, this is the amount in seconds that visual debug traces will persist on screen]`
- `FComboGraphOnHitRegisteredDelegate__ComboGraphCollisionComponent OnHitRegistered [Delegate invoked when a successful hit is registered]`
- `FComboGraphSimpleDelegate__ComboGraphCollisionComponent OnTraceEnd [Delegate invoked when we end the collision tracing process on registered meshes]`
- `FComboGraphSimpleDelegate__ComboGraphCollisionComponent OnTraceStart [Delegate invoked when we start to check for collision traces on registered meshes]`
- `FLinearColor TraceColor [In debug mode, traces will be rendered on screen using this color]`
- `FLinearColor TraceHitColor [In debug mode, registered hits will be rendered on screen using this color]`
- `float32 TraceRadius [Radius of the sphere to sweep during collision traces]`
- `bool bAllowHitActorMultiTimes [允许Actor单帧被触发多次Hit]`
- `bool bDebug [If set to true, traces will be rendered on screen for a duration]`
- `bool bDebugOnClient [In debug mode, traces will be rendered on clients too even if they are only setup for server hits registration]`
- `bool bRegisterHitsOnClients [If set to true, hits will be registered on both server and clients]`
- `bool bShouldLogHits [If set to true, registered hits will be logged to console (successful hits or ignored ones due to configuration)]`
- `bool bTraceComplex [True to test against complex collision, false to test against simplified collision]`


**方法**:

- `RegisterCollisionMesh(UPrimitiveComponent InMesh)`  
  Use this method to push a Static or Skeletal mesh into the registered meshes to consider for collision checks.

Meant to be called at least once either on Owner's Actor BeginPlay or with this component OnComponentActivated event.
- `UnregisterCollisionMesh(UPrimitiveComponent InMesh)`  
  Use this method to remove a Static or Skeletal mesh from the registered meshes

---

