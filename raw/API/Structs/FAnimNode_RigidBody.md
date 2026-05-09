### FAnimNode_RigidBody


Controller that simulates physics based on the physics asset of the skeletal mesh component

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FBoneReference BaseBoneRef [Matters if SimulationSpace is BaseBone]`
- `float32 CachedBoundsScale [Scale of cached bounds (vs. actual bounds).
Increasing this may improve performance, but overlaps may not work as well.
(A value of 1.0 effectively disables cached bounds).]`
- `FVector ComponentAppliedLinearAccClamp [When using non-world-space sim, this is an overall clamp on acceleration derived from ComponentLinearAccScale and ComponentLinearVelScale, to ensure it is not too large.]`
- `FVector ComponentLinearAccScale [When using non-world-space sim, this controls how much of the components world-space acceleration is passed on to the local-space simulation.]`
- `FVector ComponentLinearVelScale [When using non-world-space sim, this applies a 'drag' to the bodies in the local space simulation, based on the components world-space velocity.]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `float32 EvaluationResetTime [If the node is not evaluated for this amount of time (seconds), either because a lower LOD was in use for a while or the component was
not visible, reset the simulation to the default pose on the next evaluation. Set to 0 to disable time-based reset.]`
- `FVector ExternalForce [Applies a uniform external force in world space. This allows for easily faking inertia of movement while still simulating in component space for example]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `ECollisionChannel OverlapChannel [The channel we use to find static geometry to collide with]`
- `UPhysicsAsset OverridePhysicsAsset [Physics asset to use. If empty use the skeletal mesh's default physics asset in case Default To Skeletal Mesh Physics Asset is set to True.]`
- `FVector OverrideWorldGravity [Override gravity]`
- `FSimSpaceSettings SimSpaceSettings [Settings for the system which passes motion of the simulation's space
into the simulation. This allows the simulation to pass a
fraction of the world space motion onto the bodies which allows Bone-Space
and Component-Space simulations to react to world-space movement in a
controllable way.
This system is a superset of the functionality provided by ComponentLinearAccScale,
ComponentLinearVelScale, and ComponentAppliedLinearAccClamp. In general
you should not have both systems enabled.]`
- `ESimulationSpace SimulationSpace [What space to simulate the bodies in. This affects how velocities are generated]`
- `ESimulationTiming SimulationTiming [Whether the physics simulation runs synchronously with the node's evaluation or is run in the background until the next frame.]`
- `float32 WorldSpaceMinimumScale [For world-space simulations, if the magnitude of the component's 3D scale is less than WorldSpaceMinimumScale, do not update the node.]`
- `bool bAlphaBoolEnabled`
- `bool bClampLinearTranslationLimitToRefPose [Correct for linear tearing on bodies with all axes Locked.
This only works if all axes linear translation are locked]`
- `bool bDefaultToSkeletalMeshPhysicsAsset [Use the skeletal mesh physics asset as default in case set to True. The Override Physics Asset will always have priority over this.]`
- `bool bEnableWorldGeometry`
- `bool bForceDisableCollisionBetweenConstraintBodies [Whether to allow collisions between two bodies joined by a constraint]`
- `bool bFreezeIncomingPoseOnStart [When simulation starts, freeze incoming pose.
This is useful for ragdolls, when we want the simulation to take over.
It prevents non simulated bones from animating.]`
- `bool bOverrideWorldGravity`
- `bool bTransferBoneVelocities [When simulation starts, transfer previous bone velocities (from animation)
to make transition into simulation seamless.]`
- `bool bUseDefaultAsSimulated [Treat parts in the Physics Asset with PhysicsType Default as Simulated for RBAN.]`
- `bool bUseExternalClothCollision [If true, kinematic objects will be added to the simulation at runtime to represent any cloth colliders defined for the parent object.]`
- `bool bUseLocalLODThresholdOnly [Enable if you want to ignore the p.RigidBodyLODThreshold CVAR and force the node to solely use the LOD threshold.]`


**方法**:

- `FAnimNode_RigidBody& opAssign(FAnimNode_RigidBody Other)`

---

