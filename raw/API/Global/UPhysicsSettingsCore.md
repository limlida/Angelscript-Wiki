### UPhysicsSettingsCore


Default physics settings.

**属性**:

- `float32 BounceThresholdVelocity [Minimum relative velocity required for an object to bounce. A typical value for simulation stability is about 0.2 * gravity]`
- `float32 ContactOffsetMultiplier [Contact offset multiplier. When creating a physics shape we look at its bounding volume and multiply its minimum value by this multiplier. A bigger number will generate contact points earlier which results in higher stability at the cost of performance.]`
- `float32 DefaultFluidFriction [Default fluid friction for Physics Volumes.]`
- `float32 DefaultGravityZ [Default gravity.]`
- `ECollisionTraceFlag DefaultShapeComplexity [Determines the default physics shape complexity.]`
- `float32 DefaultTerminalVelocity [Default terminal velocity for Physics Volumes.]`
- `EFrictionCombineMode FrictionCombineMode [Friction combine mode, controls how friction is computed for multiple materials.]`
- `float32 MaxAngularVelocity [Max angular velocity that a simulated object can achieve.]`
- `float32 MaxContactOffset [Max Contact offset.]`
- `float32 MaxDepenetrationVelocity [Max velocity which may be used to depenetrate simulated physics objects. 0 means no maximum.]`
- `float32 MinContactOffset [Min Contact offset.]`
- `int RagdollAggregateThreshold [Threshold for ragdoll bodies above which they will be added to an aggregate before being added to the scene]`
- `EFrictionCombineMode RestitutionCombineMode [Restitution combine mode, controls how restitution is computed for multiple materials.]`
- `int SimulateScratchMemorySize [Amount of memory to reserve for PhysX simulate(), this is per pxscene and will be rounded up to the next 16K boundary]`
- `FChaosSolverConfiguration SolverOptions [Options to apply to Chaos solvers on creation]`
- `float32 TriangleMeshTriangleMinAreaThreshold [Triangles from triangle meshes (BSP) with an area less than or equal to this value will be removed from physics collision data. Set to less than 0 to disable.]`
- `bool bEnable2DPhysics [Can 2D physics be used (Box2D)?]`
- `bool bEnableEnhancedDeterminism [If set to true, the scene will use enhanced determinism at the cost of a bit more resources. See eENABLE_ENHANCED_DETERMINISM to learn about the specifics]`
- `bool bEnablePCM [Enables persistent contact manifolds. This will generate fewer contact points, but with more accuracy. Reduces stability of stacking, but can help energy conservation.]`
- `bool bEnableShapeSharing [Enables shape sharing between sync and async scene for static rigid actors]`
- `bool bEnableStabilization [Enables stabilization of contacts for slow moving bodies. This will help improve the stability of stacking.]`
- `bool bSimulateSkeletalMeshOnDedicatedServer [If true, simulate physics for this component on a dedicated server.
This should be set if simulating physics and replicating with a dedicated server.]`
- `bool bWarnMissingLocks [Whether to warn when physics locks are used incorrectly. Turning this off is not recommended and should only be used by very advanced users.]`

---

