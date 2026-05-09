### UPrimitiveComponent


PrimitiveComponents are SceneComponents that contain or generate some sort of geometry, generally to be rendered or used as collision data.
There are several subclasses for the various types of geometry, but the most common by far are the ShapeComponents (Capsule, Sphere, Box), StaticMeshComponent, and SkeletalMeshComponent.
ShapeComponents generate geometry that is used for collision detection but are not rendered, while StaticMeshComponents and SkeletalMeshComponents contain pre-built geometry that is rendered, but can also be used for collision detection.

**属性**:

- `FBodyInstance BodyInstance [Physics scene information for this component, holds a single rigid body with multiple shapes.]`
- `float32 BoundsScale [Scales the bounds of the object.
This is useful when using World Position Offset to animate the vertices of the object outside of its bounds.
Warning: Increasing the bounds of an object will reduce performance and shadow quality!
Currently only used by StaticMeshComponent and SkeletalMeshComponent.]`
- `float32 CachedMaxDrawDistance [The distance to cull this primitive at.
A CachedMaxDrawDistance of 0 indicates that the primitive should not be culled by distance.]`
- `ECanBeCharacterBase CanCharacterStepUpOn [Determine whether a Character can step up onto this component.
This controls whether they can try to step up on it when they bump in to it, not whether they can walk on it after landing on it.
@see FWalkableSlopeOverride]`
- `bool CastShadow [Controls whether the primitive component should cast a shadow or not.]`
- `int CustomDepthStencilValue [Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)]`
- `ERendererStencilMask CustomDepthStencilWriteMask [Mask used for stencil buffer writes.]`
- `FCustomPrimitiveData CustomPrimitiveData [Optional user defined default values for the custom primitive data of this primitive]`
- `uint8 ExcludeFromHLODLevels [Which specific HLOD levels this component should be excluded from]`
- `EFirstPersonPrimitiveType FirstPersonPrimitiveType [If this is set to FirstPerson, the camera FirstPersonFieldOfView and FirstPersonScale parameters will be used on this component. These parameters can be used to render the component with a different field of view and a smaller depth range such that clipping with the scene can be avoided. This is useful for rendering first person view geometry.]`
- `EHLODBatchingPolicy HLODBatchingPolicy [Determines how the geometry of a component will be incorporated in proxy (simplified) HLODs.]`
- `EIndirectLightingCacheQuality IndirectLightingCacheQuality [Quality of indirect lighting for Movable primitives.  This has a large effect on Indirect Lighting Cache update time.]`
- `float32 LDMaxDrawDistance [Max draw distance exposed to LDs. The real max draw distance is the min (disregarding 0) of this and volumes affecting this object.]`
- `FLightingChannels LightingChannels [Channels that this component should be in.  Lights with matching channels will affect the component.
These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.
Lighting channels are only supported on translucent materials using forward shading (i.e. when not using the translucency lighting volume).]`
- `ELightmapType LightmapType`
- `float32 MinDrawDistance [The minimum distance at which the primitive should be rendered,
measured in world space units from the center of the primitive's bounding sphere to the camera position.]`
- `FComponentBeginCursorOverSignature OnBeginCursorOver [Event called when the mouse cursor is moved over this component and mouse over events are enabled in the player controller]`
- `FComponentOnClickedSignature OnClicked [Event called when the left mouse button is clicked while the mouse is over this component and click events are enabled in the player controller]`
- `FComponentBeginOverlapSignature OnComponentBeginOverlap [Event called when something starts to overlaps this component, for example a player walking into a trigger.
For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.

@note Both this component and the other one must have GetGenerateOverlapEvents() set to true to generate overlap events.
@note When receiving an overlap from another object's movement, the directions of 'Hit.Normal' and 'Hit.ImpactNormal'
will be adjusted to indicate force from the other object against this object.]`
- `FComponentEndOverlapSignature OnComponentEndOverlap [Event called when something stops overlapping this component
@note Both this component and the other one must have GetGenerateOverlapEvents() set to true to generate overlap events.]`
- `FComponentHitSignature OnComponentHit [Event called when a component hits (or is hit by) something solid. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation.
For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event.

@note For collisions during physics simulation to generate hit events, 'Simulation Generates Hit Events' must be enabled for this component.
@note When receiving a hit from another object's movement, the directions of 'Hit.Normal' and 'Hit.ImpactNormal'
will be adjusted to indicate force from the other object against this object.
@note NormalImpulse will be filled in for physics-simulating bodies, but will be zero for swept-component blocking collisions.]`
- `FComponentPhysicsStateChanged OnComponentPhysicsStateChanged [Event called when physics state is created or destroyed for this component]`
- `FComponentSleepSignature OnComponentSleep [Event called when the underlying physics objects is put to sleep]`
- `FComponentWakeSignature OnComponentWake [Event called when the underlying physics objects is woken up]`
- `FComponentEndCursorOverSignature OnEndCursorOver [Event called when the mouse cursor is moved off this component and mouse over events are enabled in the player controller]`
- `FComponentOnInputTouchBeginSignature OnInputTouchBegin [Event called when a touch input is received over this component when touch events are enabled in the player controller]`
- `FComponentOnInputTouchEndSignature OnInputTouchEnd [Event called when a touch input is released over this component when touch events are enabled in the player controller]`
- `FComponentBeginTouchOverSignature OnInputTouchEnter [Event called when a finger is moved over this component when touch over events are enabled in the player controller]`
- `FComponentEndTouchOverSignature OnInputTouchLeave [Event called when a finger is moved off this component when touch over events are enabled in the player controller]`
- `FComponentOnReleasedSignature OnReleased [Event called when the left mouse button is released while the mouse is over this component click events are enabled in the player controller]`
- `ERayTracingGroupCullingPriority RayTracingGroupCullingPriority [Defines how quickly it should be culled. For example buildings should have a low priority, but small dressing should have a high priority.]`
- `int RayTracingGroupId [Defines run-time groups of components. For example allows to assemble multiple parts of a building at runtime.
-1 means that component doesn't belong to any group.]`
- `TArray<TObjectPtr<URuntimeVirtualTexture>> RuntimeVirtualTextures [Array of runtime virtual textures into which we draw the mesh for this actor.
The material also needs to be set up to output to a virtual texture.]`
- `EShadowCacheInvalidationBehavior ShadowCacheInvalidationBehavior [Control shadow invalidation behavior, in particular with respect to Virtual Shadow Maps and material effects like World Position Offset.]`
- `float32 TranslucencySortDistanceOffset [Modified sort distance offset for translucent objects in world units.
A positive number will move the sort distance further and a negative number will move the distance closer.

Ignored if the object is not translucent.
Warning: Adjusting this value will prevent the renderer from correctly sorting based on distance.  Only modify this value if you are certain it will not cause visual artifacts.]`
- `int TranslucencySortPriority [Translucent objects with a lower sort priority draw behind objects with a higher priority.
Translucent objects with the same priority are rendered from back-to-front based on their bounds origin.
This setting is also used to sort objects being drawn into a runtime virtual texture.

Ignored if the object is not translucent.  The default priority is zero.
Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly.
It is especially problematic on dynamic gameplay effects.]`
- `int8 VirtualTextureCullMips [Number of lower mips in the runtime virtual texture to skip for rendering this primitive.
Larger values reduce the effective draw distance in the runtime virtual texture.
This culling method doesn't take into account primitive size or virtual texture size.]`
- `int8 VirtualTextureLodBias [Bias to the LOD selected for rendering to runtime virtual textures.]`
- `int8 VirtualTextureMinCoverage [Set the minimum pixel coverage before culling from the runtime virtual texture.
Larger values reduce the effective draw distance in the runtime virtual texture.]`
- `ERuntimeVirtualTextureMainPassType VirtualTextureRenderPassType [Controls if this component draws in the main pass as well as in the virtual texture.]`
- `bool bAffectDistanceFieldLighting [Controls whether the primitive should affect dynamic distance field lighting methods.  This flag is only used if CastShadow is true.]`
- `bool bAffectDynamicIndirectLighting [Controls whether the primitive should influence indirect lighting.]`
- `bool bAffectIndirectLightingWhileHidden [Controls whether the primitive should affect indirect lighting when hidden. This flag is only used if bAffectDynamicIndirectLighting is true.]`
- `bool bAllowCullDistanceVolume [Whether to accept cull distance volumes to modify cached cull distance.]`
- `bool bAlwaysCreatePhysicsState [Indicates if we'd like to create physics state all the time (for collision and simulation).
If you set this to false, it still will create physics state if collision or simulation activated.
This can help performance if you'd like to avoid overhead of creating physics state when triggers]`
- `bool bApplyImpulseOnDamage [True for damage to this component to apply physics impulse, false to opt out of these impulses.]`
- `bool bCastCinematicShadow [Whether this component should cast shadows from lights that have bCastShadowsFromCinematicObjectsOnly enabled.
This is useful for characters in a cinematic with special cinematic lights, where the cost of shadowmap rendering of the environment is undesired.]`
- `bool bCastContactShadow [Whether the object should cast contact shadows.
This flag is only used if CastShadow is true.]`
- `bool bCastDynamicShadow [Controls whether the primitive should cast shadows in the case of non precomputed shadowing. This flag is only used if CastShadow is true and if FirstPersonPrimitiveType is not set to FirstPerson.]`
- `bool bCastFarShadow [When enabled, the component will be rendering into the far shadow cascades (only for directional lights). This flag is only used if CastShadow is true and if FirstPersonPrimitiveType is not set to FirstPerson.]`
- `bool bCastHiddenShadow [If true, the primitive will cast shadows even if bHidden is true.
Controls whether the primitive should cast shadows when hidden.
This flag is only used if CastShadow is true and if FirstPersonPrimitiveType is not set to WorldSpaceRepresentation.]`
- `bool bCastInsetShadow [Whether this component should create a per-object shadow that gives higher effective shadow resolution.
Useful for cinematic character shadowing. Assumed to be enabled if bSelfShadowOnly is enabled.]`
- `bool bCastShadowAsTwoSided [Whether this primitive should cast dynamic shadows as if it were a two sided material.]`
- `bool bCastStaticShadow [Whether the object should cast a static shadow from shadow casting lights. This flag is only used if CastShadow is true and if FirstPersonPrimitiveType is not set to FirstPerson.]`
- `bool bCastVolumetricTranslucentShadow [Whether the object should cast a volumetric translucent shadow.
Volumetric translucent shadows are useful for primitives with smoothly changing opacity like particles representing a volume,
but have artifacts when used on highly opaque surfaces. This flag is only used if CastShadow is true and if FirstPersonPrimitiveType is not set to FirstPerson.]`
- `bool bConsiderForActorPlacementWhenHidden [If true, this component will be considered for placement when dragging and placing items in the editor even if it is not visible, such as in the case of hidden collision meshes]`
- `bool bEmissiveLightSource [Whether the primitive will be used as an emissive light source.]`
- `bool bEnableAutoLODGeneration [Whether to include this component in HLODs or not.]`
- `bool bExcludeFromLightAttachmentGroup [If set, then it overrides any bLightAttachmentsAsGroup set in a parent.]`
- `bool bFillCollisionUnderneathForNavmesh [If set, navmesh will not be generated under the surface of the geometry]`
- `bool bForceMipStreaming [If true, forces mips for textures used by this component to be resident when this component's level is loaded.]`
- `bool bGenerateOverlapEvents [If true, this component will generate overlap events when it is overlapping other components (eg Begin Overlap).
Both components (this and the other) must have this enabled for overlap events to occur.

@see [Overlap Events](https://docs.unrealengine.com/InteractiveExperiences/Physics/Collision/Overview#overlapandgenerateoverlapevents)
@see UpdateOverlaps(), BeginComponentOverlap(), EndComponentOverlap()]`
- `bool bHasPerInstanceHitProxies [If true a hit-proxy will be generated for each instance of instanced static meshes.
This allows for other systems, like selection in viewports, to function at the individual instance.]`
- `bool bHiddenInSceneCapture [When true, will not be captured by Scene Capture]`
- `bool bHoldout [If this is True, this primitive will render black with an alpha of 0, but all secondary effects (shadows, reflections, indirect lighting) remain. This feature requires activating the project setting(s) "Alpha Output", and "Support Primitive Alpha Holdout" if using the deferred renderer.]`
- `bool bIgnoreRadialForce [Will ignore radial forces applied to this component.]`
- `bool bIgnoreRadialImpulse [Will ignore radial impulses applied to this component.]`
- `bool bLightAttachmentsAsGroup [Whether to light this component and any attachments as a group.  This only has effect on the root component of an attachment tree.
When enabled, attached component shadowing settings like bCastInsetShadow, bCastVolumetricTranslucentShadow, etc, will be ignored.
This is useful for improving performance when multiple movable components are attached together.]`
- `bool bMultiBodyOverlap [If true, this component will generate individual overlaps for each overlapping physics body if it is a multi-body component. When false, this component will
generate only one overlap, regardless of how many physics bodies it has and how many of them are overlapping another component/body. This flag has no
influence on single body components.]`
- `bool bNeverDistanceCull [When enabled this object will not be culled by distance. This is ignored if a child of a HLOD.]`
- `bool bOnlyOwnerSee [If this is True, this component will only be visible when the view actor is the component's owner, directly or indirectly.]`
- `bool bOwnerNoSee [If this is True, this component won't be visible when the view actor is the component's owner, directly or indirectly. Will be internally set to true when FirstPersonPrimitiveType is set to WorldSpaceRepresentation.]`
- `bool bRasterizeAsFilledConvexVolume [If set, the geometry gathered for navigation data generation will be converted into a filled vertical convex volume.
It means that all collision geometries of the asset are merged vertically resulting in a grid of vertical columns that encompass the asset.
This can be useful to represent the interior of the surface and prevent navmesh inside.]`
- `bool bReceiveMobileCSMShadows [Mobile only:
If disabled this component will not receive CSM shadows. (Components that do not receive CSM may have reduced shading cost)]`
- `bool bReceivesDecals [Whether the primitive receives decals.]`
- `bool bRenderCustomDepth [If true, this component will be rendered in the CustomDepth pass (usually used for outlines)]`
- `bool bRenderInDepthPass [If true, this component will be rendered in the depth pass even if it's not rendered in the main pass]`
- `bool bRenderInMainPass [If true, this component will be rendered in the main pass (z prepass, basepass, transparency)]`
- `bool bReplicatePhysicsToAutonomousProxy [True if physics should be replicated to autonomous proxies. This should be true for
              server-authoritative simulations, and false for client authoritative simulations.]`
- `bool bReturnMaterialOnMove [If true, component sweeps will return the material in their hit result.
@see MoveComponent(), FHitResult]`
- `bool bSelfShadowOnly [When enabled, the component will only cast a shadow on itself and not other components in the world.
This is especially useful for first person weapons, and forces bCastInsetShadow to be enabled.]`
- `bool bSingleSampleShadowFromStationaryLights [Whether the whole component should be shadowed as one from stationary lights, which makes shadow receiving much cheaper.
When enabled shadowing data comes from the volume lighting samples precomputed by Lightmass, which are very sparse.
This is currently only used on stationary directional lights.]`
- `bool bStaticWhenNotMoveable [When false, the underlying physics body will contain all sim data (mass, inertia tensor, etc) even if mobility is not set to Moveable]`
- `bool bTraceComplexOnMove [If true, component sweeps with this component should trace against complex collision during movement (for example, each triangle of a mesh).
If false, collision will be resolved against simple collision bounds instead.
@see MoveComponent()]`
- `bool bTreatAsBackgroundForOcclusion [Treat this primitive as part of the background for occlusion purposes. This can be used as an optimization to reduce the cost of rendering skyboxes, large ground planes that are part of the vista, etc.]`
- `bool bUseAsOccluder [Whether to render the primitive in the depth only pass.
This should generally be true for all objects, and let the renderer make decisions about whether to render objects in the depth only pass.
@todo - if any rendering features rely on a complete depth only pass, this variable needs to go away.]`
- `bool bVisibleInRayTracing [If true, this component will be visible in ray tracing effects. Turning this off will remove it from ray traced reflections, shadows, etc.]`
- `bool bVisibleInRealTimeSkyCaptures [If true, this component will be visible in real-time sky light reflection captures.]`
- `bool bVisibleInReflectionCaptures [If true, this component will be visible in reflection captures.]`
- `bool bVisibleInSceneCaptureOnly [When true, will only be visible in Scene Capture]`


**方法**:

- `FVector GetBoundingBoxExtents() const`
- `FVector GetBoundsOrigin() const`
- `FVector GetBoundsExtent() const`
- `float GetBoundsRadius() const`
- `bool GetbSelectable() const`
- `SetbSelectable(bool bSelectable)`
- `SetLightmapType(ELightmapType Type)`
- `AddAngularImpulseInDegrees(FVector Impulse, FName BoneName = NAME_None, bool bVelChange = false)`  
  Add an angular impulse to a single rigid body. Good for one time instant burst.

@param  AngularImpulse  Magnitude and direction of impulse to apply. Direction is axis of rotation.
@param  BoneName        If a SkeletalMeshComponent, name of body to apply angular impulse to. 'None' indicates root body.
@param  bVelChange      If true, the Strength is taken as a change in angular velocity instead of an impulse (ie. mass will have no effect).
- `AddAngularImpulseInRadians(FVector Impulse, FName BoneName = NAME_None, bool bVelChange = false)`  
  Add an angular impulse to a single rigid body. Good for one time instant burst.

@param  AngularImpulse  Magnitude and direction of impulse to apply. Direction is axis of rotation.
@param  BoneName        If a SkeletalMeshComponent, name of body to apply angular impulse to. 'None' indicates root body.
@param  bVelChange      If true, the Strength is taken as a change in angular velocity instead of an impulse (ie. mass will have no effect).
- `AddForce(FVector Force, FName BoneName = NAME_None, bool bAccelChange = false)`  
  Add a force to a single rigid body.
This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.

@param  Force            Force vector to apply. Magnitude indicates strength of force.
@param  BoneName         If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body.
@param  bAccelChange If true, Force is taken as a change in acceleration instead of a physical force (i.e. mass will have no effect).
- `AddForceAtLocation(FVector Force, FVector Location, FName BoneName = NAME_None)`  
  Add a force to a single rigid body at a particular location in world space.
This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.

@param Force            Force vector to apply. Magnitude indicates strength of force.
@param Location         Location to apply force, in world space.
@param BoneName         If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body.
- `AddForceAtLocationLocal(FVector Force, FVector Location, FName BoneName = NAME_None)`  
  Add a force to a single rigid body at a particular location. Both Force and Location should be in body space.
This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.

@param Force            Force vector to apply. Magnitude indicates strength of force.
@param Location         Location to apply force, in component space.
@param BoneName         If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body.
- `AddImpulse(FVector Impulse, FName BoneName = NAME_None, bool bVelChange = false)`  
  Add an impulse to a single rigid body. Good for one time instant burst.

@param  Impulse         Magnitude and direction of impulse to apply.
@param  BoneName        If a SkeletalMeshComponent, name of body to apply impulse to. 'None' indicates root body.
@param  bVelChange      If true, the Strength is taken as a change in velocity instead of an impulse (ie. mass will have no effect).
- `AddImpulseAtLocation(FVector Impulse, FVector Location, FName BoneName = NAME_None)`  
  Add an impulse to a single rigid body at a specific location.

@param  Impulse         Magnitude and direction of impulse to apply.
@param  Location        Point in world space to apply impulse at.
@param  BoneName        If a SkeletalMeshComponent, name of bone to apply impulse to. 'None' indicates root body.
- `AddRadialForce(FVector Origin, float32 Radius, float32 Strength, ERadialImpulseFalloff Falloff, bool bAccelChange = false)`  
  Add a force to all bodies in this component, originating from the supplied world-space location.

@param Origin           Origin of force in world space.
@param Radius           Radius within which to apply the force.
@param Strength         Strength of force to apply.
@param Falloff              Allows you to control the strength of the force as a function of distance from Origin.
@param bAccelChange If true, Strength is taken as a change in acceleration instead of a physical force (i.e. mass will have no effect).
- `AddRadialImpulse(FVector Origin, float32 Radius, float32 Strength, ERadialImpulseFalloff Falloff, bool bVelChange = false)`  
  Add an impulse to all rigid bodies in this component, radiating out from the specified position.

@param Origin                Point of origin for the radial impulse blast, in world space
@param Radius                Size of radial impulse. Beyond this distance from Origin, there will be no affect.
@param Strength              Maximum strength of impulse applied to body.
@param Falloff               Allows you to control the strength of the impulse as a function of distance from Origin.
@param bVelChange    If true, the Strength is taken as a change in velocity instead of an impulse (ie. mass will have no effect).
- `AddTorqueInDegrees(FVector Torque, FName BoneName = NAME_None, bool bAccelChange = false)`  
  Add a torque to a single rigid body.
@param Torque           Torque to apply. Direction is axis of rotation and magnitude is strength of torque.
@param BoneName         If a SkeletalMeshComponent, name of body to apply torque to. 'None' indicates root body.
@param bAccelChange If true, Torque is taken as a change in angular acceleration instead of a physical torque (i.e. mass will have no effect).
- `AddTorqueInRadians(FVector Torque, FName BoneName = NAME_None, bool bAccelChange = false)`  
  Add a torque to a single rigid body.
@param Torque           Torque to apply. Direction is axis of rotation and magnitude is strength of torque.
@param BoneName         If a SkeletalMeshComponent, name of body to apply torque to. 'None' indicates root body.
@param bAccelChange If true, Torque is taken as a change in angular acceleration instead of a physical torque (i.e. mass will have no effect).
- `AddVelocityChangeImpulseAtLocation(FVector Impulse, FVector Location, FName BoneName = NAME_None)`  
  Add an impulse to a single rigid body at a specific location. The Strength is taken as a change in angular velocity instead of an impulse (ie. mass will have no effect).

@param  Impulse         Magnitude and direction of impulse to apply.
@param  Location        Point in world space to apply impulse at.
@param  BoneName        If a SkeletalMeshComponent, name of bone to apply impulse to. 'None' indicates root body.
- `bool CanCharacterStepUp(APawn Pawn) const`  
  Return true if the given Pawn can step up onto this component.
This controls whether they can try to step up on it when they bump in to it, not whether they can walk on it after landing on it.
@param Pawn the Pawn that wants to step onto this component.
@see CanCharacterStepUpOn
- `ClearMoveIgnoreActors()`  
  Clear the list of actors we ignore when moving.
- `ClearMoveIgnoreComponents()`  
  Clear the list of components we ignore when moving.
- `TArray<AActor> CopyArrayOfMoveIgnoreActors()`  
  Returns the list of actors we currently ignore when moving.
- `TArray<UPrimitiveComponent> CopyArrayOfMoveIgnoreComponents()`  
  Returns the list of actors we currently ignore when moving.
- `UMaterialInstanceDynamic CreateDynamicMaterialInstance(int ElementIndex, UMaterialInterface SourceMaterial = nullptr, FName OptionalName = NAME_None)`  
  Creates a Dynamic Material Instance for the specified element index, optionally from the supplied material.
@param ElementIndex - The index of the skin to replace the material for.  If invalid, the material is unchanged and NULL is returned.
- `float32 GetAngularDamping() const`  
  Returns the angular damping of this component.
- `FBodyInstanceAsyncPhysicsTickHandle GetBodyInstanceAsyncPhysicsTickHandle(FName BoneName = NAME_None, bool bGetWelded = true, int Index = - 1) const`  
  Returns BodyInstanceAsyncPhysicsTickHandle of the component. For use in the Async Physics Tick event

@param BoneName                               Used to get body associated with specific bone. NAME_None automatically gets the root most body
@param bGetWelded                             If the component has been welded to another component and bGetWelded is true we return the single welded BodyInstance that is used in the simulation
@param Index                                  Index used in Components with multiple body instances

@return               Returns the BodyInstanceAsyncPhysicsTickHandle based on various states (does component have multiple bodies? Is the body welded to another body?)
- `FVector GetCenterOfMass(FName BoneName = NAME_None) const`  
  Get the center of mass of a single body. In the case of a welded body this will return the center of mass of the entire welded body (including its parent and children)
Objects that are not simulated return (0,0,0) as they do not have COM
@param BoneName                 If a SkeletalMeshComponent, name of body to get center of mass of. 'None' indicates root body.
- `float32 GetClosestPointOnCollision(FVector Point, FVector& OutPointOnBody, FName BoneName = NAME_None) const`  
  Returns the distance and closest point to the collision surface.
Component must have simple collision to be queried for closest point.

@param Point                          World 3D vector
@param OutPointOnBody         Point on the surface of collision closest to Point
@param BoneName                       If a SkeletalMeshComponent, name of body to set center of mass of. 'None' indicates root body.

@return               Success if returns > 0.f, if returns 0.f, it is either not convex or inside of the point
                              If returns < 0.f, this primitive does not have collsion
- `ECollisionEnabled GetCollisionEnabled() const`  
  Returns the form of collision for this component
- `ECollisionChannel GetCollisionObjectType() const`  
  Gets the collision object type
- `FName GetCollisionProfileName() const`  
  Get the collision profile name
- `ECollisionResponse GetCollisionResponseToChannel(ECollisionChannel Channel) const`  
  Gets the response type given a specific channel
- `int GetCustomPrimitiveDataIndexForScalarParameter(FName ParameterName) const`  
  Gets the index of the scalar parameter for the custom primitive data array
@param       ParameterName   The parameter name of the custom primitive
@return      The index of the custom primitive, INDEX_NONE (-1) if not found
- `int GetCustomPrimitiveDataIndexForVectorParameter(FName ParameterName) const`  
  Gets the index of the vector parameter for the custom primitive data array
@param       ParameterName   The parameter name of the custom primitive
@return      The index of the custom primitive, INDEX_NONE (-1) if not found
- `UMaterialInterface GetEditorMaterial(int ElementIndex) const`  
  Returns the material to show in the editor details panel as being used. Skips Nanite Override materials.
- `bool GetGenerateOverlapEvents() const`  
  If true, this component will generate overlap events when it is overlapping other components (eg Begin Overlap).
Both components (this and the other) must have this enabled for overlap events to occur.

@see [Overlap Events](https://docs.unrealengine.com/InteractiveExperiences/Physics/Collision/Overview#overlapandgenerateoverlapevents)
@see UpdateOverlaps(), BeginComponentOverlap(), EndComponentOverlap()
- `bool GetGyroscopicTorqueEnabled() const`  
  Returns whether this component is affected by gyroscopic torque.
- `bool GetIgnoreBoundsForEditorFocus() const`  
  Whether or not the bounds of this component should be considered when focusing the editor camera to an actor with this component in it.
Useful for debug components which need a bounds for rendering but don't contribute to the visible part of the mesh in a meaningful way
- `FVector GetInertiaTensor(FName BoneName = NAME_None) const`  
  Returns the inertia tensor of this component in kg cm^2. The inertia tensor is in local component space.
- `float32 GetLinearDamping() const`  
  Returns the linear damping of this component.
- `float32 GetMass() const`  
  Returns the mass of this component in kg.
- `float32 GetMassScale(FName BoneName = NAME_None) const`  
  Returns the mass scale used to calculate the mass of a single physics body
- `UMaterialInterface GetMaterial(int ElementIndex) const`  
  Returns the material used by the element at the specified index
@param ElementIndex - The element to access the material of.
@return the material used by the indexed element of this mesh.
- `UMaterialInterface GetMaterialByName(FName MaterialSlotName) const`  
  Returns the material used by the element in the slot with the specified name.
@param MaterialSlotName - The slot name to access the material of.
@return the material used in the slot specified, or null if none exists or the slot name is not found.
- `UMaterialInterface GetMaterialFromCollisionFaceIndex(int FaceIndex, int& SectionIndex) const`  
  Try and retrieve the material applied to a particular collision face of mesh. Used with face index returned from collision trace.
     @param  FaceIndex               Face index from hit result that was hit by a trace
     @param  SectionIndex    Section of the mesh that the face belongs to
     @return                                 Material applied to section that the hit face belongs to
- `int GetMaterialIndex(FName MaterialSlotName) const`
- `TArray<FName> GetMaterialSlotNames() const`
- `float32 GetMaxDepenetrationVelocity(FName BoneName = NAME_None)`  
  The maximum velocity used to depenetrate this object from others when spawned or teleported with initial overlaps (does not affect overlaps as a result of normal movement).
A value of zero will allow objects that are spawned overlapping to go to sleep without moving rather than pop out of each other. E.g., use zero if you spawn dynamic rocks
partially embedded in the ground and want them to be interactive but not pop out of the ground when touched.
A negative value means that the config setting CollisionInitialOverlapDepenetrationVelocity will be used.
- `int GetNumMaterials() const`  
  Return number of material elements in this primitive
- `GetOverlappingActors(TArray<AActor>& OverlappingActors, TSubclassOf<AActor> ClassFilter = nullptr) const`  
  Returns a list of actors that this component is overlapping.
@param OverlappingActors             [out] Returned list of overlapping actors
@param ClassFilter                   [optional] If set, only returns actors of this class or subclasses
- `GetOverlappingComponents(TArray<UPrimitiveComponent>& OutOverlappingComponents) const`  
  Returns unique list of components this component is overlapping.
- `FVector GetPhysicsAngularVelocityInDegrees(FName BoneName = NAME_None) const`  
  Get the angular velocity of a single body, in degrees per second.
@param BoneName                 If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body.
- `FVector GetPhysicsAngularVelocityInRadians(FName BoneName = NAME_None) const`  
  Get the angular velocity of a single body, in radians per second.
@param BoneName                 If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body.
- `FVector GetPhysicsLinearVelocity(FName BoneName = NAME_None)`  
  Get the linear velocity of a single body.
@param BoneName                 If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body.
- `FVector GetPhysicsLinearVelocityAtPoint(FVector Point, FName BoneName = NAME_None)`  
  Get the linear velocity of a point on a single body.
@param Point                    Point is specified in world space.
@param BoneName                 If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body.
- `bool GetStaticWhenNotMoveable() const`
- `bool GetUpdateKinematicFromSimulation() const`  
  Returns whether this component should be updated by simulation when it is kinematic.
- `FWalkableSlopeOverride GetWalkableSlopeOverride() const`  
  Returns the slope override struct for this component.
- `IgnoreActorWhenMoving(AActor Actor, bool bShouldIgnore)`  
  Tells this component whether to ignore collision with all components of a specific Actor when this component is moved.
Components on the other Actor may also need to be told to do the same when they move.
Does not affect movement of this component when simulating physics.
- `IgnoreComponentWhenMoving(UPrimitiveComponent Component, bool bShouldIgnore)`  
  Tells this component whether to ignore collision with another component when this component is moved.
The other components may also need to be told to do the same when they move.
Does not affect movement of this component when simulating physics.
- `InvalidateLumenSurfaceCache()`  
  Invalidates Lumen surface cache and forces it to be refreshed. Useful to make material updates more responsive.
- `bool IsAnyRigidBodyAwake()`  
  Returns if any body in this component is currently awake and simulating.
- `bool IsExcludedFromHLODLevel(EHLODLevelExclusion HLODLevel) const`  
  Whether this primitive is excluded from the specified HLOD level
- `bool IsGravityEnabled() const`  
  Returns whether this component is affected by gravity. Returns always false if the component is not simulated.
- `bool IsMaterialSlotNameValid(FName MaterialSlotName) const`
- `bool IsOverlappingActor(const AActor Other) const`  
  Check whether this component is overlapping any component of the given Actor.
@param Other Actor to test this component against.
@return Whether this component is overlapping any component of the given Actor.
- `bool IsOverlappingComponent(const UPrimitiveComponent OtherComp) const`  
  Check whether this component is overlapping another component.
@param OtherComp Component to test this component against.
@return Whether this component is overlapping another component.
- `bool BoxOverlapComponent(FVector InBoxCentre, FBox InBox, bool bTraceComplex, bool bShowTrace, bool bPersistentShowTrace, FVector& HitLocation, FVector& HitNormal, FName& BoneName, FHitResult& OutHit)`  
  Perform a box overlap against a single component as an AABB (No rotation)
@param InBoxCentre The centre of the box to overlap with the component
@param InBox Description of the box to use in the overlap
@param bTraceComplex Whether or not to trace the complex physics representation or just the simple representation
@param bShowTrace Whether or not to draw the trace in the world (for debugging)
@param bPersistentShowTrace Whether or not to make the debugging draw stay in the world permanently
- `bool IsCollisionEnabled() const`  
  Utility to see if there is any form of collision (query or physics) enabled on this component.
- `bool IsPhysicsCollisionEnabled() const`  
  Utility to see if there is any physics collision enabled on this component.
- `bool IsQueryCollisionEnabled() const`  
  Utility to see if there is any query collision enabled on this component.
- `bool LineTraceComponent(FVector TraceStart, FVector TraceEnd, bool bTraceComplex, bool bShowTrace, bool bPersistentShowTrace, FVector& HitLocation, FVector& HitNormal, FName& BoneName, FHitResult& OutHit)`  
  Perform a line trace against a single component
@param TraceStart The start of the trace in world-space
@param TraceEnd The end of the trace in world-space
@param bTraceComplex Whether or not to trace the complex physics representation or just the simple representation
@param bShowTrace Whether or not to draw the trace in the world (for debugging)
@param bPersistentShowTrace Whether or not to make the debugging draw stay in the world permanently
- `bool SphereOverlapComponent(FVector InSphereCentre, float32 InSphereRadius, bool bTraceComplex, bool bShowTrace, bool bPersistentShowTrace, FVector& HitLocation, FVector& HitNormal, FName& BoneName, FHitResult& OutHit)`  
  Perform a sphere overlap against a single component
@param InSphereCentre The centre of the sphere to overlap with the component
@param InSphereRadius The Radius of the sphere to overlap with the component
@param bTraceComplex Whether or not to trace the complex physics representation or just the simple representation
@param bShowTrace Whether or not to draw the trace in the world (for debugging)
@param bPersistentShowTrace Whether or not to make the debugging draw stay in the world permanently
- `bool SphereTraceComponent(FVector TraceStart, FVector TraceEnd, float32 SphereRadius, bool bTraceComplex, bool bShowTrace, bool bPersistentShowTrace, FVector& HitLocation, FVector& HitNormal, FName& BoneName, FHitResult& OutHit)`  
  Perform a sphere trace against a single component
@param TraceStart The start of the trace in world-space
@param TraceEnd The end of the trace in world-space
@param SphereRadius Radius of the sphere to trace against the component
@param bTraceComplex Whether or not to trace the complex physics representation or just the simple representation
@param bShowTrace Whether or not to draw the trace in the world (for debugging)
@param bPersistentShowTrace Whether or not to make the debugging draw stay in the world permanently
- `PutRigidBodyToSleep(FName BoneName = NAME_None)`  
  Force a single body back to sleep.
@param  BoneName        If a SkeletalMeshComponent, name of body to put to sleep. 'None' indicates root body.
- `RegisterAsFocalPointInPhysicsReplicationLOD() const`  
  Register this components physics object as a focal particle in Physics Replication LOD
- `FVector ScaleByMomentOfInertia(FVector InputVector, FName BoneName = NAME_None) const`  
  Scales the given vector by the world space moment of inertia. Useful for computing the torque needed to rotate an object.
- `SetAffectDistanceFieldLighting(bool NewAffectDistanceFieldLighting)`  
  Changes the value of Affect Distance Field Lighting
- `SetAffectDynamicIndirectLighting(bool bNewAffectDynamicIndirectLighting)`  
  Changes the value of bAffectDynamicIndirectLighting
- `SetAffectIndirectLightingWhileHidden(bool bNewAffectIndirectLightingWhileHidden)`  
  Changes the value of bAffectIndirectLightingWhileHidden
- `SetAllAllowPartialIslandSleep(bool InAllowPartialIslandSleep = true)`  
  [EXPERIMENTAL] Set whether all bodies in this component allow Partial Island Sleeping for the island they are in.
      Note that Partial Island Sleeping is a CPU optimization disabling non-moving bodies in the solver.
      This feature is useful for scenes with many rigid bodies but can affect the physics behavior.
- `SetAllMassScale(float32 InMassScale = 1.000000)`  
  Change the mass scale used fo all bodies in this component
- `SetAllowPartialIslandSleep(bool InAllowPartialIslandSleep = true, FName BoneName = NAME_None)`  
  [EXPERIMENTAL] Set whether this component allows Partial Island Sleeping for the island it is in.
      Note that Partial Island Sleeping is a CPU optimization disabling non-moving bodies in the solver.
      This feature is useful for scenes with many rigid bodies but can affect the physics behavior.
- `SetAllPhysicsAngularVelocityInDegrees(FVector NewAngVel, bool bAddToCurrent = false)`  
  Set the angular velocity of all bodies in this component.

@param NewAngVel                New angular velocity to apply to physics, in degrees per second.
@param bAddToCurrent    If true, NewAngVel is added to the existing angular velocity of all bodies.
- `SetAllPhysicsAngularVelocityInRadians(FVector NewAngVel, bool bAddToCurrent = false)`  
  Set the angular velocity of all bodies in this component.

@param NewAngVel                New angular velocity to apply to physics, in radians per second.
@param bAddToCurrent    If true, NewAngVel is added to the existing angular velocity of all bodies.
- `SetAllPhysicsLinearVelocity(FVector NewVel, bool bAddToCurrent = false)`  
  Set the linear velocity of all bodies in this component.

@param NewVel                   New linear velocity to apply to physics.
@param bAddToCurrent    If true, NewVel is added to the existing velocity of the body.
- `SetAllUseCCD(bool InUseCCD)`  
  Set whether all bodies in this component should use Continuous Collision Detection
- `SetAllUseMACD(bool InUseMACD)`  
  [EXPERIMENTAL] Set whether all bodies in this component should use Motion-Aware Collision Detection
- `SetAngularDamping(float32 InDamping)`  
  Sets the angular damping of this component.
- `SetBoundsScale(float32 NewBoundsScale = 1.000000)`  
  Scale the bounds of this object, used for frustum culling. Useful for features like WorldPositionOffset.
- `SetCastContactShadow(bool bInCastContactShadow)`  
  Changes the value of bCastContactShadow.
- `SetCastHiddenShadow(bool NewCastHiddenShadow)`  
  Changes the value of CastHiddenShadow.
- `SetCastInsetShadow(bool bInCastInsetShadow)`  
  Changes the value of CastInsetShadow.
- `SetCastShadow(bool NewCastShadow)`  
  Changes the value of CastShadow.
- `SetCenterOfMass(FVector CenterOfMassOffset, FName BoneName = NAME_None)`  
  Set the center of mass of a single body. This will offset the physx-calculated center of mass.
Note that in the case where multiple bodies are attached together, the center of mass will be set for the entire group.
@param CenterOfMassOffset               User specified offset for the center of mass of this object, from the calculated location.
@param BoneName                 If a SkeletalMeshComponent, name of body to set center of mass of. 'None' indicates root body.
- `SetCollisionEnabled(ECollisionEnabled NewType)`  
  Controls what kind of collision is enabled for this body
- `SetCollisionObjectType(ECollisionChannel Channel)`  
  Changes the collision channel that this object uses when it moves
@param      Channel     The new channel for this component to use
- `SetCollisionProfileName(FName InCollisionProfileName, bool bUpdateOverlaps = true)`  
  Set Collision Profile Name
This function is called by constructors when they set ProfileName
This will change current CollisionProfileName to be this, and overwrite Collision Setting

@param InCollisionProfileName : New Profile Name
- `SetCollisionResponseToAllChannels(ECollisionResponse NewResponse)`  
  Changes all ResponseToChannels container for this PrimitiveComponent. to be NewResponse

@param       NewResponse  What the new response should be to the supplied Channel
- `SetCollisionResponseToChannel(ECollisionChannel Channel, ECollisionResponse NewResponse)`  
  Changes a member of the ResponseToChannels container for this PrimitiveComponent.

@param       Channel      The channel to change the response of
@param       NewResponse  What the new response should be to the supplied Channel
- `SetConstraintMode(EDOFMode ConstraintMode)`  
  Sets the constraint mode of the component.
@param ConstraintMode The type of constraint to use.
- `SetCullDistance(float32 NewCullDistance)`  
  Changes the value of CullDistance.
@param NewCullDistance - The value to assign to CullDistance.
- `SetCustomDepthStencilValue(int Value)`  
  Sets the CustomDepth stencil value (0 - 255) and marks the render state dirty.
- `SetCustomDepthStencilWriteMask(ERendererStencilMask WriteMaskBit)`  
  Sets the CustomDepth stencil write mask and marks the render state dirty.
- `SetCustomPrimitiveDataFloat(int DataIndex, float32 Value)`  
  Set custom primitive data at index DataIndex. This sets the run-time data only, so it doesn't serialize.
- `SetCustomPrimitiveDataFloatArray(int DataIndex, TArray<float32> Values)`  
  Set custom primitive data, an array of floats at once, from index DataIndex to index DataIndex + Values.Num(). This sets the run-time data only, so it doesn't serialize.
- `SetCustomPrimitiveDataVector2(int DataIndex, FVector2D Value)`  
  Set custom primitive data, two floats at once, from index DataIndex to index DataIndex + 1. This sets the run-time data only, so it doesn't serialize.
- `SetCustomPrimitiveDataVector3(int DataIndex, FVector Value)`  
  Set custom primitive data, three floats at once, from index DataIndex to index DataIndex + 2. This sets the run-time data only, so it doesn't serialize.
- `SetCustomPrimitiveDataVector4(int DataIndex, FVector4 Value)`  
  Set custom primitive data, four floats at once, from index DataIndex to index DataIndex + 3. This sets the run-time data only, so it doesn't serialize.
- `SetDefaultCustomPrimitiveDataFloat(int DataIndex, float32 Value)`  
  Set default custom primitive data at index DataIndex, and marks the render state dirty
- `SetDefaultCustomPrimitiveDataFloatArray(int DataIndex, TArray<float32> Values)`  
  Set default custom primitive data, an array floats at once, from index DataIndex to index DataIndex + Values.Num(), and marks the render state dirty
- `SetDefaultCustomPrimitiveDataVector2(int DataIndex, FVector2D Value)`  
  Set default custom primitive data, two floats at once, from index DataIndex to index DataIndex + 1, and marks the render state dirty
- `SetDefaultCustomPrimitiveDataVector3(int DataIndex, FVector Value)`  
  Set default custom primitive data, three floats at once, from index DataIndex to index DataIndex + 2, and marks the render state dirty
- `SetDefaultCustomPrimitiveDataVector4(int DataIndex, FVector4 Value)`  
  Set default custom primitive data, four floats at once, from index DataIndex to index DataIndex + 3, and marks the render state dirty
- `SetEmissiveLightSource(bool NewEmissiveLightSource)`  
  Changes the value of EmissiveLightSource.
- `SetEnableGravity(bool bGravityEnabled)`  
  Enables/disables whether this component is affected by gravity. This applies only to components with bSimulatePhysics set to true.
- `SetExcludedFromHLODLevel(EHLODLevelExclusion HLODLevel, bool bExcluded)`  
  Exclude this primitive from the specified HLOD level
- `SetExcludeFromLightAttachmentGroup(bool bInExcludeFromLightAttachmentGroup)`  
  Changes the value of ExcludeFromLightAttachmentGroup.
- `SetFirstPersonPrimitiveType(EFirstPersonPrimitiveType Value)`  
  Sets FirstPersonPrimitiveType property and marks the render state dirty.
- `SetGenerateOverlapEvents(bool bInGenerateOverlapEvents)`  
  Modifies value returned by GetGenerateOverlapEvents()
- `SetGyroscopicTorqueEnabled(bool bInGyroscopicTorqueEnabled)`  
  Enabled/disables whether this body is affected by gyroscopic torque, mainly useful for long/thin objects that spin
- `SetHiddenInSceneCapture(bool bValue)`  
  Sets bHideInSceneCapture property and marks the render state dirty.
- `SetHoldout(bool bNewHoldout)`  
  Changes the value of bHoldout
- `SetIgnoreBoundsForEditorFocus(bool bIgnore)`  
  Set if we should ignore bounds when focusing the editor camera.
- `SetLightAttachmentsAsGroup(bool bInLightAttachmentsAsGroup)`  
  Changes the value of LightAttachmentsAsGroup.
- `SetLightingChannels(bool bChannel0, bool bChannel1, bool bChannel2)`
- `SetLinearDamping(float32 InDamping)`  
  Sets the linear damping of this component.
- `SetMassOverrideInKg(FName BoneName = NAME_None, float32 MassInKg = 1.000000, bool bOverrideMass = true)`  
  Override the mass (in Kg) of a single physics body.
Note that in the case where multiple bodies are attached together, the override mass will be set for the entire group.
Set the Override Mass to false if you want to reset the body's mass to the auto-calculated physx mass.
- `SetMassScale(FName BoneName = NAME_None, float32 InMassScale = 1.000000)`  
  Change the mass scale used to calculate the mass of a single physics body
- `SetMaterial(int ElementIndex, UMaterialInterface Material)`  
  Changes the material applied to an element of the mesh.
@param ElementIndex - The element to access the material of.
@return the material used by the indexed element of this mesh.
- `SetMaterialByName(FName MaterialSlotName, UMaterialInterface Material)`  
  Changes the material applied to an element of the mesh.
@param MaterialSlotName - The slot name to access the material of.
@return the material used by the indexed element of this mesh.
- `SetMaxDepenetrationVelocity(FName BoneName = NAME_None, float32 InMaxDepenetrationVelocity = - 1.000000)`  
  The maximum velocity used to depenetrate this object from others when spawned or teleported with initial overlaps (does not affect overlaps as a result of normal movement).
A value of zero will allow objects that are spawned overlapping to go to sleep without moving rather than pop out of each other. E.g., use zero if you spawn dynamic rocks
partially embedded in the ground and want them to be interactive but not pop out of the ground when touched.
A negative value means that the config setting CollisionInitialOverlapDepenetrationVelocity will be used.
- `SetNotifyRigidBodyCollision(bool bNewNotifyRigidBodyCollision)`  
  Changes the value of bNotifyRigidBodyCollision
- `SetOnlyOwnerSee(bool bNewOnlyOwnerSee)`  
  Changes the value of bOnlyOwnerSee.
- `SetOwnerNoSee(bool bNewOwnerNoSee)`  
  Changes the value of bOwnerNoSee.
- `SetPhysicsAngularVelocityInDegrees(FVector NewAngVel, bool bAddToCurrent = false, FName BoneName = NAME_None)`  
  Set the angular velocity of a single body.
This should be used cautiously - it may be better to use AddTorque or AddImpulse.

@param NewAngVel                New angular velocity to apply to body, in degrees per second.
@param bAddToCurrent    If true, NewAngVel is added to the existing angular velocity of the body.
@param BoneName                 If a SkeletalMeshComponent, name of body to modify angular velocity of. 'None' indicates root body.
- `SetPhysicsAngularVelocityInRadians(FVector NewAngVel, bool bAddToCurrent = false, FName BoneName = NAME_None)`  
  Set the angular velocity of a single body.
This should be used cautiously - it may be better to use AddTorque or AddImpulse.

@param NewAngVel                New angular velocity to apply to body, in radians per second.
@param bAddToCurrent    If true, NewAngVel is added to the existing angular velocity of the body.
@param BoneName                 If a SkeletalMeshComponent, name of body to modify angular velocity of. 'None' indicates root body.
- `SetPhysicsLinearVelocity(FVector NewVel, bool bAddToCurrent = false, FName BoneName = NAME_None)`  
  Set the linear velocity of a single body.
This should be used cautiously - it may be better to use AddForce or AddImpulse.

@param NewVel                   New linear velocity to apply to physics.
@param bAddToCurrent    If true, NewVel is added to the existing velocity of the body.
@param BoneName                 If a SkeletalMeshComponent, name of body to modify velocity of. 'None' indicates root body.
- `SetPhysicsMaxAngularVelocityInDegrees(float32 NewMaxAngVel, bool bAddToCurrent = false, FName BoneName = NAME_None)`  
  Set the maximum angular velocity of a single body.

@param NewMaxAngVel             New maximum angular velocity to apply to body, in degrees per second.
@param bAddToCurrent    If true, NewMaxAngVel is added to the existing maximum angular velocity of the body.
@param BoneName                 If a SkeletalMeshComponent, name of body to modify maximum angular velocity of. 'None' indicates root body.
- `SetPhysicsMaxAngularVelocityInRadians(float32 NewMaxAngVel, bool bAddToCurrent = false, FName BoneName = NAME_None)`  
  Set the maximum angular velocity of a single body.

@param NewMaxAngVel             New maximum angular velocity to apply to body, in radians per second.
@param bAddToCurrent    If true, NewMaxAngVel is added to the existing maximum angular velocity of the body.
@param BoneName                 If a SkeletalMeshComponent, name of body to modify maximum angular velocity of. 'None' indicates root body.
- `SetPhysMaterialOverride(UPhysicalMaterial NewPhysMaterial)`  
  Changes the current PhysMaterialOverride for this component.
Note that if physics is already running on this component, this will _not_ alter its mass/inertia etc,
it will only change its surface properties like friction.
- `SetReceivesDecals(bool bNewReceivesDecals)`  
  Changes the value of bReceivesDecals.
- `SetRenderCustomDepth(bool bValue)`  
  Sets the bRenderCustomDepth property and marks the render state dirty.
- `SetRenderInDepthPass(bool bValue)`  
  Sets bRenderInDepthPass property and marks the render state dirty.
- `SetRenderInMainPass(bool bValue)`  
  Sets bRenderInMainPass property and marks the render state dirty.
- `SetScalarParameterForCustomPrimitiveData(FName ParameterName, float32 Value)`  
  Set a scalar parameter for custom primitive data. This sets the run-time data only, so it doesn't serialize.
@param       ParameterName   The parameter name of the custom primitive
@param       Value                   The new value of the custom primitive
- `SetScalarParameterForDefaultCustomPrimitiveData(FName ParameterName, float32 Value)`  
  Set a scalar parameter for default custom primitive data. This will be serialized and is useful in construction scripts.
@param       ParameterName   The parameter name of the custom primitive
@param       Value                   The new value of the custom primitive
- `SetSimulatePhysics(bool bSimulate)`  
  When this component is a simple/single body, this will enable or disable simulation on that body. In addition,
if this component is currently attached to something, beginning simulation will detach it. Note that stopping
simulation will not reattach the component - that would need to be done explicitly.

For more complex components (e.g. skeletal meshes), simulation will apply to the bodies contained by the
component (e.g. using a physics asset). Since these bodies will be free to move independently of the component,
the component will not be automatically detached. If detachment is required, then that can be done by
calling DetachFromComponent.

@param bSimulate New simulation state for the single body or multiple bodies
- `SetSingleSampleShadowFromStationaryLights(bool bNewSingleSampleShadowFromStationaryLights)`  
  Changes the value of bSingleSampleShadowFromStationaryLights.
- `SetStaticWhenNotMoveable(bool bInStaticWhenNotMoveable)`
- `SetTranslucencySortDistanceOffset(float32 NewTranslucencySortDistanceOffset)`  
  Changes the value of TranslucencySortDistanceOffset.
- `SetTranslucentSortPriority(int NewTranslucentSortPriority)`  
  Changes the value of TranslucentSortPriority.
- `SetUpdateKinematicFromSimulation(bool bUpdateKinematicFromSimulation)`  
  Enables/disables whether this component should be updated by simulation when it is kinematic. This is needed if (for example) its velocity needs to be accessed.
- `SetUseCCD(bool InUseCCD, FName BoneName = NAME_None)`  
  Set whether this component should use Continuous Collision Detection
- `SetUseMACD(bool InUseMACD, FName BoneName = NAME_None)`  
  [EXPERIMENTAL] Set whether this component should use Motion-Aware Collision Detection
- `SetVectorParameterForCustomPrimitiveData(FName ParameterName, FVector4 Value)`  
  Set a vector parameter for custom primitive data. This sets the run-time data only, so it doesn't serialize.
@param       ParameterName   The parameter name of the custom primitive
@param       Value                   The new value of the custom primitive
- `SetVectorParameterForDefaultCustomPrimitiveData(FName ParameterName, FVector4 Value)`  
  Set a vector parameter for default custom primitive data. This will be serialized and is useful in construction scripts.
@param       ParameterName   The parameter name of the custom primitive
@param       Value                   The new value of the custom primitive
- `SetVisibleInRayTracing(bool bNewVisibleInRayTracing)`  
  Changes the value of bIsVisibleInRayTracing.
- `SetVisibleInSceneCaptureOnly(bool bValue)`  
  Sets bVisibleInSceneCaptureOnly property and marks the render state dirty.
- `SetWalkableSlopeOverride(FWalkableSlopeOverride NewOverride)`  
  Sets a new slope override for this component instance.
- `UnregisterAsFocalPointInPhysicsReplicationLOD() const`  
  Unregister this components physics object from being a focal particle in Physics Replication LOD
- `WakeAllRigidBodies()`  
  Ensure simulation is running for all bodies in this component.
- `WakeRigidBody(FName BoneName = NAME_None)`  
  'Wake' physics simulation for a single body.
@param  BoneName        If a SkeletalMeshComponent, name of body to wake. 'None' indicates root body.
- `bool WasRecentlyRendered(float32 Tolerance = 0.200000) const`  
  Returns true if this component has been rendered "recently", with a tolerance in seconds to define what "recent" means.
e.g.: If a tolerance of 0.1 is used, this function will return true only if the actor was rendered in the last 0.1 seconds of game time.

@param Tolerance  How many seconds ago the actor last render time can be and still count as having been "recently" rendered.
@return Whether this actor was recently rendered.
- `TArray<AActor> GetOverlappingActorsOfClass(TSubclassOf<AActor> ActorClass) const`  
  Gets all actors that are overlapping this component that have a specific class.

---

