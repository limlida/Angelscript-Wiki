### USceneComponent


A SceneComponent has a transform and supports attachment, but has no rendering or collision capabilities.
Useful as a 'dummy' component in the hierarchy to offset others.
@see [Scene Components](https://docs.unrealengine.com/latest/INT/Programming/UnrealArchitecture/Actors/Components/index.html#scenecomponents)

**属性**:

- `EDetailMode DetailMode [Set the required detail level of this component.
It will be deleted or made invisible if the world's detail level is higher, based on platform and scalability settings.
For example, a detail mode of High may prevent this component from loading on mobile platforms.]`
- `EComponentMobility Mobility [How often this component is allowed to move, used to make various optimizations. Only safe to set in constructor.]`
- `FPhysicsVolumeChanged PhysicsVolumeChangedDelegate [Delegate that will be called when PhysicsVolume has been changed *]`
- `FVector RelativeLocation [Location of the component relative to its parent]`
- `FRotator RelativeRotation [Rotation of the component relative to its parent]`
- `FVector RelativeScale3D [Non-uniform scaling of the component relative to its parent.
Note that scaling is always applied in local space (no shearing etc)]`
- `bool bAbsoluteLocation [If RelativeLocation should be considered relative to the world, rather than the parent]`
- `bool bAbsoluteRotation [If RelativeRotation should be considered relative to the world, rather than the parent]`
- `bool bAbsoluteScale [If RelativeScale3D should be considered relative to the world, rather than the parent]`
- `bool bHiddenInGame [Whether to hide the primitive in game, if the primitive is Visible.]`
- `bool bShouldUpdatePhysicsVolume [Whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved.
@see GetPhysicsVolume()]`
- `bool bUseAttachParentBound [If true, this component uses its parents bounds when attached.
This can be a significant optimization with many components attached together.]`
- `bool bVisible [Whether to completely draw the primitive; if false, the primitive is not drawn, does not cast a shadow.]`


**方法**:

- `USceneComponent GetChildComponentByClass(TSubclassOf<USceneComponent> ComponentClass) const`
- `SetComponentVelocity(FVector Velocity)`
- `DetachFromParent(bool bMaintainWorldPosition = false, bool bCallModify = true)`
- `bool DoesSocketExist(FName InSocketName) const`  
  Return true if socket with the given name exists
@param InSocketName Name of the socket or the bone to get the transform
- `TArray<FName> GetAllSocketNames() const`  
  Gets the names of all the sockets on the component.
@return Get the names of all the sockets on the component.
- `USceneComponent GetAttachParent() const`  
  Get the SceneComponent we are attached to.
- `FName GetAttachSocketName() const`  
  Get the socket we are attached to.
- `USceneComponent GetChildComponent(int ChildIndex) const`  
  Gets the attached child component at the specified location
- `GetChildrenComponents(bool bIncludeAllDescendants, TArray<USceneComponent>& Children) const`  
  Gets all components that are attached to this component, possibly recursively
@param bIncludeAllDescendants Whether to include all descendants in the list of children (i.e. grandchildren, great grandchildren, etc.)
@param Children The list of attached child components
- `FVector GetComponentVelocity() const`  
  Get velocity of the component: either ComponentVelocity, or the velocity of the physics body if simulating physics.
@return Velocity of the component
- `FVector GetForwardVector() const`  
  Get the forward (X) unit direction vector from this component, in world space.
- `int GetNumChildrenComponents() const`  
  Gets the number of attached children components
- `GetParentComponents(TArray<USceneComponent>& Parents) const`  
  Gets all attachment parent components up to and including the root component
- `APhysicsVolume GetPhysicsVolume() const`  
  Get the PhysicsVolume overlapping this component.
- `FTransform GetRelativeTransform() const`  
  Returns the transform of the component relative to its parent
- `FVector GetRightVector() const`  
  Get the right (Y) unit direction vector from this component, in world space.
- `bool GetShouldUpdatePhysicsVolume() const`  
  Gets whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved.
- `FVector GetSocketLocation(FName InSocketName) const`  
  Get world-space socket or bone location.
@param InSocketName Name of the socket or the bone to get the transform
@return Socket transform in world space if socket is found. Otherwise it will return component's transform in world space.
- `FRotator GetSocketRotation(FName InSocketName) const`  
  Get world-space socket or bone  FRotator rotation.
@param InSocketName Name of the socket or the bone to get the transform
@return Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.
- `FTransform GetSocketTransform(FName InSocketName, ERelativeTransformSpace TransformSpace = ERelativeTransformSpace :: RTS_World) const`  
  Get world-space socket transform.
@param InSocketName Name of the socket or the bone to get the transform
@return Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.
- `FVector GetUpVector() const`  
  Get the up (Z) unit direction vector from this component, in world space.
- `bool IsAnySimulatingPhysics() const`  
  Returns whether the specified body is currently using physics simulation
- `bool IsSimulatingPhysics(FName BoneName = NAME_None) const`  
  Returns whether the specified body is currently using physics simulation
- `bool IsVisible() const`  
  Returns true if this component is visible in the current context
- `AddLocalOffset(FVector DeltaLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the location of the component in its local reference frame
@param DeltaLocation         Change in location of the component in its local reference frame.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `AddLocalRotation(FRotator DeltaRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the rotation of the component in its local reference frame
@param DeltaRotation         Change in rotation of the component in its local reference frame.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
- `AddLocalTransform(FTransform DeltaTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the transform of the component in its local reference frame. Scale is unchanged.
@param DeltaTransform        Change in transform of the component in its local reference frame. Scale is unchanged.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `AddRelativeLocation(FVector DeltaLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the translation of the component relative to its parent
@param DeltaLocation         Change in location of the component relative to its parent
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `AddRelativeRotation(FRotator DeltaRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta the rotation of the component relative to its parent
@param DeltaRotation         Change in rotation of the component relative to is parent.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
- `AddWorldOffset(FVector DeltaLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the location of the component in world space.
@param DeltaLocation         Change in location in world space for the component.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `AddWorldRotation(FRotator DeltaRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the rotation of the component in world space.
@param DeltaRotation         Change in rotation in world space for the component.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `AddWorldTransform(FTransform DeltaTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the transform of the component in world space. Ignores scale and sets it to (1,1,1).
@param DeltaTransform        Change in transform in world space for the component. Scale is ignored.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `AddWorldTransformKeepScale(FTransform DeltaTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the transform of the component in world space. Scale is unchanged.
@param DeltaTransform        Change in transform in world space for the component. Scale is ignored since we preserve the original scale.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `bool AttachTo(USceneComponent InParent, FName InSocketName = NAME_None, EAttachLocation AttachType = EAttachLocation :: KeepRelativeOffset, bool bWeldSimulatedBodies = true)`
- `bool AttachToComponent(USceneComponent Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, bool bWeldSimulatedBodies)`  
  Attach this component to another scene component, optionally at a named socket. It is valid to call this on components whether or not they have been Registered.
@param  Parent                                        Parent to attach to.
@param  SocketName                            Optional socket to attach to on the parent.
@param  LocationRule                          How to handle translation when attaching.
@param  RotationRule                          How to handle rotation when attaching.
@param  ScaleRule                                     How to handle scale when attaching.
@param  bWeldSimulatedBodies          Whether to weld together simulated physics bodies. This transfers the shapes in the welded object into the parent (if simulated), which can result in permanent changes that persist even after subsequently detaching.
@return True if attachment is successful (or already attached to requested parent/socket), false if attachment is rejected and there is no change in AttachParent.
- `DetachFromComponent(EDetachmentRule LocationRule = EDetachmentRule :: KeepRelative, EDetachmentRule RotationRule = EDetachmentRule :: KeepRelative, EDetachmentRule ScaleRule = EDetachmentRule :: KeepRelative, bool bCallModify = true)`  
  Detach this component from whatever it is attached to. Automatically unwelds components that are welded together (see AttachToComponent), though note that some effects of welding may not be undone.
@param LocationRule                          How to handle translations when detaching.
@param RotationRule                          How to handle rotation when detaching.
@param ScaleRule                                     How to handle scales when detaching.
@param bCallModify                           If true, call Modify() on the component and the current attach parent component
- `FVector GetWorldLocation() const`  
  Return location of the component, in world space
- `FRotator GetWorldRotation() const`  
  Returns rotation of the component, in world space.
- `FVector GetWorldScale() const`  
  Returns scale of the component, in world space.
- `FTransform GetWorldTransform() const`  
  Get the current component-to-world transform for this component
- `SetRelativeLocation(FVector NewLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the location of the component relative to its parent
@param NewLocation           New location of the component relative to its parent.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `SetRelativeLocationAndRotation(FVector NewLocation, FRotator NewRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the location and rotation of the component relative to its parent
@param NewLocation           New location of the component relative to its parent.
@param NewRotation           New rotation of the component relative to its parent.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `SetRelativeRotation(FRotator NewRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the rotation of the component relative to its parent
@param NewRotation           New rotation of the component relative to its parent
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
- `SetRelativeTransform(FTransform NewTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the transform of the component relative to its parent
@param NewTransform          New transform of the component relative to its parent.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
- `SetWorldLocation(FVector NewLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Put this component at the specified location in world space. Updates relative location to achieve the final world location.
@param NewLocation           New location in world space for the component.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `SetWorldLocationAndRotation(FVector NewLocation, FRotator NewRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the relative location and rotation of the component to put it at the supplied pose in world space.
@param NewLocation           New location in world space for the component.
@param NewRotation           New rotation in world space for the component.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `SetWorldRotation(FRotator NewRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  * Put this component at the specified rotation in world space. Updates relative rotation to achieve the final world rotation.
* @param NewRotation           New rotation in world space for the component.
* @param SweepHitResult        Hit result from any impact if sweep is true.
* @param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
* @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
*                                                      If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
*                                                      If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
*                                                      If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `SetWorldTransform(FTransform NewTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the transform of the component in world space.
@param NewTransform          New transform in world space for the component.
@param SweepHitResult        Hit result from any impact if sweep is true.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
- `ResetRelativeTransform()`  
  Reset the transform of the component relative to its parent. Sets relative location to zero, relative rotation to no rotation, and Scale to 1.
- `SetAbsolute(bool bNewAbsoluteLocation = false, bool bNewAbsoluteRotation = false, bool bNewAbsoluteScale = false)`  
  Set which parts of the relative transform should be relative to parent, and which should be relative to world
- `SetHiddenInGame(bool NewHidden, bool bPropagateToChildren = false)`  
  Changes the value of bHiddenInGame, if false this will disable Visibility during gameplay
- `SetMobility(EComponentMobility NewMobility)`  
  Set how often this component is allowed to move during runtime. Causes a component re-register if the component is already registered
- `SetRelativeScale3D(FVector NewScale3D)`  
  Set the non-uniform scale of the component relative to its parent
- `SetShouldUpdatePhysicsVolume(bool bInShouldUpdatePhysicsVolume)`  
  Sets whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved.
- `SetVisibility(bool bNewVisibility, bool bPropagateToChildren = false)`  
  Set visibility of the component, if during game use this to turn on/off
- `SetWorldScale3D(FVector NewScale)`  
  Set the relative scale of the component to put it at the supplied scale in world space.
@param NewScale              New scale in world space for this component.
- `ToggleVisibility(bool bPropagateToChildren = false)`  
  Toggle visibility of the component
- `AddLocalOffset(FVector DeltaLocation)`
- `AddLocalRotation(FRotator DeltaRotation)`
- `AddLocalRotation(FQuat DeltaRotation)`
- `AddLocalTransform(FTransform DeltaTransform)`
- `AddRelativeLocation(FVector DeltaLocation)`
- `AddRelativeRotation(FRotator DeltaRotation)`
- `AddRelativeRotation(FQuat DeltaRotation)`
- `AddWorldOffset(FVector DeltaLocation)`
- `AddWorldRotation(FRotator DeltaRotation)`
- `AddWorldRotation(FQuat DeltaRotation)`
- `AddWorldTransform(FTransform DeltaTransform)`
- `AttachToComponent(USceneComponent Parent, FName SocketName = NAME_None, EAttachmentRule AttachmentRule = EAttachmentRule :: SnapToTarget, EAttachmentRule ScaleRule = EAttachmentRule :: KeepWorld)`
- `FBoxSphereBounds GetBounds() const`
- `TArray<USceneComponent> GetChildrenComponentsByClass(TSubclassOf<UActorComponent> ComponentClass, bool bIncludeAllDescendants) const`  
  Gets all components that are attached to this component that have the specified class, possibly recursively
@param ComponentClass Only return child components of this type
@param bIncludeAllDescendants Whether to include all descendants in the list of children (i.e. grandchildren, great grandchildren, etc.)
- `FQuat GetComponentQuat() const`
- `FVector GetRelativeLocation() const`
- `FRotator GetRelativeRotation() const`
- `FVector GetRelativeScale3D() const`
- `FQuat GetSocketQuaternion(FName SocketName)`
- `bool IsAttachedTo(const USceneComponent CheckComponent) const`
- `bool IsAttachedTo(const AActor CheckActor) const`
- `SetbVisualizeComponent(bool bVisualize)`
- `SetComponentQuat(FQuat NewRotation)`
- `SetRelativeLocation(FVector NewLocation)`
- `SetRelativeLocationAndRotation(FVector NewLocation, FRotator NewRotation)`
- `SetRelativeLocationAndRotation(FVector NewLocation, FQuat NewRotation)`
- `SetRelativeRotation(FRotator NewRotation)`
- `SetRelativeRotation(FQuat NewRotation)`
- `SetRelativeTransform(FTransform NewTransform)`
- `SetWorldLocation(FVector NewLocation)`
- `SetWorldLocationAndRotation(FVector NewLocation, FRotator NewRotation)`
- `SetWorldLocationAndRotation(FVector NewLocation, FQuat NewRotation)`
- `SetWorldRotation(FRotator NewRotation)`
- `SetWorldRotation(FQuat NewRotation)`
- `SetWorldTransform(FTransform NewTransform)`

---

