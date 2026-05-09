### FAnimNode_AnimDynamics


**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `float32 AngularBiasOverride [Overridden angular bias value
Angular bias is essentially a twist reduction for chain forces and defaults to a value to keep chains stability
in check. When using single-body systems sometimes angular forces will look like they are "catching-up" with
the mesh, if that's the case override this and push it towards 1.0f until it settles correctly]`
- `float32 AngularDampingOverride [Overridden angular damping value. The default is 0.7. Values below 0.7 won't have an effect.]`
- `float32 AngularSpringConstant [Spring constant to use when calculating angular springs, higher values mean a stronger spring.
You need to enable the Angular Spring checkbox for this to have an effect.
Note: Make sure to also set the Angular Target Axis and Angular Target in the Constraint Setup for this to have an effect.]`
- `FBoneReference BoundBone [The bone to attach the physics body to, if bChain is true this is the top of the chain]`
- `FBoneReference ChainEnd [If bChain is true this is the bottom of the chain, otherwise ignored]`
- `FVector ComponentAppliedLinearAccClamp [When using non-world-space sim, this is an overall clamp on acceleration derived from ComponentLinearAccScale and ComponentLinearVelScale, to ensure it is not too large.]`
- `FVector ComponentLinearAccScale [When using non-world-space sim, this controls how much of the components world-space acceleration is passed on to the local-space simulation.]`
- `FVector ComponentLinearVelScale [When using non-world-space sim, this applies a 'drag' to the bodies in the local space simulation, based on the components world-space velocity.]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `FVector ExternalForce [An external force to apply to all bodies in the simulation when ticked, specified in world space]`
- `FVector GravityOverride [Gravity Override Value]`
- `float32 GravityScale [Scale for gravity, higher values increase forces due to gravity]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 LinearDampingOverride [Overridden linear damping value. The default is 0.7. Values below 0.7 won't have an effect.]`
- `float32 LinearSpringConstant [Spring constant to use when calculating linear springs, higher values mean a stronger spring.
You need to enable the Linear Spring checkbox for this to have an effect.]`
- `int NumSolverIterationsPostUpdate [Number of update passes on the linear and angular limits after we solve the position of the bodies, recommended to be around a quarter of NumSolverIterationsPreUpdate]`
- `int NumSolverIterationsPreUpdate [Number of update passes on the linear and angular limits before we solve the position of the bodies recommended to be four times the value of NumSolverIterationsPostUpdate]`
- `TArray<FAnimPhysBodyDefinition> PhysicsBodyDefinitions []`
- `TArray<FAnimPhysPlanarLimit> PlanarLimits [List of available planar limits for this node]`
- `FBoneReference RelativeSpaceBone [When in BoneRelative sim space, the simulation will use this bone as the origin]`
- `FRotationRetargetingInfo RetargetingSettings [The settings for rotation retargeting]`
- `FAnimPhysSimSpaceSettings SimSpaceSettings [Settings for the system which passes motion of the simulation's space
into the simulation. This allows the simulation to pass a
fraction of the world space motion onto the bodies which allows Bone-Space
and Component-Space simulations to react to world-space movement in a
controllable way.
This system is a superset of the functionality provided by ComponentLinearAccScale,
ComponentLinearVelScale, and ComponentAppliedLinearAccClamp. In general
you should not have both systems enabled.]`
- `AnimPhysSimSpaceType SimulationSpace [The space used to run the simulation]`
- `TArray<FAnimPhysSphericalLimit> SphericalLimits [List of available spherical limits for this node]`
- `float32 WindScale [Scale to apply to calculated wind velocities in the solver]`
- `bool bAlphaBoolEnabled`
- `bool bAngularSpring [If true the body will attempt to align itself with the specified angular target]`
- `bool bChain [Set to true to use the solver to simulate a connected chain]`
- `bool bDoEval [If true we will perform bone transform evaluation, otherwise skip - allows visualization of the initial anim state compared to the physics sim]`
- `bool bDoUpdate [If true we will perform physics update, otherwise skip - allows visualization of the initial state of the bodies]`
- `bool bEnableWind [Whether or not wind is enabled for the bodies in this simulation]`
- `bool bGravityOverrideInSimSpace [If true the gravity override value is defined in simulation space, by default it is in world space]`
- `bool bLinearSpring [If true the body will attempt to spring back to its initial position]`
- `bool bOverrideAngularBias [If true, the override value will be used for the angular bias for bodies in this node.
Angular bias is essentially a twist reduction for chain forces and defaults to a value to keep chains stability
in check. When using single-body systems sometimes angular forces will look like they are "catching-up" with
the mesh, if that's the case override this and push it towards 1.0f until it settles correctly]`
- `bool bOverrideAngularDamping [If true, the override value will be used for angular damping]`
- `bool bOverrideLinearDamping [If true, the override value will be used for linear damping]`
- `bool bUseGravityOverride [Use gravity override value vs gravity scale]`
- `bool bUsePlanarLimit [Whether to evaluate planar limits]`
- `bool bUseSphericalLimits [Whether to evaluate spherical limits]`


**方法**:

- `FAnimNode_AnimDynamics& opAssign(FAnimNode_AnimDynamics Other)`

---

