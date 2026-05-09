### USkeletalMeshComponent


SkeletalMeshComponent is used to create an instance of an animated SkeletalMesh asset.

@see https://docs.unrealengine.com/latest/INT/Engine/Content/Types/SkeletalMeshes/
@see USkeletalMesh

**属性**:

- `UAnimBlueprintGeneratedClass AnimBlueprintGeneratedClass []`
- `TSubclassOf<UAnimInstance> AnimClass [The AnimBlueprint class to use. Use 'SetAnimInstanceClass' to change at runtime.]`
- `FSingleAnimationPlayData AnimationData`
- `EAnimationMode AnimationMode [Whether to use Animation Blueprint or play Single Animation Asset.]`
- `float32 ClothBlendWeight [weight to blend between simulated results and key-framed positions
if weight is 1.0, shows only cloth simulation results and 0.0 will show only skinned results]`
- `float32 ClothGeometryScale [This scale is applied to all cloth geometry (e.g., cloth meshes and collisions) in order to simulate in a different scale space than world.This scale is not applied to distance-based simulation parameters such as MaxDistance.
This property is currently only read by the cloth solver when creating cloth actors, but may become animatable in the future.]`
- `float32 ClothMaxDistanceScale`
- `EClothingTeleportMode ClothTeleportMode [whether we need to teleport cloth. // This property is explicitly hidden from the details panel inside FSkeletalMeshComponentDetails::UpdatePhysicsCategory]`
- `float32 ClothVelocityScale [Scale applied to the component induced velocity of all cloth particles prior to stepping the cloth solver.
Use 1.0 for fully induced velocity (default), or use 0.0 for no induced velocity, and any other values in between for a reduced induced velocity.
When set to 0.0, it also provides a way to force the clothing to simulate in local space.
This value multiplies to individual cloth's velocity scale settings, still allowing for differences in behavior between the various pieces of clothing within the same component.]`
- `TSoftObjectPtr<UObject> DefaultAnimatingRigOverride [Default Animating Rig to Use if bOverrideDefaultAnimatingRig is true]`
- `float32 GlobalAnimRateScale [Used to scale speed of all animations on this skeletal mesh.]`
- `EKinematicBonesUpdateToPhysics KinematicBonesUpdateType [If we are running physics, should we update non-simulated bones based on the animation bone positions.]`
- `FOnAnimInitialized OnAnimInitialized [Broadcast when the components anim instance is initialized]`
- `FConstraintBrokenSignature OnConstraintBroken [Notification when constraint is broken.]`
- `FPlasticDeformationEventSignature OnPlasticDeformation [Notification when constraint plasticity drive target changes.]`
- `EPhysicsTransformUpdateMode PhysicsTransformUpdateMode [Whether physics simulation updates component transform.]`
- `int PostProcessAnimBPLODThreshold [* Max LOD level that post-process AnimBPs are evaluated. Overrides the setting of the same name on the skeletal mesh.
* For example if you have the threshold set to 2, it will evaluate until including LOD 2 (based on 0 index). In case the LOD level gets set to 3, it will stop evaluating the post-process AnimBP.
* Setting it to -1 will always evaluate it and disable LODing overrides for this component.]`
- `float32 TeleportDistanceThreshold [Conduct teleportation if the character's movement is greater than this threshold in 1 frame.
Zero or negative values will skip the check.
You can also do force teleport manually using ForceNextUpdateTeleport() / ForceNextUpdateTeleportAndReset().]`
- `float32 TeleportRotationThreshold [Rotation threshold in degrees, ranging from 0 to 180.
Conduct teleportation if the character's rotation is greater than this threshold in 1 frame.
Zero or negative values will skip the check.]`
- `bool bAllowAnimCurveEvaluation [Disable animation curves for this component. If this is set true, no curves will be processed]`
- `bool bAllowClothActors [Toggles creation of cloth simulation. Distinct from the simulation toggle below in that, if off, avoids allocating
the actors entirely instead of just skipping the simulation step.]`
- `bool bCollideWithAttachedChildren [can't collide with part of attached children if total collision volumes exceed 16 capsules or 32 planes per convex]`
- `bool bCollideWithEnvironment [can't collide with part of environment if total collision volumes exceed 16 capsules or 32 planes per convex]`
- `bool bDeferKinematicBoneUpdate [Whether animation and world transform updates are deferred. If this is on, the kinematic bodies (scene query data) will not update until the next time the physics simulation is run]`
- `bool bDisableClothSimulation [Disable cloth simulation and play original animation without simulation]`
- `bool bDisablePostProcessBlueprint [Controls whether or not this component will evaluate its post process instance. The post-process
Instance is dictated by the skeletal mesh so this is used for per-instance control.]`
- `bool bDisableRigidBodyAnimNode [Disable rigid body animation nodes and play original animation without simulation]`
- `bool bEnableAnimation [Whether the built-in animation of this component should run when the component ticks.
It is assumed that if this is false then some external system will be animating this mesh.
Note that disabling animation will also cause cloth simulation not to run and the component's tick to run on any thread.]`
- `bool bEnablePerPolyCollision [Uses skinned data for collision data.]`
- `bool bEnablePhysicsOnDedicatedServer [If true, simulate physics for this component on a dedicated server.
This should be set if simulating physics and replicating with a dedicated server.
    Note: This property cannot be changed at runtime.]`
- `bool bForceCollisionUpdate [Forces the cloth simulation to constantly update its external collisions, at the expense of performance.
This will help to prevent missed collisions if the cloth's skeletal mesh component isn't moving,
and when instead, wind or other moving objects are causing new collision shapes to come into the cloth's vicinity.]`
- `bool bNoSkeletonUpdate [Skips Ticking and Bone Refresh.]`
- `bool bOverrideDefaultAnimatingRig [If true, DefaultAnimatingRigOverride will be used. If false, use the DefaultAnimatingRig in the SkeletalMesh]`
- `bool bPauseAnims [pauses this component's animations (doesn't tick them, but still refreshes bones)]`
- `bool bPropagateCurvesToFollowers [If true, propagates calls to ApplyAnimationCurvesToComponent for follower components, only needed if follower components do not tick themselves]`
- `bool bResetAfterTeleport [reset the clothing after moving the clothing position (called teleport)]`
- `bool bSkipBoundsUpdateWhenInterpolating [Whether to skip bounds update when interpolating. Bounds are updated to the target interpolation pose only on ticks when they are evaluated.]`
- `bool bSkipKinematicUpdateWhenInterpolating [Whether to skip UpdateKinematicBonesToAnim() when interpolating. Kinematic bones are updated to the target interpolation pose only on ticks when they are evaluated.]`
- `bool bUpdateAnimationInEditor [If true, this will Tick until disabled]`
- `bool bUpdateClothInEditor [If true, will play cloth in editor]`
- `bool bUpdateJointsFromAnimation [If we should pass joint position to joints each frame, so that they can be used by motorized joints to drive the
ragdoll based on the animation.]`
- `bool bUpdateMeshWhenKinematic [If true, then the physics bodies will be used to drive the skeletal mesh even when they are
kinematic (not simulating), otherwise the skeletal mesh will be driven by the animation input
when the bodies are kinematic]`
- `bool bUpdateOverlapsOnAnimationFinalize [Controls whether blending in physics bones will refresh overlaps on this component, defaults to true but can be disabled in cases where we know anim->physics blending doesn't meaningfully change overlaps]`
- `bool bUseRefPoseOnInitAnim [On InitAnim should we set to ref pose (if false use first tick of animation data). If enabled, takes precedence over UAnimationSettings::bTickAnimationOnSkeletalMeshInit]`
- `bool bWaitForParallelClothTask [Whether we should stall the Cloth tick task until the cloth simulation is complete. This is required if we want up-to-date
cloth data on the game thread, for example if we want to generate particles at cloth vertices.]`


**方法**:

- `TArray<UAnimInstance> GetLinkedAnimInstances() const`
- `AccumulateAllBodiesBelowPhysicsBlendWeight(FName InBoneName, float32 AddPhysicsBlendWeight, bool bSkipCustomPhysicsType = false)`  
  Accumulate AddPhysicsBlendWeight to physics blendweight for all of the bones below passed in bone to be simulated
- `AddClothCollisionSource(USkeletalMeshComponent InSourceComponent, UPhysicsAsset InSourcePhysicsAsset)`  
  Add a collision source for the cloth on this component.
Each cloth tick, the collision defined by the physics asset, transformed by the bones in the source
component, will be applied to cloth.
@param       InSourceComponent               The component to extract collision transforms from
@param       InSourcePhysicsAsset    The physics asset that defines the collision primitives (that will be transformed by InSourceComponent's bones)
- `AddForceToAllBodiesBelow(FVector Force, FName BoneName = NAME_None, bool bAccelChange = false, bool bIncludeSelf = true)`  
  Add a force to all rigid bodies below.
This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.

@param  Force            Force vector to apply. Magnitude indicates strength of force.
@param  BoneName         If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body.
@param  bAccelChange If true, Force is taken as a change in acceleration instead of a physical force (i.e. mass will have no effect).
@param  bIncludeSelf If false, Force is only applied to bodies below but not given bone name.
- `AddImpulseToAllBodiesBelow(FVector Impulse, FName BoneName = NAME_None, bool bVelChange = false, bool bIncludeSelf = true)`  
  Add impulse to all single rigid bodies below. Good for one time instant burst.

@param  Impulse         Magnitude and direction of impulse to apply.
@param  BoneName        If a SkeletalMeshComponent, name of body to apply impulse to. 'None' indicates root body.
@param  bVelChange      If true, the Strength is taken as a change in velocity instead of an impulse (ie. mass will have no effect).
@param bIncludeSelf If false, Force is only applied to bodies below but not given bone name.
- `AllowAnimCurveEvaluation(FName NameOfCurve, bool bAllow)`
- `BindClothToLeaderPoseComponent()`  
  If this component has a valid LeaderPoseComponent then this function makes cloth items on the follower component
take the transforms of the cloth items on the leader component instead of simulating separately.
@Note This will FORCE any cloth actor on the leader component to simulate in local space. Also
The meshes used in the components must be identical for the cloth to bind correctly
- `BreakConstraint(FVector Impulse, FVector HitLocation, FName InBoneName)`  
  Break a constraint off a Gore mesh.

@param       Impulse vector of impulse
@param       HitLocation     location of the hit
@param       InBoneName      Name of bone to break constraint for
- `ClearMorphTargets()`  
  Clear all Morph Target that are set to this mesh
- `FName FindConstraintBoneName(int ConstraintIndex)`  
  Find Constraint Name from index

@param       ConstraintIndex Index of constraint to look for
@return      Constraint Joint Name
- `ForceClothNextUpdateTeleport()`  
  Used to indicate we should force 'teleport' during the next call to UpdateClothState,
This will transform positions and velocities and thus keep the simulation state, just translate it to a new pose.
- `ForceClothNextUpdateTeleportAndReset()`  
  Used to indicate we should force 'teleport and reset' during the next call to UpdateClothState.
This can be used to reset it from a bad state or by a teleport where the old state is not important anymore.
- `bool GetAllowClothActors() const`
- `bool GetAllowedAnimCurveEvaluate() const`
- `bool GetAllowRigidBodyAnimNode() const`
- `EAnimationMode GetAnimationMode() const`
- `UAnimInstance GetAnimInstance() const`  
  Returns the animation instance that is driving the class (if available). This is typically an instance of
the class set as AnimBlueprintGeneratedClass (generated by an animation blueprint)
Since this instance is transient, it is not safe to be used during construction script
- `FVector GetBoneLinearVelocity(FName InBoneName)`
- `float32 GetBoneMass(FName BoneName = NAME_None, bool bScaleMass = true) const`  
  Returns the mass (in kg) of the given bone

@param BoneName         Name of the body to return. 'None' indicates root body.
@param bScaleMass       If true, the mass is scaled by the bone's MassScale.
- `UClothingSimulationInteractor GetClothingSimulationInteractor(FName ClothingAssetName = NAME_None) const`  
  Get the interactor for a clothing simulation, if that simulation supports runtime interaction.
@param ClothingDataName the name of a clothing data that determines the simulation, or NAME_None to get the interactor of the first registered simulation if any.
@note Using NAME_None when there are clothing data of different types on the Skeletal Mesh asset will cause a warning.
- `float32 GetClothMaxDistanceScale() const`  
  Get/Set the max distance scale of clothing mesh vertices
- `FConstraintInstanceAccessor GetConstraintByName(FName ConstraintName, bool bIncludesTerminated)`  
  Gets a constraint by its name
@param ConstraintName         name of the constraint
@param IncludesTerminated whether or not to return a terminated constraint
- `GetConstraints(bool bIncludesTerminated, TArray<FConstraintInstanceAccessor>& OutConstraints)`  
  Gets all the constraints
@param IncludesTerminated whether or not to return terminated constraints
@param OutConstraints returned list of constraints matching the parameters
- `GetConstraintsFromBody(FName BodyName, bool bParentConstraints, bool bChildConstraints, bool bIncludesTerminated, TArray<FConstraintInstanceAccessor>& OutConstraints)`  
  Gets all the constraints attached to a body
@param BodyName name of the body to get the attached constraints from
@param bParentConstraints return constraints where BodyName is the child of the constraint
@param bChildConstraints return constraints where BodyName is the parent of the constraint
@param bParentConstraints return constraints attached to the parent of the body
@param IncludesTerminated whether or not to return terminated constraints
@param OutConstraints returned list of constraints matching the parameters
- `GetCurrentJointAngles(FName InBoneName, float32& Swing1Angle, float32& TwistAngle, float32& Swing2Angle)`  
  Gets the current Angular state for a named bone constraint
@param InBoneName  Name of bone to get constraint ranges for
@param Swing1Angle current angular state of the constraint
@param TwistAngle  current angular state of the constraint
@param Swing2Angle current angular state of the constraint
- `bool GetCurveValue(FName CurveName, float32 DefaultValue, float32& Value) const`  
  Get curve value
@param CurveName Name of the curve to retrieve
@param DefaultValue In case the curve could not be found
@param Value Retrieved curve value if found, otherwise is set to DefaultValue
@return Whether the curve was successfully retrieved
- `TSoftObjectPtr<UObject> GetDefaultAnimatingRig() const`
- `TSoftObjectPtr<UObject> GetDefaultAnimatingRigOverride() const`
- `bool GetDisableAnimCurves() const`
- `bool GetDisablePostProcessBlueprint() const`  
  Gets whether the post process blueprint is currently disabled for this component
- `bool GetFloatAttribute(FName BoneName, FName AttributeName, float32 DefaultValue, float32& OutValue, ECustomBoneAttributeLookup LookupType = ECustomBoneAttributeLookup :: BoneOnly)`  
  Get float type attribute value.

@param BoneName Name of the bone to retrieve try and retrieve the attribute from
@param AttributeName Name of the attribute to retrieve
@param DefaultValue In case the attribute could not be found
@param OutValue Retrieved attribute value if found, otherwise is set to DefaultValue
@param LookupType Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)
@return Whether or not the atttribute was successfully retrieved
- `bool GetFloatAttribute_Ref(FName BoneName, FName AttributeName, float32& OutValue, ECustomBoneAttributeLookup LookupType = ECustomBoneAttributeLookup :: BoneOnly)`  
  Get float type attribute value.

@param BoneName Name of the bone to retrieve try and retrieve the attribute from
@param AttributeName Name of the attribute to retrieve
@param OutValue (reference) Retrieved attribute value if found, otherwise is set to DefaultValue
@param LookupType Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)
@return Whether or not the atttribute was successfully retrieved
- `bool GetIntegerAttribute(FName BoneName, FName AttributeName, int DefaultValue, int& OutValue, ECustomBoneAttributeLookup LookupType = ECustomBoneAttributeLookup :: BoneOnly)`  
  Get integer type attribute value.

@param BoneName Name of the bone to retrieve try and retrieve the attribute from
@param AttributeName Name of the attribute to retrieve
@param DefaultValue In case the attribute could not be found
@param OutValue Retrieved attribute value if found, otherwise is set to DefaultValue
@param LookupType Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)
@return Whether or not the atttribute was successfully retrieved
- `bool GetIntegerAttribute_Ref(FName BoneName, FName AttributeName, int& OutValue, ECustomBoneAttributeLookup LookupType = ECustomBoneAttributeLookup :: BoneOnly)`  
  Get integer type attribute value.

@param BoneName Name of the bone to retrieve try and retrieve the attribute from
@param AttributeName Name of the attribute to retrieve
@param OutValue (reference) Retrieved attribute value if found, otherwise is set to DefaultValue
@param LookupType Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)
@return Whether or not the atttribute was successfully retrieved
- `UAnimInstance GetLinkedAnimGraphInstanceByTag(FName InTag) const`  
  Returns the a tagged linked instance node. If no linked instances are found or none are tagged with the
supplied name, this will return NULL.
- `UAnimInstance GetLinkedAnimLayerInstanceByClass(TSubclassOf<UAnimInstance> InClass) const`  
  Gets the first layer linked instance corresponding to the specified class
- `UAnimInstance GetLinkedAnimLayerInstanceByGroup(FName InGroup) const`  
  Gets the layer linked instance corresponding to the specified group
- `float32 GetMorphTarget(FName MorphTargetName) const`  
  Get Morph target with given name
- `float32 GetPlayRate() const`  
  Animation play functions
      *
      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
      * Because of that reason, it is not safe to be used during construction script
      * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized
- `float32 GetPosition() const`  
  Animation play functions
      *
      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
      * Because of that reason, it is not safe to be used during construction script
      * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized
- `UAnimInstance GetPostProcessInstance() const`  
  Returns the active post process instance is one is available. This is set on the mesh that this
component is using, and is evaluated immediately after the main instance.
- `FVector GetSkeletalCenterOfMass() const`  
  Returns the center of mass of the skeletal mesh, instead of the root body's location
- `USkeletalMesh GetSkeletalMeshAsset() const`  
  Get the SkeletalMesh rendered for this mesh.
- `bool GetStringAttribute(FName BoneName, FName AttributeName, FString DefaultValue, FString& OutValue, ECustomBoneAttributeLookup LookupType = ECustomBoneAttributeLookup :: BoneOnly)`  
  Get string type attribute value.

@param BoneName Name of the bone to retrieve try and retrieve the attribute from
@param AttributeName Name of the attribute to retrieve
@param DefaultValue In case the attribute could not be found
@param OutValue Retrieved attribute value if found, otherwise is set to DefaultValue
@param LookupType Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)
@return Whether or not the atttribute was successfully retrieved
- `bool GetStringAttribute_Ref(FName BoneName, FName AttributeName, FString& OutValue, ECustomBoneAttributeLookup LookupType = ECustomBoneAttributeLookup :: BoneOnly)`  
  Get string type attribute value.

@param BoneName Name of the bone to retrieve try and retrieve the attribute from
@param AttributeName Name of the attribute to retrieve
@param OutValue (reference) Retrieved attribute value if found, otherwise is set to DefaultValue
@param LookupType Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)
@return Whether or not the atttribute was successfully retrieved
- `float32 GetTeleportDistanceThreshold() const`  
  Gets the teleportation distance threshold.

@return Threshold value.
- `float32 GetTeleportRotationThreshold() const`  
  Gets the teleportation rotation threshold.

@return Threshold in degrees.
- `bool GetTransformAttribute(FName BoneName, FName AttributeName, FTransform DefaultValue, FTransform& OutValue, ECustomBoneAttributeLookup LookupType = ECustomBoneAttributeLookup :: BoneOnly)`  
  Get FTransform type attribute value.

@param BoneName Name of the bone to retrieve try and retrieve the attribute from
@param AttributeName Name of the attribute to retrieve
@param OutValue (reference) Retrieved attribute value if found, otherwise is set to DefaultValue
@param LookupType Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)
@return Whether or not the atttribute was successfully retrieved
- `bool GetTransformAttribute_Ref(FName BoneName, FName AttributeName, FTransform& OutValue, ECustomBoneAttributeLookup LookupType = ECustomBoneAttributeLookup :: BoneOnly)`  
  Get FTransform type attribute value.

@param BoneName Name of the bone to retrieve try and retrieve the attribute from
@param AttributeName Name of the attribute to retrieve
@param OutValue (reference) Retrieved attribute value if found, otherwise is set to DefaultValue
@param LookupType Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)
@return Whether or not the atttribute was successfully retrieved
- `bool HasValidAnimationInstance() const`  
  Returns whether there are any valid instances to run, currently this means whether we have
have an animation instance or a post process instance available to process.
- `bool IsBodyGravityEnabled(FName BoneName)`  
  Checks whether or not gravity is enabled on the given bone.
NAME_None indicates the root body should be queried.
If the bone name given is otherwise invalid, false is returned.

@param BoneName The name of the bone to check.
@return True if gravity is enabled on the bone.
- `bool IsClothingSimulationSuspended() const`  
  Gets whether or not the clothing simulation is currently suspended
- `bool IsPlaying() const`  
  Animation play functions
      *
      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
      * Because of that reason, it is not safe to be used during construction script
      * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized
- `bool GetClosestPointOnPhysicsAsset(FVector WorldPosition, FVector& ClosestWorldPosition, FVector& Normal, FName& BoneName, float32& Distance) const`  
  Given a world position, find the closest point on the physics asset. Note that this is independent of collision and welding. This is based purely on animation position
@param      WorldPosition                           The point we want the closest point to (i.e. for all bodies in the physics asset, find the one that has a point closest to WorldPosition)
@param      ClosestPointOnPhysicsAsset      The data associated with the closest point (position, normal, etc...)
@return     true if we found a closest point
- `LinkAnimClassLayers(TSubclassOf<UAnimInstance> InClass)`  
  Runs through all layer nodes, attempting to find layer nodes that are implemented by the specified class, then sets up a linked instance of the class for each.
Allocates one linked instance to run each of the groups specified in the class, so state is shared. If a layer is not grouped (ie. NAME_None), then state is not shared
and a separate linked instance is allocated for each layer node.
If InClass is null, then all layers are reset to their defaults.
- `LinkAnimGraphByTag(FName InTag, TSubclassOf<UAnimInstance> InClass)`  
  Runs through all nodes, attempting to find linked instance by name/tag, then sets the class of each node if the tag matches
- `OverrideAnimationData(UAnimationAsset InAnimToPlay, bool bIsLooping = true, bool bIsPlaying = true, float32 Position = 0.000000, float32 PlayRate = 1.000000)`  
  This overrides current AnimationData parameter in the SkeletalMeshComponent. This will serialize when the component serialize
so it can be used during construction script. However note that this will override current existing data
This can be useful if you'd like to make a blueprint with custom default animation per component
This sets single player mode, which means you can't use AnimBlueprint with it
- `Play(bool bLooping)`  
  Animation play functions
      *
      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
      * Because of that reason, it is not safe to be used during construction script
      * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized
- `PlayAnimation(UAnimationAsset NewAnimToPlay, bool bLooping)`  
  Animation play functions
       *
       * These changes status of animation instance, which is transient data, which means it won't serialize with this component
       * Because of that reason, it is not safe to be used during construction script
       * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized
- `RecreateClothingActors()`  
  Destroys and recreates the clothing actors in the current simulation
- `RemoveClothCollisionSource(USkeletalMeshComponent InSourceComponent, UPhysicsAsset InSourcePhysicsAsset)`  
  Remove a cloth collision source defined by both a component and a physics asset
- `RemoveClothCollisionSources(USkeletalMeshComponent InSourceComponent)`  
  Remove a cloth collision source defined by a component
- `ResetAllBodiesSimulatePhysics()`  
  Allows you to reset bodies Simulate state based on where bUsePhysics is set to true in the BodySetup.
- `ResetAllowedAnimCurveEvaluation()`  
  By reset, it will allow all the curves to be evaluated
- `ResetAnimInstanceDynamics(ETeleportType InTeleportType = ETeleportType :: ResetPhysics)`  
  Informs any active anim instances (main instance, linked instances, post instance) that a dynamics reset is required
for example if a teleport occurs.
- `ResetClothCollisionSources()`  
  Remove all cloth collision sources
- `ResetClothTeleportMode()`  
  Reset the teleport mode of a next update to 'Continuous'
- `ResumeClothingSimulation()`  
  Resumes a previously suspended clothing simulation, teleporting the clothing on the next tick
- `SetAllBodiesBelowLinearVelocity(FName InBoneName, FVector LinearVelocity, bool bIncludeSelf = true)`  
  set the linear velocity of the child bodies to match that of the given parent bone
- `SetAllBodiesBelowPhysicsBlendWeight(FName InBoneName, float32 PhysicsBlendWeight, bool bSkipCustomPhysicsType = false, bool bIncludeSelf = true)`  
  Set all of the bones below passed in bone to be simulated
- `SetAllBodiesBelowPhysicsDisabled(FName InBoneName, bool bDisabled, bool bIncludeSelf = true)`  
  [WARNING: Chaos Only]
Set all of the bones below passed in bone to be disabled or not for the associated physics solver
Bodies will not be colliding or be part of the physics simulation.
This is different from SetAllBodiesBelowSimulatePhysics that changes bodies to Kinematic/simulated
- `SetAllBodiesBelowSimulatePhysics(FName InBoneName, bool bNewSimulate, bool bIncludeSelf = true)`  
  Set all of the bones below passed in bone to be simulated
- `SetAllBodiesPhysicsBlendWeight(float32 PhysicsBlendWeight, bool bSkipCustomPhysicsType = false)`
- `SetAllBodiesSimulatePhysics(bool bNewSimulate)`  
  Set bSimulatePhysics to true for all bone bodies. Does not change the component bSimulatePhysics flag.
- `SetAllMotorsAngularDriveParams(float32 InSpring, float32 InDamping, float32 InForceLimit, bool bSkipCustomPhysicsType = false)`  
  Set Angular Drive motors params for all constraint instances
- `SetAllMotorsAngularPositionDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, bool bSkipCustomPhysicsType = false)`  
  Enable or Disable AngularPositionDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.
- `SetAllMotorsAngularVelocityDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, bool bSkipCustomPhysicsType = false)`  
  Enable or Disable AngularVelocityDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.
- `SetAllowAnimCurveEvaluation(bool bInAllow)`
- `SetAllowClothActors(bool bInAllow)`  
  Sets whether cloth assets should be created/simulated in this component.
This will update the conditional flag and you will want to call RecreateClothingActors for it to take effect.
@param bInAllow Whether to allow the creation of cloth assets and simulation.
- `SetAllowedAnimCurvesEvaluation(TArray<FName> List, bool bAllow)`  
  resets, and then only allow the following list to be allowed/disallowed
- `SetAllowRigidBodyAnimNode(bool bInAllow, bool bReinitAnim = true)`  
  Sets whether or not to allow rigid body animation nodes for this component
- `SetAngularLimits(FName InBoneName, float32 Swing1LimitAngle, float32 TwistLimitAngle, float32 Swing2LimitAngle)`  
  Sets the Angular Motion Ranges for a named constraint
@param InBoneName  Name of bone to adjust constraint ranges for
@param Swing1LimitAngle       Size of limit in degrees, 0 means locked, 180 means free
@param TwistLimitAngle        Size of limit in degrees, 0 means locked, 180 means free
@param Swing2LimitAngle       Size of limit in degrees, 0 means locked, 180 means free
- `SetAnimation(UAnimationAsset NewAnimToPlay)`  
  Animation play functions
      *
      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
      * Because of that reason, it is not safe to be used during construction script
      * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized
- `SetAnimationMode(EAnimationMode InAnimationMode, bool bForceInitAnimScriptInstance = true)`  
  Set the Animation Mode
@param InAnimationMode : Requested AnimationMode
@param bForceInitAnimScriptInstance : Init AnimScriptInstance if the AnimationMode is AnimationBlueprint even if the new animation mode is the same as current (this allows to use BP construction script to do this)
- `SetAnimInstanceClass(UClass NewClass)`  
  Set the anim instance class. Clears and re-initializes the anim instance with the new class and sets animation mode to 'AnimationBlueprint'
This function will fail with a warning if it is called while the current anim instance is evaluating (e.g. from an anim notify).
- `SetBodyNotifyRigidBodyCollision(bool bNewNotifyRigidBodyCollision, FName BoneName = NAME_None)`  
  Changes the value of bNotifyRigidBodyCollision for a given body
@param bNewNotifyRigidBodyCollision   The value to assign to bNotifyRigidBodyCollision
@param BoneName                                               Name of the body to turn hit notifies on/off. None implies root body
- `SetBodySimulatePhysics(FName InBoneName, bool bSimulate)`  
  Set a single bone to be simulated (or not)
- `SetClothMaxDistanceScale(float32 Scale)`
- `SetConstraintProfile(FName JointName, FName ProfileName, bool bDefaultIfNotFound = false)`  
  Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset. If profile name is not found the joint is set to use the default constraint profile.
- `SetConstraintProfileForAll(FName ProfileName, bool bDefaultIfNotFound = false)`  
  Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset for all constraints. If profile name is not found the joint is set to use the default constraint profile.
- `SetDefaultAnimatingRigOverride(TSoftObjectPtr<UObject> InAnimatingRig)`
- `SetDisableAnimCurves(bool bInDisableAnimCurves)`
- `SetDisablePostProcessBlueprint(bool bInDisablePostProcess)`  
  Sets whether the post process blueprint is currently running for this component.
If it is not currently running, and is set to run, the instance will be reinitialized
- `SetEnableAnimation(bool bNewEnableAnimation)`  
  Whether the built-in animation of this component should run when the component ticks. See USkeletalMeshComponent::bEnableAnimation for more details.
Note that this call defers setting the flag to the end of the frame as the flag cannot change during world ticking (as other tasks may be in flight)
- `SetEnableBodyGravity(bool bEnableGravity, FName BoneName)`  
  Enables or disables gravity for the given bone.
NAME_None indicates the root body will be edited.
If the bone name given is otherwise invalid, nothing happens.

@param bEnableGravity   Whether gravity should be enabled or disabled.
@param BoneName                 The name of the bone to modify.
- `SetEnableGravityOnAllBodiesBelow(bool bEnableGravity, FName BoneName, bool bIncludeSelf = true)`  
  Enables or disables gravity to all bodies below the given bone.
NAME_None indicates all bodies will be edited.
In that case, consider using UPrimitiveComponent::EnableGravity.

@param bEnableGravity   Whether gravity should be enabled or disabled.
@param BoneName                 The name of the top most bone.
@param bIncludeSelf             Whether the bone specified should be edited.
- `SetEnablePerPolyCollision(bool bInEnablePerPolyCollision)`  
  Enables or disables per poly collision. This will recreate the physics state.

@param bEnablePerPolyCollision  Whether per poly collision should be enabled or disabled.
- `SetEnablePhysicsBlending(bool bNewBlendPhysics)`  
  Disable physics blending of bones *
- `SetMorphTarget(FName MorphTargetName, float32 Value, bool bRemoveZeroWeight = true)`  
  Set Morph Target with Name and Value(0-1)

@param bRemoveZeroWeight : Used by editor code when it should stay in the active list with zero weight
- `SetNotifyRigidBodyCollisionBelow(bool bNewNotifyRigidBodyCollision, FName BoneName = NAME_None, bool bIncludeSelf = true)`  
  Changes the value of bNotifyRigidBodyCollision on all bodies below a given bone
@param bNewNotifyRigidBodyCollision   The value to assign to bNotifyRigidBodyCollision
@param BoneName                                               Name of the body to turn hit notifies on (and below)
@param bIncludeSelf                                   Whether to modify the given body (useful for roots with multiple children)
- `SetOverridePostProcessAnimBP(TSubclassOf<UAnimInstance> InPostProcessAnimBlueprint, bool ReinitAnimInstances = true)`  
  Set the post-processing AnimBP to be used for this skeletal mesh component.
In case an override post-processing AnimBP is set, the one set in skeletal mesh asset will be ignored and not used.
@param ReinitAnimInstances Can be false when called e.g. from the construction script in a Blueprint. True when this is called while
                                                       the game is running and the anim instances need to be re-initialized.
- `SetPhysicsBlendWeight(float32 PhysicsBlendWeight)`  
  This is global set up for setting physics blend weight
This does multiple things automatically
If PhysicsBlendWeight == 1.f, it will enable Simulation, and if PhysicsBlendWeight == 0.f, it will disable Simulation.
Also it will respect each body's setup, so if the body is fixed, it won't simulate. Vice versa
So if you'd like all bodies to change manually, do not use this function, but SetAllBodiesPhysicsBlendWeight
- `SetPlayRate(float32 Rate)`  
  Animation play functions
      *
      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
      * Because of that reason, it is not safe to be used during construction script
      * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized
- `SetPosition(float32 InPos, bool bFireNotifies = true)`  
  Animation play functions
      *
      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
      * Because of that reason, it is not safe to be used during construction script
      * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized
- `SetSkeletalMeshAsset(USkeletalMesh NewMesh)`  
  Set the SkeletalMesh rendered for this mesh.
- `SetTeleportDistanceThreshold(float32 Threshold)`  
  Sets the teleportation distance threshold.

@param threshold Threshold value.
- `SetTeleportRotationThreshold(float32 Threshold)`  
  Sets the teleportation rotation threshold.

@param threshold Threshold in degrees.
- `SetUpdateAnimationInEditor(bool NewUpdateState)`  
  Sets whether or not to force tick component in order to update animation and refresh transform for this component
This is supported only in the editor
- `SetUpdateClothInEditor(bool NewUpdateState)`  
  Sets whether or not to animate cloth in the editor. Requires Update Animation In Editor to also be true.
This is supported only in the editor
- `SnapshotPose(FPoseSnapshot& Snapshot)`  
  Takes a snapshot of this skeletal mesh component's pose and saves it to the specified snapshot.
The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1
and then used it at LOD0 any bones not in LOD1 will use the reference pose
- `Stop()`  
  Animation play functions
      *
      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
      * Because of that reason, it is not safe to be used during construction script
      * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized
- `SuspendClothingSimulation()`  
  Stops simulating clothing, but does not show clothing ref pose. Keeps the last known simulation state
- `TermBodiesBelow(FName ParentBoneName)`  
  Terminate physics on all bodies below the named bone, effectively disabling collision forever. If you terminate, you won't be able to re-init later.
- `ToggleDisablePostProcessBlueprint()`  
  Toggles whether the post process blueprint will run for this component
- `UnbindClothFromLeaderPoseComponent(bool bRestoreSimulationSpace = true)`  
  If this component has a valid LeaderPoseComponent and has previously had its cloth bound to the
MCP, this function will unbind the cloth and resume simulation.
@param bRestoreSimulationSpace if true and the leader pose cloth was originally simulating in world
space, we will restore this setting. This will cause the leader component to reset which may be
undesirable.
- `UnlinkAnimClassLayers(TSubclassOf<UAnimInstance> InClass)`  
  Runs through all layer nodes, attempting to find layer nodes that are currently running the specified class, then resets each to its default value.
State sharing rules are as with SetLayerOverlay.
If InClass is null, does nothing.

---

