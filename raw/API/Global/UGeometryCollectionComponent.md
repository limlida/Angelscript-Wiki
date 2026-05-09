### UGeometryCollectionComponent


GeometryCollectionComponent

**属性**:

- `FName AbandonedCollisionProfileName [Whether abandoned particles on the client should continue to have collision (i.e.
still be in the external/internal acceleration structure).]`
- `bool CachePlayback []`
- `AChaosSolverActor ChaosSolverActor [Chaos RBD Solver override. Will use the world's default solver actor if null.]`
- `int ClusterGroupIndex [Cluster group index - Geometry Collections using the same index will simulate as one single cluster.]`
- `int CollisionGroup`
- `TArray<FName> CollisionProfilePerLevel [A per-level collision profile name. If the name is set to NONE or an invalid collision profile, nothing will be changed.
If the there are more levels than elements in this array, then each level will use the index that best matches it.
For example, if the particle is level 2, and there is only 1 element in the array, then the particle will use the 0th
collision profile. AbandonedCollisionProfileName will override this on the client when relevant.]`
- `float32 CollisionSampleFraction [Fraction of collision sample particles to keep]`
- `UClass CustomRendererType [Custom class type that will be used to render the geometry collection instead of using the native rendering.]`
- `EDamageModelTypeEnum DamageModel [Damage model to use for evaluating destruction.]`
- `FGeometryCollectionDamagePropagationData DamagePropagationData [Data about how damage propagation shoudl behave.]`
- `TArray<float32> DamageThreshold`
- `float32 DesiredCacheTime []`
- `bool EnableClustering`
- `int GravityGroupIndex`
- `FVector InitialAngularVelocity`
- `FVector InitialLinearVelocity`
- `EInitialVelocityTypeEnum InitialVelocityType`
- `TArray<TObjectPtr<const AFieldSystemActor>> InitializationFields`
- `int MaxClusterLevel [Maximum level for cluster breaks.]`
- `int MaxSimulatedLevel [The maximum level to create rigid bodies that could be simulated.
      Example: If we have a Geometry Collection with 2 levels, where:
      0 = Root
      1 = Clusters
      2 = Leaf Nodes
      A setting of '1' would only generate a physics representation of the Root transform and Level 1 clusters.
      The leaf nodes on Level 2 would never be created on the solver, and would therefore never be considered as part of the simulation.]`
- `FNotifyGeometryCollectionPhysicsLoadingStateChange__GeometryCollectionComponent NotifyGeometryCollectionPhysicsLoadingStateChange`
- `FNotifyGeometryCollectionPhysicsStateChange__GeometryCollectionComponent NotifyGeometryCollectionPhysicsStateChange`
- `EObjectStateTypeEnum ObjectType [ObjectType defines how to initialize the rigid objects state, Kinematic, Sleeping, Dynamic.]`
- `FOnChaosBreakEvent OnChaosBreakEvent`
- `FOnChaosCrumblingEvent OnChaosCrumblingEvent`
- `FOnChaosPhysicsCollision OnChaosPhysicsCollision`
- `FOnChaosRemovalEvent OnChaosRemovalEvent`
- `int OneWayInteractionLevel [All bodies with a level greater than or equal to this will have One-Way Interaction enabled and act like debris (will not apply forces to non-debris bodies)
Set to -1 to disable (no bodies will have One-Way Interaction enabled)]`
- `int ReplicationAbandonAfterLevel [If replicating - the cluster level after which replication will not happen
@see bEnableAbandonAfterLevel]`
- `int ReplicationMaxPositionAndVelocityCorrectionLevel [If replicating - the maximum level where clusters will have their position and velocity send over to the client for tracking and correcting
When breaking, client will only receive the initial break velocity
This helps save bandwidth where only the destruction state of the GC is to be replicated but the falling pieces do not need to be tracked precisely
@note This will have an effect only if set to a value less than ReplicationAbandonAfterLevel
@see ReplicationAbandonAfterLevel]`
- `const UGeometryCollection RestCollection`
- `FGuid RunTimeDataCollectionGuid []`
- `bool bAllowRemovalOnBreak [Allow removal on break for the instance if the rest collection has it enabled]`
- `bool bAllowRemovalOnSleep [Allow removal on sleep for the instance if the rest collection has it enabled]`
- `bool bCrumblingEventIncludesChildren [If this and bNotifyCrumblings are true, the crumbling events will contain released children indices.]`
- `bool bDensityFromPhysicsMaterial [when true, density will be used to compute mass using the assigned physics material]`
- `bool bEnableAbandonAfterLevel [Enables use of ReplicationAbandonAfterLevel to stop providing network updates to
clients when the updated particle is of a level higher then specified.]`
- `bool bEnableDamageFromCollision [Whether or not collisions against this geometry collection will apply strain which could cause the geometry collection to fracture.]`
- `bool bEnableReplication [Per-instance override to enable/disable replication for the geometry collection]`
- `bool bEnableRunTimeDataCollection []`
- `bool bForceMotionBlur [If ForceMotionBlur is on, motion blur will always be active, even if the GeometryCollection is at rest.]`
- `bool bForceUpdateActiveTransforms [Update transforms of active particles even when they are not moving. Has performance implications. Use only when GC is a child of a moving actor, to prevent released particle 'following the actor around']`
- `bool bGlobalCrumblingEventIncludesChildren [If this and bNotifyGlobalCrumblings are true, the crumbling events will contain released children indices.]`
- `bool bNotifyBreaks [If true, this component will generate breaking events that other systems may subscribe to.]`
- `bool bNotifyCollisions [If true, this component will generate collision events that other systems may subscribe to.]`
- `bool bNotifyCrumblings [If true, this component will generate crumbling events that other systems may subscribe to.]`
- `bool bNotifyGlobalBreaks [If true, this component will generate breaking events that will be listened by the global event relay.]`
- `bool bNotifyGlobalCollisions [If true, this component will generate collision events  that will be listened by the global event relay.]`
- `bool bNotifyGlobalCrumblings [If true, this component will generate crumbling events  that will be listened by the global event relay.]`
- `bool bNotifyGlobalRemovals [If true, this component will generate removal events  that will be listened by the global event relay.]`
- `bool bNotifyRemovals [If true, this component will generate removal events that other systems may subscribe to.]`
- `bool bNotifyTrailing [If true, this component will generate trailing events that other systems may subscribe to.]`
- `bool bOverrideCustomRenderer [If true, CustomRendererType will be used. If false, CustomRendererType comes from the RestCollection.]`
- `bool bShowBoneColors [Display Bone Colors instead of assigned materials]`
- `bool bStoreVelocities [If true, this component will save linear and angular velocities on its DynamicCollection.]`
- `bool bUpdateComponentTransformToRootBone [Relocate the component so that the original offset to the root bone is maintained
This only works when the root bone is moving whole being dynamically simulated
Note: Once the root element is broken, the component will no longer update its position]`
- `bool bUpdateNavigationInTick`
- `bool bUseMaterialDamageModifiers [When on , use the modifiers on the material to adjust the user defined damage threshold values]`
- `bool bUseRootProxyForNavigation`
- `bool bUseSizeSpecificDamageThreshold [Damage threshold for clusters at different levels.]`
- `bool bUseStaticMeshCollisionForTraces [todo(chaos): Remove the ability to change this at runtime, as we'll want to use this at cook time instead]`


**方法**:

- `ApplyAngularVelocity(int ItemIndex, FVector AngularVelocity)`  
  Apply angular velocity on specific piece
@param ItemIndex item index ( from HitResult) of the piece to apply velocity on
@param AngularVelocity linear velocity to apply
- `ApplyAssetDefaults()`  
  Apply default values from asset ( damage related data and physics material )
- `ApplyBreakingAngularVelocity(int ItemIndex, FVector AngularVelocity)`  
  Apply linear velocity on breaking pieces for a specific cluster
If ItemIndex does not represent a cluster this will do nothing
@param ItemIndex item index ( from HitResult) of the cluster owning the breaking pieces to apply velocity on
@param AngularVelocity linear velocity to apply
- `ApplyBreakingLinearVelocity(int ItemIndex, FVector LinearVelocity)`  
  Apply linear velocity on breaking pieces for a specific cluster
If ItemIndex does not represent a cluster this will do nothing
@param ItemIndex item index ( from HitResult) of the cluster owning the breaking pieces to apply velocity on
@param LinearVelocity linear velocity to apply
- `ApplyExternalStrain(int ItemIndex, FVector Location, float32 Radius = 0.000000, int PropagationDepth = 0, float32 PropagationFactor = 1.000000, float32 Strain = 0.000000)`  
  Apply an external strain to specific piece of the geometry collection
@param ItemIndex item index ( from HitResult) of the piece to apply strain on
@param Location world location of where to apply the strain
@param Radius radius from the location point to apply the strain to ( using the center of mass of the pieces )
@param PropagationDepth How many level of connection to follow to propagate the strain through
@param PropagationFactor when using propagation, the factor to multiply the strain from one level to the other, allowing falloff effect
@param Strain strain / damage to apply
- `ApplyInternalStrain(int ItemIndex, FVector Location, float32 Radius = 0.000000, int PropagationDepth = 0, float32 PropagationFactor = 1.000000, float32 Strain = 0.000000)`  
  Apply an internal strain to specific piece of the geometry collection
@param ItemIndex item index ( from HitResult) of the piece to apply strain on
@param Location world location of where to apply the strain
@param Radius radius from the location point to apply the strain to ( using the center of mass of the pieces )
@param PropagationDepth How many level of connection to follow to propagate the strain through
@param PropagationFactor when using propagation, the factor to multiply the strain from one level to the other, allowing falloff effect
@param Strain strain / damage to apply
- `ApplyKinematicField(float32 Radius, FVector Position)`  
  SetDynamicState
  This function will dispatch a command to the physics thread to apply
  a kinematic to dynamic state change for the geo collection particles within the field.

      @param Radius Radial influence from the position
  @param Position The location of the command
- `ApplyLinearVelocity(int ItemIndex, FVector LinearVelocity)`  
  Apply linear velocity on specific piece
@param ItemIndex item index ( from HitResult) of the piece to apply velocity on
@param LinearVelocity linear velocity to apply
- `ApplyPhysicsField(bool Enabled, EGeometryCollectionPhysicsTypeEnum Target, UFieldSystemMetaData MetaData, UFieldNodeBase Field)`  
  AddPhysicsField
  This function will dispatch a command to the physics thread to apply
  a generic evaluation of a user defined transient field network. See documentation,
  for examples of how to recreate variations of the above generic
  fields using field networks

      @param Enabled Is this force enabled for evaluation.
  @param Target Type of field supported by the solver.
  @param MetaData Meta data used to assist in evaluation
  @param Field Base evaluation node for the field network.
- `CrumbleActiveClusters()`  
  Crumbe active clusters for this entire geometry collection
this will apply to internal and regular clusters
- `CrumbleCluster(int ItemIndex)`  
  Crumbe a cluster into all its pieces
@param ItemIndex item index ( from HitResult) of the cluster to crumble
- `bool FindLeafTransformByLineTrace(FVector Start, FVector End, int& LeafTransformIndex, FName& LeafTransformName) const`  
  Find a leaf transform from a line trace
@param Start Start position for the line trace
@param End position for the line trace
@param LeafTransformIndex the index of leaf transform found by the line trace
@param LeafTransformName the name of leaf transform found by the line trace
@return true if a leaf was found
- `ForceBrokenForCustomRenderer(bool bForceBroken)`  
  Force any custom renderer to render using the broken/decayed path. This can be set at runtime
- `FString GetDebugInfo()`  
  RestCollection
- `int GetInitialLevel(int ItemIndex)`  
  Get the initial level of a specific piece
Initial level means the level as it is in the unbroken state
@param ItemIndex item index ( from HitResult) of the cluster to get level from
@param Level of the piece ( 0 for root level and positive for the rest )
- `TArray<FTransform> GetInitialLocalRestTransforms() const`  
  Get the initial rest transforms in component (local) space  space,
they are the transforms as defined in the rest collection asset
- `FBox GetLocalBounds() const`  
  Get local bounds of the geometry collection
- `TArray<FTransform> GetLocalRestTransforms(bool bInitialTransforms = false) const`  
  Get the rest transforms in component (local) space  space,
if none have been set by SetLocalRestTransforms or if RestTransform property is empty , then the initial ones are returned
@param bInitialTransform force the initial transforms to be returned ( false by default )
- `GetMassAndExtents(int ItemIndex, float32& OutMass, FBox& OutExtents)`  
  Get mass and extent of a specific piece
@param ItemIndex item index ( from HitResult) of the cluster to get level from
@param Level of the piece ( 0 for root level and positive for the rest )
- `FTransform GetRootCurrentTransform() const`  
  Get the root item current world transform
- `int GetRootIndex() const`  
  Get the root item index of the hierarchy
- `FTransform GetRootInitialTransform() const`  
  Get the root item initial transform in world space
- `bool IsRootBroken() const`  
  return true if the root cluster is not longer active at runtime
- `PhysicsCollision(FChaosPhysicsCollisionInfo CollisionInfo)`
- `RemoveAllAnchors()`  
  this will remove anchors on all the pieces ( including the static and kinematic initial states ones ) of the geometry colection
- `ResetState()`  
  Reset the state of the component : object will be rest to be unbroken and physics will reset accordingly
- `SetAbandonedParticleCollisionProfileName(FName CollisionProfile)`
- `SetAnchoredByBox(FBox WorldSpaceBox, bool bAnchored, int MaxLevel = - 1)`  
  Set all pieces within a world space bounding box to be anchored or not
- `SetAnchoredByIndex(int Index, bool bAnchored)`  
  Set a piece or cluster to be anchored or not
- `SetAnchoredByTransformedBox(FBox Box, FTransform Transform, bool bAnchored, int MaxLevel = - 1)`  
  Set all pieces within a world transformed bounding box to be anchored or not
- `SetEnableDamageFromCollision(bool bValue)`
- `SetLocalRestTransforms(TArray<FTransform> Transforms, bool bOnlyLeaves)`  
  Set the local rest transform, this may be different from the rest collection
If the geometry collection is already simulating those matrices will be overriden by the physics state updates
- `SetNotifyBreaks(bool bNewNotifyBreaks)`  
  Changes whether or not this component will get future break notifications.
- `SetNotifyCrumblings(bool bNewNotifyCrumblings, bool bNewCrumblingEventIncludesChildren = false)`  
  Changes whether or not this component will get future crumbling notifications.
- `SetNotifyGlobalBreaks(bool bNewNotifyGlobalBreaks)`  
  Changes whether or not this component will get future global break notifications.
- `SetNotifyGlobalCollision(bool bNewNotifyGlobalCollisions)`  
  Changes whether or not this component will get future global collision notifications.
- `SetNotifyGlobalCrumblings(bool bNewNotifyGlobalCrumblings, bool bGlobalNewCrumblingEventIncludesChildren)`  
  Changes whether or not this component will get future global crumbling notifications.
- `SetNotifyGlobalRemovals(bool bNewNotifyGlobalRemovals)`  
  Changes whether or not this component will get future global removal notifications.
- `SetNotifyRemovals(bool bNewNotifyRemovals)`  
  Changes whether or not this component will get future removal notifications.
- `SetPerLevelCollisionProfileNames(TArray<FName> ProfileNames)`
- `SetPerParticleCollisionProfileName(TArray<int> BoneIds, FName ProfileName)`
- `SetRestCollection(const UGeometryCollection RestCollectionIn, bool bApplyAssetDefaults = true)`  
  RestCollection
- `SetRootProxyComponentSpaceTransform(int Index, FTransform RootProxyTransform)`  
  blueprint function to set a specific root proxy local transform
warning: when called from C++ and calling it on multiple root proxies it is recommended to use SetRootProxyLocalTransform instead and then call RefreshCustomRenderer
to avoid the cost of refreshing the renderer each time

---

