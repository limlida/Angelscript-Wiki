### UPhysicsControlComponent


This is the main Physics Control Component class which manages Controls and Body Modifiers associated
with one or more static or skeletal meshes. You can add this as a component to an actor containing a
mesh and then use it to create, configure and destroy Controls/Body Modifiers:

Controls are used to control one physics body relative to another (or the world). These controls are done
through physical spring/damper drives.

Body Modifiers are used to update the most important physical properties of physics bodies such as whether
they are simulated vs kinematic, or whether they experience gravity.

Note that Controls and Body Modifiers are given names (which are predictable). These names can then be stored
(perhaps in arrays) to make it easy to quickly change multiple Controls/Body Modifiers.

**属性**:

- `FString DebugBodyModifierDetailFilter [Display detailed info for body modifiers containing this string (if non-empty) when this component is selected]`
- `FString DebugControlDetailFilter [Display detailed info for controls containing this string (if non-empty) when this component is selected]`
- `int MaxNumControlsOrModifiersPerName [Upper limit on the number of controls or modifiers that will be created using the same name (which
will get a numerical postfix). When this limit is reached a warning will be issued  and the control
or modifier won't be created. This is to avoid problems if controls or modifiers are being created
dynamically, and can generally be a "moderately large" number, depending on how many controls or
modifiers you expect to create.]`
- `TSoftObjectPtr<UPhysicsControlAsset> PhysicsControlAsset [Optional PhysicsControlAsset to use. If this is set, then controls can be instantiated from the asset.
Individual profiles can subsequently be "invoked" referencing the named profiles in the asset.]`
- `float32 TeleportDistanceThreshold [If the component moves by more than this distance then it is treated as a teleport,
which prevents velocities being used for a frame. It is also used as the threshold for
teleporting when moving kinematic objects. Zero or negative disables.]`
- `float32 TeleportRotationThreshold [If the component rotates by more than this angle (in degrees) then it is treated as a teleport,
which prevents velocities being used for a frame. It is also used as the threshold for
teleporting when moving kinematic objects. Zero or negative disables.]`
- `float32 VelocityPredictionTime [The time used when "predicting" the target position/orientation. Zero will disable the visualization
of this.]`
- `float32 VisualizationSizeScale [Size of the gizmos etc used during visualization]`
- `bool bAttemptToRecreateDisabledControls [If set then controls that have been disabled due to the bodies being set to NoCollision (for
example) will be reinitialized, if possible, when those bodies are returned to the simulation.]`
- `bool bShowDebugBodyModifierList [Display all the body modifiers and their basic properties when this component is selected]`
- `bool bShowDebugControlList [Display all the controls and their basic properties when this component is selected]`
- `bool bShowDebugVisualization [Visualize the controls when this component is selected]`
- `bool bWarnAboutInvalidNames [Warn if an an invalid control or body modifier name is used. This can happen quite easily since
they're only referenced through names, which are likely auto-generated. However, it may happen for
valid reasons, in which case you'll want to disable this.]`


**方法**:

- `AddBodyModifiersToSet(FPhysicsControlNames& NewSet, TArray<FName> BodyModifiers, FName Set)`  
  Adds body modifiers to a Set. This will add a new set if necessary. For example, you might
make a set of Arm body modifiers by calling this twice, passing in the left and right
arm body modifiers.
- `AddBodyModifierToSet(FPhysicsControlNames& NewSet, FName BodyModifier, FName Set)`  
  Adds a body modifier to a Set. This will add a new set if necessary. For example, you might
make a set of body modifiers called "Feet" by calling this twice, passing in the left and right
foot body modifiers.
- `AddControlsToSet(FPhysicsControlNames& NewSet, TArray<FName> Controls, FName Set)`  
  Adds Controls to a Set. This will add a new set if necessary. For example, you might
make a set of ParentSpace Arm controls by calling this twice, passing in the left and right
arm ParentSpace controls.

@return The new/updated set of controls, in case you want to store it
- `AddControlToSet(FPhysicsControlNames& NewSet, FName Control, FName Set)`  
  Adds a Control to a Set. This will add a new set if necessary. For example, you might
make a set of Controls called "ParentSpace_Feet" by calling this twice, passing in the left and right
foot ParentSpace controls.

@return The new/updated set of controls, in case you want to store it
- `FName CreateBodyModifier(UPrimitiveComponent Component, FName BoneName, FName Set, FPhysicsControlModifierData BodyModifierData)`  
  Creates a new body modifier for mesh components

@param Component The Mesh Component used as a target for the modifier
@param BoneName The bone name, if a skeletal mesh is used
@param Set Which set to include the body modifier in (optional). Note that it automatically
       gets added to the set "All"
@param BodyModifierData The initial properties of the modifier
- `TMap<FName,FPhysicsControlNames> CreateBodyModifiersFromLimbBones(FPhysicsControlNames& AllBodyModifiers, TMap<FName,FPhysicsControlLimbBones> LimbBones, FPhysicsControlModifierData BodyModifierData)`  
  Creates a collection of controls controlling a skeletal mesh, grouped together in limbs

@param AllControls A single container for all the controls that have been created
@param LimbBones A map relating the limbs and the bones that they contain. Typically create this
                 using GetLimbBonesFromSkeletalMesh
@param BodyModifierData The initial properties of the modifier

@return A map containing the modifiers for each limb
- `TArray<FName> CreateBodyModifiersFromSkeletalMeshBelow(USkeletalMeshComponent SkeletalMeshComponent, FName BoneName, bool bIncludeSelf, FName Set, FPhysicsControlModifierData BodyModifierData)`  
  Creates new body modifiers for skeletal mesh components

@param SkeletalMeshComponent The skeletal mesh which will have body modifiers
@param BoneName The bone name below which modifiers should be created
@param bIncludeSelf Whether or not to include BoneName when creating modifiers
@param Set Which set to include the body modifier in (optional). Note that it automatically
       gets added to the set "All"
@param BodyModifierData The initial properties of the modifier
- `FName CreateControl(UPrimitiveComponent ParentComponent, FName ParentBoneName, UPrimitiveComponent ChildComponent, FName ChildBoneName, FPhysicsControlData ControlData, FPhysicsControlTarget ControlTarget, FName Set, FString NamePrefix = "")`  
  Creates a new control for mesh components

@param ControlData   Describes the initial strength etc of the new control
@param ControlTarget Describes the initial target for the new control
@param Set Which set to include the control in (optional). Note that it automatically
       gets added to the set "All"
@param NamePrefix Optional string that is prefixed to the control that is created.
@return The name of the new control
- `bool CreateControlsAndBodyModifiersFromLimbBones(FPhysicsControlNames& AllWorldSpaceControls, TMap<FName,FPhysicsControlNames>& LimbWorldSpaceControls, FPhysicsControlNames& AllParentSpaceControls, TMap<FName,FPhysicsControlNames>& LimbParentSpaceControls, FPhysicsControlNames& AllBodyModifiers, TMap<FName,FPhysicsControlNames>& LimbBodyModifiers, USkeletalMeshComponent SkeletalMeshComponent, TArray<FPhysicsControlLimbSetupData> LimbSetupData, FPhysicsControlData WorldSpaceControlData, FPhysicsControlData ParentSpaceControlData, FPhysicsControlModifierData BodyModifierData, UPrimitiveComponent WorldComponent = nullptr, FName WorldBoneName = NAME_None)`  
  Creates a collections of controls and body modifiers for a character, based on the description passed in.
This makes:
- World-space controls
- Parent-space controls
- Body modifiers
for all the body parts. In addition, they get added to sets, so they can be referenced later. Each control
is added to three sets:
- "All"
- "ControlType - i.e. "WorldSpace" or "ParentSpace", each of which will end up containing all controls of that type
- "ControlType_LimbName" - e.g. "WorldSpace_ArmLeft" or "ParentSpace_Head"
Each body modifier is added to "All" and a set named after the limb - e.g. "Spine" or "LegRight".
It is also possible to specify a mesh component to use for the "world" object - so that the world controls can
be made to work in the space of another object (or a bone if that is a skeletal mesh component)
- `bool CreateControlsAndBodyModifiersFromPhysicsControlAsset(USkeletalMeshComponent SkeletalMeshComponent, UPrimitiveComponent WorldComponent, FName WorldBoneName)`  
  This uses the control profile asset (that should have already been assigned in our data) to create
controls and body modifiers.
It is also possible to specify a mesh component to use for the "world" object - so that the world controls can
be made to work in the space of another object (or a bone if that is a skeletal mesh component)
- `TMap<FName,FPhysicsControlNames> CreateControlsFromLimbBones(FPhysicsControlNames& AllControls, TMap<FName,FPhysicsControlLimbBones> LimbBones, EPhysicsControlType ControlType, FPhysicsControlData ControlData, UPrimitiveComponent WorldComponent = nullptr, FName WorldBoneName = NAME_None, FString NamePrefix = "")`  
  Creates a collection of controls controlling a skeletal mesh, grouped together in limbs

@param AllControls A single container for all the controls that have been created
@param LimbBones A map relating the limbs and the bones that they contain. Typically create this
       using GetLimbBonesFromSkeletalMesh
@param ControlType What type of control to create. This determines what the parent will be for each control
@param ControlData Describes the initial strength etc of the new control
@param WorldComponent Optional component to use as the parent object for any "world-space" controls
       that are created. Will be ignored if the controls being created are not world-space.
@param WorldBoneName Additional bone name to identify the world object if the WorldComponent is actually
       a skeletal mesh component.
@param NamePrefix Optional string that is prefixed to each control that is created.
@return A map containing the controls for each limb
- `TMap<FName,FPhysicsControlNames> CreateControlsFromLimbBonesAndConstraintProfile(FPhysicsControlNames& AllControls, TMap<FName,FPhysicsControlLimbBones> LimbBones, FName ConstraintProfile, bool bEnabled = true)`  
  Creates a collection of ParentSpace controls controlling a skeletal mesh, grouped together in limbs, initializing
them with a constraint profile

@param AllControls A single container for all the controls that have been created
@param LimbBones A map relating the limbs and the bones that they contain. Typically create this
                 using GetLimbBonesFromSkeletalMesh
@param ConstraintProfile The constraint profile to use for initializing the control strength and
                         damping (etc) parameters. Note that the controls will all be created in "
                         parent space" - i.e. with each part controlled relative to its parent. The
                         strength and damping will be taken from the values that the relevant joint
                         in the physics asset would have given the constraint profile (or the default
                         profile if it can't be found) - though they will not match exactly if the linear
                         drive and different x/y/z values, or if the angular drive was using twist/swing
                         instead of slerp. Note also that the joint constraints do not use the animation
                         velocity as a target, so when creating controls in this way the control
                         will set the skeletal animation velocity multiplier to zero.
@param bEnabled If true then the control will be enabled immediately. If false you will need to call
                SetControlEnabled(true) in order to enable it.
@return A map containing the controls for each limb
- `TArray<FName> CreateControlsFromSkeletalMesh(USkeletalMeshComponent SkeletalMeshComponent, TArray<FName> BoneNames, EPhysicsControlType ControlType, FPhysicsControlData ControlData, FName Set)`  
  Creates a collection of controls controlling a skeletal mesh

@param SkeletalMeshComponent The skeletal mesh which will have controls
@param BoneNames The names of bones for which controls should be created. Each bone will be the child in a control
@param ControlType What type of control to create. This determines what the parent will be for each control
@param ControlData   Describes the initial strength etc of the new control
@param Set Which set to include the control in (optional). Note that it automatically
       gets added to the set "All"
@return An array of the controls that have been created
- `TArray<FName> CreateControlsFromSkeletalMeshAndConstraintProfile(USkeletalMeshComponent SkeletalMeshComponent, TArray<FName> BoneNames, FName ConstraintProfile, FName Set, bool bEnabled = true)`  
  Creates a collection of ParentSpace controls controlling a skeletal mesh, initializing them
with a constraint profile

@param SkeletalMeshComponent The skeletal mesh which will have controls
@param BoneNames The names of bones for which controls should be created. Each bone will be the child in a control
@param ConstraintProfile The constraint profile to use for initializing the control strength and
                         damping (etc) parameters. Note that the controls will all be created in "
                         parent space" - i.e. with each part controlled relative to its parent. The
                         strength and damping will be taken from the values that the relevant joint
                         in the physics asset would have given the constraint profile (or the default
                         profile if it can't be found) - though they will not match exactly if the linear
                         drive and different x/y/z values, or if the angular drive was using twist/swing
                         instead of slerp. Note also that the joint constraints do not use the animation
                         velocity as a target, so when creating controls in this way the control
                         will set the skeletal animation velocity multiplier to zero.
@param Set Which set to include the control in (optional). Note that it automatically
       gets added to the set "All"
@param bEnabled If true then the control will be enabled immediately. If false you will need to call
       SetControlEnabled(true) in order to enable it.
@return An array of the controls that have been created
- `TArray<FName> CreateControlsFromSkeletalMeshAndConstraintProfileBelow(USkeletalMeshComponent SkeletalMeshComponent, FName BoneName, bool bIncludeSelf, FName ConstraintProfile, FName Set, bool bEnabled = true)`  
  Creates a collection of ParentSpace controls controlling a skeletal mesh, initializing
them with a constraint profile

@param SkeletalMeshComponent The skeletal mesh which will have controls
@param BoneName The name of the bone below which controls should be created. Each bone will be the child in a control
@param bIncludeSelf Whether or not to include BoneName when creating controls
@param ConstraintProfile The constraint profile to use for initializing the control strength and
                         damping (etc) parameters. Note that the controls will all be created in "
                         parent space" - i.e. with each part controlled relative to its parent. The
                         strength and damping will be taken from the values that the relevant joint
                         in the physics asset would have given the constraint profile (or the default
                         profile if it can't be found) - though they will not match exactly if the linear
                         drive and different x/y/z values, or if the angular drive was using twist/swing
                         instead of slerp. Note also that the joint constraints do not use the animation
                         velocity as a target, so when creating controls in this way the control
                         will set the skeletal animation velocity multiplier to zero.
@param Set Which set to include the control in (optional). Note that it automatically
       gets added to the set "All"
@param bEnabled If true then the control will be enabled immediately. If false you will need to call
       SetControlEnabled(true) in order to enable it.
@return An array of the controls that have been created
- `TArray<FName> CreateControlsFromSkeletalMeshBelow(USkeletalMeshComponent SkeletalMeshComponent, FName BoneName, bool bIncludeSelf, EPhysicsControlType ControlType, FPhysicsControlData ControlData, FName Set)`  
  Creates a collection of controls controlling a skeletal mesh

@param SkeletalMeshComponent The skeletal mesh which will have controls
@param BoneName The name of the bone below which controls should be created. Each bone will be the child in a control
@param bIncludeSelf Whether or not to include BoneName when creating controls
@param ControlType What type of control to create. This determines what the parent will be for each control
@param ControlData   Describes the initial strength etc of the new control
@param Set Which set to include the control in (optional). Note that it automatically
       gets added to the set "All"
@return An array of the controls that have been created
- `bool CreateNamedBodyModifier(FName Name, UPrimitiveComponent Component, FName BoneName, FName Set, FPhysicsControlModifierData BodyModifierData)`  
  Creates a new body modifier for mesh components

@param The name of the body modifier that will be created. Creation will fail if this name is already in use.
@param Component The Mesh Component used as a target for the modifier
@param BoneName The bone name, if a skeletal mesh is used
@param Set Which set to include the body modifier in (optional). Note that it automatically
       gets added to the set "All"
@param BodyModifierData The initial properties of the modifier
- `bool CreateNamedControl(FName Name, UPrimitiveComponent ParentComponent, FName ParentBoneName, UPrimitiveComponent ChildComponent, FName ChildBoneName, FPhysicsControlData ControlData, FPhysicsControlTarget ControlTarget, FName Set)`  
  Creates a new control for mesh components

@param Name The name of the control that will be created. Creation will fail if this name is already in use.
@param ControlData   Describes the initial strength etc of the new control
@param ControlTarget Describes the initial target for the new control
@param Set Which set to include the control in (optional). Note that it automatically
       gets added to the set "All"
@return True if a new control was created, false if a control of the specified name already exists
- `DestroyAllControlsAndBodyModifiers()`  
  Destroys all controls and body modifiers
- `DestroyBodyModifier(FName Name, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Destroys a body modifier or body modifiers in a set
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Name The name of the body modifier or set of body modifiers to destroy.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `DestroyBodyModifiers(TArray<FName> Names, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Destroys body modifiers or body modifiers in sets
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Names The names of the body modifiers or sets of body modifiers to destroy. Note that if you have these in a FPhysicsControlNameArray
             then it can be split.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `DestroyBodyModifiersInSet(FName Set)`  
  Destroys body modifiers

@param Set The set of body modifiers to destroy. Standard sets will include "All" and things like
       "ArmLeft", depending on how body modifiers have been created.
- `DestroyControl(FName Name, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Destroys a control or controls in a set
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to destroy.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `DestroyControls(TArray<FName> Names, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Destroys all controls or sets of controls
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The names of the controls or sets of controls to destroy. Note that if you have these
       in a FPhysicsControlNameArray then it can be split.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `DestroyControlsInSet(FName Set)`  
  Destroys all controls in a set

@param Set The set of controls to use to destroy. Standard sets will include "All", "WorldSpace",
"ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
- `TArray<FName> GetAllBodyModifierNames() const`  
  Returns a reference to all the body modifier names that have been created.
- `TArray<FName> GetAllControlNames() const`  
  Returns a reference to all the control names that have been created.
- `bool GetBodyModifierExists(FName Name) const`  
  Indicates if a body modifier with the name exists (doesn't produce a warning if it doesn't)
- `TArray<FName> GetBodyModifierNamesInSet(FName Set) const`  
  Returns a reference to all the body modifier names that have been created and are in the specified
set, which could be a limb, or a subsequently created set. Standard sets will include "All" and things like
"ArmLeft", depending on how body modifiers have been created.
- `FRotator GetCachedBoneOrientation(const USkeletalMeshComponent SkeletalMeshComponent, FName BoneName)`  
  Gets the orientation of the requested bone that will be used as a target (in world space). Targets for bones
that are not found will be set to Identity. Note that these targets will have been calculated and cached
at the start of the Physics Control Component, so if using the built in tick, may be too old to be useful.
If you manually update the component then you can access these target transforms prior to applying your
own targets.
- `TArray<FRotator> GetCachedBoneOrientations(const USkeletalMeshComponent SkeletalMeshComponent, TArray<FName> BoneNames)`  
  Gets the orientations of the requested bones that will be used as targets (in world space). Targets for bones
that are not found will be set to identity. Note that these targets will have been calculated and cached
at the start of the Physics Control Component, so if using the built in tick, may be too old to be useful.
If you manually update the component then you can access these target transforms prior to applying your
own targets.
- `FVector GetCachedBonePosition(const USkeletalMeshComponent SkeletalMeshComponent, FName BoneName)`  
  Gets the position of the requested bone that will be used as a target (in world space). Targets for bones
that are not found will be set to zero. Note that these targets will have been calculated and cached
at the start of the Physics Control Component, so if using the built in tick, may be too old to be useful.
If you manually update the component then you can access these target transforms prior to applying your
own targets.
- `TArray<FVector> GetCachedBonePositions(const USkeletalMeshComponent SkeletalMeshComponent, TArray<FName> BoneNames)`  
  Gets the positions of the requested bones that will be used as targets (in world space). Targets for bones
that are not found will be set to zero. Note that these targets will have been calculated and cached
at the start of the Physics Control Component, so if using the built in tick, may be too old to be useful.
If you manually update the component then you can access these target transforms prior to applying your
own targets.
- `FTransform GetCachedBoneTransform(const USkeletalMeshComponent SkeletalMeshComponent, FName BoneName)`  
  Gets the transforms of the requested bone that will be used as a target (in world space). Targets for bones
that are not found will be set to Identity. Note that these targets will have been calculated and cached
at the start of the Physics Control Component, so if using the built in tick, may be too old to be useful.
If you manually update the component then you can access these target transforms prior to applying your
own targets.
- `TArray<FTransform> GetCachedBoneTransforms(const USkeletalMeshComponent SkeletalMeshComponent, TArray<FName> BoneNames)`  
  Gets the transforms of the requested bones that will be used as targets (in world space). Targets for bones
that are not found will be set to Identity. Note that these targets will have been calculated and cached
at the start of the Physics Control Component, so if using the built in tick, may be too old to be useful.
If you manually update the component then you can access these target transforms prior to applying your
own targets.
- `bool GetControlData(FName Name, FPhysicsControlData& ControlData) const`  
  @param Name     The name of the control to access.
@param Control  The control data that will be filled in if found
@return         Returns true if the control was found, false if not
- `bool GetControlEnabled(FName Name) const`  
  @param Name        The name of the control to access.
@return            Returns true if the control is enabled
- `bool GetControlExists(FName Name) const`  
  Indicates if a control with the name exists (doesn't produce a warning if it doesn't)
- `bool GetControlMultiplier(FName Name, FPhysicsControlMultiplier& ControlMultiplier) const`  
  @param Name     The name of the control to access.
@param Control  The control multipliers that will be filled in if found
@return         Returns true if the control was found, false if not
- `TArray<FName> GetControlNamesInSet(FName Set) const`  
  Returns a reference to all the control names that have been created and are in the specified
set, which could be a limb, or a subsequently created set. Standard sets will include "All", "WorldSpace",
"ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
- `bool GetControlTarget(FName Name, FPhysicsControlTarget& ControlTarget) const`  
  @param Name     The name of the control to access.
@param Control  The control target, if found
@return         Returns true if the control was found, false if not
- `TMap<FName,FPhysicsControlLimbBones> GetLimbBonesFromSkeletalMesh(USkeletalMeshComponent SkeletalMeshComponent, TArray<FPhysicsControlLimbSetupData> LimbSetupData) const`  
  Calculates which bones belong to which limb in a skeletal mesh

@param SkeletalMeshComponent The skeletal mesh which will be analyzed
@param LimbSetupData This needs to be filled in with the list of limbs to "discover". Note that the
                     limbs should be listed starting at the "leaf" (i.e. outer) parts of the skeleton
                     first, typically finishing with the spine. In addition, the spine limb is typically
                     specified using the first spine bone, but flagging it to include its parent
                     (normally the pelvis).
@return A map of limb names to bones
- `TArray<FName> GetSetsContainingBodyModifier(FName Control) const`  
  Returns the names of all sets containing the body modifier (may be empty - e.g. if it doesn't exist)
- `TArray<FName> GetSetsContainingControl(FName Control) const`  
  Returns the names of all sets containing the control (may be empty - e.g. if it doesn't exist)
- `bool InvokeControlProfile(FName ProfileName, FName ControlSetMask = NAME_None, FName BodyModifierSetMask = NAME_None)`  
  Looks up the profile which should exist in the registered control profile asset, and invokes it.

@param ProfileName The name of the control profile to apply
@param ControlSetMask The optional name of a control set to use as a mask, so only controls within that set will be modified.
       Standard control set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
       depending on how controls have been created. If unset or invalid, no mask will be applied.
@param BodyModifierSetMask The optional name of a body modifier set to use as a mask, so only body modifiers within that set will be modified.
       Standard body modifier sets will include "All" and things like "ArmLeft", depending on how body modifiers
       have been created. If unset or invalid, no mask will be applied.
@return true if successful, and false if the profile cannot be found.
- `ResetBodyModifiersInSetToCachedBoneTransforms(FName SetName, EResetToCachedTargetBehavior Behavior = EResetToCachedTargetBehavior :: ResetImmediately)`  
  Calls ResetBodyModifierToCachedTarget for each of the body modifiers in the set
- `ResetBodyModifiersToCachedBoneTransforms(TArray<FName> Names, EResetToCachedTargetBehavior Behavior = EResetToCachedTargetBehavior :: ResetImmediately, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Calls ResetBodyModifierToCachedTarget for each of the body modifiers or body modifiers in the sets
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `ResetBodyModifierToCachedBoneTransform(FName Name, EResetToCachedTargetBehavior Behavior = EResetToCachedTargetBehavior :: ResetImmediately, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  This flags the body associated with the modifier, or modifiers in a set, to set (using teleport) its position and velocity to
the cached animation target. This will only affect skeletal mesh component bodies.
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Name The name of the body modifier or set of body modifiers to use to identify the body/bodies to reset.
@param Behavior When the reset should happen.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `bool ResetControlPoint(FName Name)`  
  Resets the control point to the center of mass of the mesh

@param Name The name of the control to update.
- `SetBodyModifierCollisionType(FName Name, ECollisionEnabled CollisionType = ECollisionEnabled :: QueryAndPhysics, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets the collision type for a body modifier or body modifiers in a set
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Name The name of the body modifier or set to update.
@param CollisionType Collision type to set on the body
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifierData(FName Name, FPhysicsControlModifierData ModifierData, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies an existing Body Modifier Data in a body modifier or body modifiers in a set
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Name The name of the modifier or set to update.
@param ModifierData The new data
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifierDatas(TArray<FName> Names, FPhysicsControlModifierData ModifierData, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing body modifier data in body modifiers or body modifiers in sets
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Names The names of the modifiers or sets to update. Note that if you have these in a FPhysicsControlNameArray
             then it can be split.
@param ModifierData The new data
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifierDatasInSet(FName Set, FPhysicsControlModifierData ModifierData)`  
  Modifies existing Body Modifier Data

@param Set The set of modifiers to update. Standard sets will include "All" and things like "ArmLeft",
       depending on how body modifiers have been created.
@param ModifierData The new data
- `SetBodyModifierGravityMultiplier(FName Name, float32 GravityMultiplier = 1.000000, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets the gravity multiplier for a body modifier or body modifiers in a set
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Name The name of the body modifier or set to update.
@param GravityMultiplier The amount of gravity to apply when simulating
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `bool SetBodyModifierKinematicTarget(FName Name, FVector KinematicTargetPosition, FRotator KinematicTargetOrienation, bool bMakeKinematic)`  
  Sets the kinematic target transform for a body modifier.

@param Name The name of the body modifier or set to update.
@param KinematicTargetPosition The position to use as the kinematic target of the associated body,
       if it is kinematic
@param KinematicTargetOrientation The orientation to use as the kinematic target of the associated body,
       if it is kinematic
@param bMakeKinematic If set then the body will be made kinematic. If not set, then it won't be changed.
@return true if the body modifier was found, false if not
- `SetBodyModifierKinematicTargetSpace(FName Name, EPhysicsControlKinematicTargetSpace KinematicTargetSpace, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets what space kinematic targets should be applied in for a body modifier or body modifiers in a set
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Name The name of the body modifier or set to update.
@param KinematicTargetSpace The space in which the kinematic target should be applied.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifierMovementType(FName Name, EPhysicsMovementType MovementType = EPhysicsMovementType :: Simulated, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets the movement type for a body modifier or body modifiers in a set

@param Name The name of the body modifier or set to update.
@param MovementType Whether to enable/disable simulation on the body
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifierPhysicsBlendWeight(FName Name, float32 PhysicsBlendWeight = 1.000000, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets the physics blend weight for a body modifier or body modifiers in a set
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Name The name of the body modifier or set to update.
@param PhysicsBlendWeight The blend weight between the body transform coming from
       animation and that coming from simulation.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifiersCollisionType(TArray<FName> Names, ECollisionEnabled CollisionType = ECollisionEnabled :: QueryAndPhysics, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets the collision type for body modifiers or body modifiers in sets
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Names The names of the body modifiers or sets to update. Note that if you have these in a FPhysicsControlNameArray
       then it can be split.
@param CollisionType Collision type to set on the bodies
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifiersGravityMultiplier(TArray<FName> Names, float32 GravityMultiplier = 1.000000, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets the gravity multiplier for body modifiers or body modifiers in sets
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Names The names of the body modifiers or sets to update. Note that if you have these in a FPhysicsControlNameArray
             then it can be split.
@param GravityMultiplier The amount of gravity to apply when simulating
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifiersInSetCollisionType(FName Set, ECollisionEnabled CollisionType = ECollisionEnabled :: QueryAndPhysics)`  
  Sets the collision type for body modifiers

@param Set The set of body modifiers to update. Standard sets will include "All" and things like
       "ArmLeft", depending on how body modifiers have been created.
@param CollisionType Collision type to set on the bodies
- `SetBodyModifiersInSetGravityMultiplier(FName Set, float32 GravityMultiplier = 1.000000)`  
  Sets the gravity multiplier for body modifiers

@param Set The set of body modifiers to update. Standard sets will include "All" and things like
       "ArmLeft", depending on how body modifiers have been created.
@param GravityMultiplier The amount of gravity to apply when simulating
- `SetBodyModifiersInSetKinematicTargetSpace(FName Set, EPhysicsControlKinematicTargetSpace KinematicTargetSpace)`  
  Sets what space kinematic targets should be applied in

@param Set The set of body modifiers to update. Standard sets will include "All" and things like
       "ArmLeft", depending on how body modifiers have been created.
@param KinematicTargetSpace The space in which the kinematic target should be applied.
- `SetBodyModifiersInSetMovementType(FName Set, EPhysicsMovementType MovementType = EPhysicsMovementType :: Simulated)`  
  Sets the movement type for body modifiers

@param Set The set of body modifiers to update. Standard sets will include "All" and things like
       "ArmLeft", depending on how body modifiers have been created.
@param MovementType Whether to enable/disable simulation on the bodies
- `SetBodyModifiersInSetPhysicsBlendWeight(FName Set, float32 PhysicsBlendWeight = 1.000000)`  
  Sets the physics blend weight for body modifiers

@param Set The set of body modifiers to update. Standard sets will include "All" and things like
       "ArmLeft", depending on how body modifiers have been created.
@param PhysicsBlendWeight The blend weight between the body transform coming from
       animation and that coming from simulation.
- `SetBodyModifiersInSetUpdateKinematicFromSimulation(FName Set, bool bUpdateKinematicFromSimulation)`  
  Sets whether body modifiers should update kinematics from the simulation results

@param Set The set of body modifiers to update. Standard sets will include "All" and things like
       "ArmLeft", depending on how body modifiers have been created.
@param bUpdateKinematicFromSimulation Whether the body should be updated from the simulation when
       it is kinematic, or whether it should track the kinematic target directly. This will be most
       likely useful when using async physics, in order to make kinematic parts behave the same as
       dynamic ones.
- `SetBodyModifiersKinematicTargetSpace(TArray<FName> Names, EPhysicsControlKinematicTargetSpace KinematicTargetSpace, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets what space kinematic targets should be applied in for body modifiers or body modifiers in sets
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Names The names of the body modifiers or sets to update. Note that if you have these in a FPhysicsControlNameArray
       then it can be split.
@param KinematicTargetSpace The space in which the kinematic target should be applied.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifiersMovementType(TArray<FName> Names, EPhysicsMovementType MovementType = EPhysicsMovementType :: Simulated, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets the movement type for body modifiers or body modifiers in sets

@param Names The names of the body modifiers or sets to update. Note that if you have these in a FPhysicsControlNameArray
       then it can be split.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
@param MovementType Whether to enable/disable simulation on the bodies
- `SetBodyModifierSparseData(FName Name, FPhysicsControlModifierSparseData ModifierData, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies an existing Body Modifier Data in a body modifier or body modifiers in a set

@param Name The name of the modifier or set to update.
@param ModifierData The new data
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifierSparseDatas(TArray<FName> Names, FPhysicsControlModifierSparseData ModifierData, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing Body Modifier Data in body modifiers or body modifiers in sets
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Names The names of the modifiers or sets to update. Note that if you have these in a FPhysicsControlNameArray
             then it can be split.
@param ModifierData The new data
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifierSparseDatasInSet(FName Set, FPhysicsControlModifierSparseData ModifierData)`  
  Modifies existing Body Modifier Data

@param Set The set of modifiers to update. Standard sets will include "All" and things like "ArmLeft",
       depending on how body modifiers have been created.
@param ModifierData The new data
- `SetBodyModifiersPhysicsBlendWeight(TArray<FName> Names, float32 PhysicsBlendWeight = 1.000000, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets the physics blend weight for body modifiers or body modifiers in sets
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Names The names of the body modifiers or sets to update. Note that if you have these in a FPhysicsControlNameArray
       then it can be split.
@param PhysicsBlendWeight The blend weight between the body transform coming from
       animation and that coming from simulation.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifiersUpdateKinematicFromSimulation(TArray<FName> Names, bool bUpdateKinematicFromSimulation, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets whether body modifiers should update kinematics from the simulation results for body modifiers or body modifiers in sets
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Names The names of the body modifiers or sets to update. Note that if you have these in a FPhysicsControlNameArray
       then it can be split.
@param bUpdateKinematicFromSimulation Whether the body should be updated from the simulation when
       it is kinematic, or whether it should track the kinematic target directly. This will be most
       likely useful when using async physics, in order to make kinematic parts behave the same as
       dynamic ones.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `SetBodyModifierUpdateKinematicFromSimulation(FName Name, bool bUpdateKinematicFromSimulation, bool bApplyToModifiersWithName = true, bool bApplyToSetsWithName = true)`  
  Sets whether a body modifier should update kinematics from the simulation results, for a body modifier or body modifiers in a set
Standard sets will include "All" and things like "ArmLeft", depending on how body modifiers have been created.

@param Name The name of the body modifier or set to update.
@param bUpdateKinematicFromSimulation Whether the body should be updated from the simulation when
       it is kinematic, or whether it should track the kinematic target directly. This will be most
       likely useful when using async physics, in order to make kinematic parts behave the same as
       dynamic ones.
@param bApplyToModifiersWithName If true, then body modifiers with the name will be modified
@param bApplyToSetsWithName If true, then body modifiers in sets with the name will be modified
- `bool SetCachedBoneData(const USkeletalMeshComponent SkeletalMeshComponent, FName BoneName, FTransform TM)`  
  This allows the caller to override the target that will have been calculated and cached at the start of
the Physics Control Component update. This is unlikely to be useful when using the built in tick,
but if you are manually updating the component then you may wish to call this after UpdateTargetCaches
but before UpdateControls.

@return true if successful, and false if no cached target can be found for the bone.
- `SetCachedBoneVelocitiesToZero()`  
  This sets cached bone velocities to zero, by forgetting any previously used transform. This may be useful if
the pose is changed suddenly and you don't want this change to show up in the simulated velocities.
- `SetControlAngularData(FName Name, float32 Strength = 1.000000, float32 DampingRatio = 1.000000, float32 ExtraDamping = 0.000000, float32 MaxTorque = 0.000000, bool bEnableControl = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control's angular data in a control or controls in a set - i.e. the strengths
etc of the control driving towards the target
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param Strength The strength used to drive angular motion
@param DampingRatio The amount of damping associated with the angular strength. 1 Results in critically damped motion
@param ExtraDamping The amount of additional angular damping
@param MaxTorque The maximum torque used to drive the angular motion. Zero indicates no limit.
@param bEnableControl Enables the control if it is currently disabled
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlData(FName Name, FPhysicsControlData ControlData, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies an existing control data in a control or controls in a set - i.e. the strengths
etc of the control driving towards the target
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param ControlData The new control data
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlDatas(TArray<FName> Names, FPhysicsControlData ControlData, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control data in controls or controls in sets - i.e. the strengths
etc of the controls driving towards the targets
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The names of the controls or sets of controls to update. Note that if you have these in a FPhysicsControlNameArray
             then it can be split.
@param ControlData The new control data
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlDatasInSet(FName Set, FPhysicsControlData ControlData)`  
  Modifies existing control data - i.e. the strengths etc of the controls driving towards the targets

@param Set The set of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param ControlData The new control data
- `SetControlDisableCollision(FName Name, bool bDisableCollision, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  @param Name The name of the control or set of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param bDisableCollision If set then the control will disable collision between the bodies it connects.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlEnabled(FName Name, bool bEnable = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Activates or deactivates a control or controls in a set.
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name     The name of the control or set of controls to update.
@param bEnable  Whether to enable/disable the control
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlLinearData(FName Name, float32 Strength = 1.000000, float32 DampingRatio = 1.000000, float32 ExtraDamping = 0.000000, float32 MaxForce = 0.000000, bool bEnableControl = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control's linear data in a control or controls in a set - i.e. the strengths
etc of the control driving towards the target
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param Strength The strength used to drive linear motion
@param DampingRatio The amount of damping associated with the linear strength. 1 Results in critically damped motion
@param ExtraDamping The amount of additional linear damping
@param MaxForce The maximum force used to drive the linear motion. Zero indicates no limit.
@param bEnableControl Enables the control if it is currently disabled
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlMultiplier(FName Name, FPhysicsControlMultiplier ControlMultiplier, bool bEnableControl = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control data in a control or controls in a set using the multipliers
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param ControlMultipliers The new control multipliers
@param bEnableControl Enables the control if it is currently disabled
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlMultipliers(TArray<FName> Names, FPhysicsControlMultiplier ControlMultiplier, bool bEnableControl = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control data in controls or controls in sets using the multipliers
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The names of the controls or sets of controls to update. Note that if you have these in a FPhysicsControlNameArray
             then it can be split.
@param ControlMultiplier The new control multiplier
@param bEnableControl Enables the controls if currently disabled
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlMultipliersInSet(FName Set, FPhysicsControlMultiplier ControlMultiplier, bool bEnableControl = true)`  
  Modifies existing control data using the multipliers

@param Set The set of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param ControlMultiplier The new control multiplier
@param bEnableControl Enables the controls if currently disabled
- `SetControlParent(FName Name, UPrimitiveComponent ParentComponent, FName ParentBoneName, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Updates the parent object part of a control or controls in a set. Note that this won't change
the name of the control (which may subsequently be misleading), or any set it is included in, etc.
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlParents(TArray<FName> Names, UPrimitiveComponent ParentComponent, FName ParentBoneName, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Updates the parent object part of controls or controls in a set. Note that this won't change
the name of the controls (which may subsequently be misleading), or any set they are included in, etc.
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlParentsInSet(FName Set, UPrimitiveComponent ParentComponent, FName ParentBoneName)`
- `bool SetControlPoint(FName Name, FVector Position)`  
  Sets the point at which controls will "push" the child object.

@param Name The name of the control to update.
@param Position The position of the control point on the child mesh object (only relevant if that
       object is in use and is being simulated)
- `SetControlsDisableCollision(TArray<FName> Names, bool bDisableCollision, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  @param Names The names of the controls or sets of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param bDisableCollision If set then the control will disable collision between the bodies it connects.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlsEnabled(TArray<FName> Names, bool bEnable = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Activates or deactivates controls or sets of controls
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The names of the controls or sets of controls to update. Note that if you have these in a FPhysicsControlNameArray
             then it can be split.
@param bEnable  Whether to enable/disable the controls
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlsInSetDisableCollision(FName Set, bool bDisableCollision)`  
  @param Set The set of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param bDisableCollision If set then the control will disable collision between the bodies it connects.
- `SetControlsInSetEnabled(FName Set, bool bEnable = true)`  
  Activates or deactivates controls

@param Set The set of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param bEnable  Whether to enable/disable the controls
- `SetControlsInSetUseSkeletalAnimation(FName Set, bool bUseSkeletalAnimation = true, float32 AngularTargetVelocityMultiplier = 1.000000, float32 LinearTargetVelocityMultiplier = 1.000000)`  
  Sets whether or not the controls should use skeletal animation for the targets

@param Set The set of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param bUseSkeletalAnimation If true then the targets will be a combination of the skeletal animation (if
       there is any) and the control target that has been set
@param AngularTargetVelocityMultiplier If skeletal animation is being used, then this determines the amount of
       angular velocity extracted from the animation that is used as targets for the controls
@param LinearTargetVelocityMultiplier If skeletal animation is being used, then this determines the amount of
       linear velocity extracted from the animation that is used as targets for the controls
- `SetControlSparseData(FName Name, FPhysicsControlSparseData ControlData, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies an existing control data in a control or controls in a set - i.e. the strengths
etc of the control driving towards the target
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param ControlData The new control data
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlSparseDatas(TArray<FName> Names, FPhysicsControlSparseData ControlData, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control data in controls or controls in sets - i.e. the strengths
etc of the controls driving towards the targets
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The names of the controls or sets of controls to update. Note that if you have these in a FPhysicsControlNameArray
             then it can be split.
@param ControlData The new control data
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlSparseDatasInSet(FName Set, FPhysicsControlSparseData ControlData)`  
  Modifies existing control data - i.e. the strengths etc of the controls driving towards the targets

@param Set The set of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param ControlData The new control data
- `SetControlSparseMultiplier(FName Name, FPhysicsControlSparseMultiplier ControlMultiplier, bool bEnableControl = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control data in a control or controls in a set using the multipliers
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param ControlMultipliers The new control multipliers
@param bEnableControl Enables the control if it is currently disabled
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlSparseMultipliers(TArray<FName> Names, FPhysicsControlSparseMultiplier ControlMultiplier, bool bEnableControl = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control data in controls or controls in sets using the multipliers
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The names of the controls or sets of controls to update. Note that if you have these in a
       FPhysicsControlNameArray then it can be split.
@param ControlMultiplier The new control multiplier
@param bEnableControl Enables the controls if currently disabled
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlSparseMultipliersInSet(FName Set, FPhysicsControlSparseMultiplier ControlMultiplier, bool bEnableControl = true)`  
  Modifies existing control data using the multipliers

@param Set The set of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param ControlMultiplier The new control multiplier
@param bEnableControl Enables the controls if currently disabled
- `SetControlsUseSkeletalAnimation(TArray<FName> Names, bool bUseSkeletalAnimation = true, float32 AngularTargetVelocityMultiplier = 1.000000, float32 LinearTargetVelocityMultiplier = 1.000000, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Sets whether or not the controls or controls in sets should use skeletal animation for the targets
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The names of the controls or sets of controls to update. Note that if you have these in a FPhysicsControlNameArray
             then it can be split.
@param bUseSkeletalAnimation If true then the targets will be a combination of the skeletal animation (if
             there is any) and the control target that has been set
@param AngularTargetVelocityMultiplier If skeletal animation is being used, then this determines the amount of
             angular velocity extracted from the animation that is used as targets for the controls
@param LinearTargetVelocityMultiplier If skeletal animation is being used, then this determines the amount of
             linear velocity extracted from the animation that is used as targets for the controls
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlTarget(FName Name, FPhysicsControlTarget ControlTarget, bool bEnableControl = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies an existing control target in a control or controls in a set - i.e. what it is driving
towards, relative to the parent object
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param ControlTarget The new target for the control
@param bEnableControl Enables the control if it is currently disabled
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlTargetOrientation(FName Name, FRotator Orientation, float32 AngularVelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies an existing control target in a control or controls in a set - i.e. what it is driving
towards, relative to the parent object
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param Orientation The new orientation target for the control
@param AngularVelocityDeltaTime If non-zero, the target angular velocity will be calculated using the current
       target position. If zero, the target velocity will be set to zero.
@param bEnableControl Enables the control if it is currently disabled
@param bApplyControlPointToTarget If true, then the target position/orientation is treated as
       a "virtual" object, where the system attempts to move the object
       to match the pose of this "virtual" object that has been placed at
       the target transform. Use this when you want to specify the target
       transform for the object as a whole. If false, then the target transform
       is used as is, and the system drives the control point towards this
       transform.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlTargetOrientations(TArray<FName> Names, FRotator Orientation, float32 AngularVelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control targets in controls or controls in sets - i.e. what it is driving
towards, relative to the parent object
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param Orientation The new orientation target for the control
@param AngularVelocityDeltaTime If non-zero, the target angular velocity will be calculated using the current
       target position. If zero, the target velocity will be set to zero.
@param bEnableControl Enables the control if it is currently disabled
@param bApplyControlPointToTarget If true, then the target position/orientation is treated as
       a "virtual" object, where the system attempts to move the object
       to match the pose of this "virtual" object that has been placed at
       the target transform. Use this when you want to specify the target
       transform for the object as a whole. If false, then the target transform
       is used as is, and the system drives the control point towards this
       transform.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `bool SetControlTargetOrientationsFromArray(TArray<FName> Names, TArray<FRotator> Orientations, float32 VelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false)`  
  Calls SetControlTargetPosition for each element of the control names and positions. These array should match
in size.
@return true if the control/position arrays match, false if they don't.
- `SetControlTargetOrientationsInSet(FName SetName, FRotator Orientation, float32 AngularVelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false)`  
  Calls SetControlTargetOrientation for each of the controls in the set
- `bool SetControlTargetPoses(FName Name, FVector ParentPosition, FRotator ParentOrientation, FVector ChildPosition, FRotator ChildOrientation, float32 VelocityDeltaTime, bool bEnableControl = true)`  
  Calculates and sets an existing control target. This takes the "virtual" position/orientation of the parent
and child and calculates the relative control. Note that this will set bApplyControlPointToTarget to true.

@param Name              The name of the control to update.
@param ParentPosition    The virtual/target parent position
@param ParentOrientation The virtual/target parent orientation
@param ChildPosition     The virtual/target child position
@param ChildOrientation  The virtual/target child orientation
@param VelocityDeltaTime If non-zero, the target velocity will be calculated using the current target
                         position. If zero, the target velocity will be set to zero.
@param bEnableControl    Enables the control if it is currently disabled
@return                  Returns true if the control was found and modified, false if not
- `SetControlTargetPosition(FName Name, FVector Position, float32 VelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies an existing control target of a control or controls in a set - i.e. what it is driving
towards, relative to the parent object
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param Position          The new position target for the control
@param VelocityDeltaTime If non-zero, the target velocity will be calculated using the current target
       position. If zero, the target velocity will be set to zero.
@param bEnableControl Enables the control if it is currently disabled
@param bApplyControlPointToTarget If true, then the target position/orientation is treated as
       a "virtual" object, where the system attempts to move the object
       to match the pose of this "virtual" object that has been placed at
       the target transform. Use this when you want to specify the target
       transform for the object as a whole. If false, then the target transform
       is used as is, and the system drives the control point towards this
       transform.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlTargetPositionAndOrientation(FName Name, FVector Position, FRotator Orientation, float32 VelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies an existing control target in a control or controls in a set - i.e. what it is driving
towards, relative to the parent object
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param Position The new position target for the control
@param Orientation The new orientation target for the control
@param VelocityDeltaTime If non-zero, the target velocity will be calculated using the current target
       position. If zero, the target velocity will be set to zero.
@param bEnableControl Enables the control if it is currently disabled
@param bApplyControlPointToTarget If true, then the target position/orientation is treated as
       a "virtual" object, where the system attempts to move the object to match the pose of
       this "virtual" object that has been placed at the target transform. Use this when you
       want to specify the target transform for the object as a whole. If false, then the
       target transform is used as is, and the system drives the control point towards this
       transform.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlTargetPositions(TArray<FName> Names, FVector Position, float32 VelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control targets in controls or controls in sets - i.e. what it is driving
towards, relative to the parent object
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The name of the controls or sets of controls to update.
@param Position The new position target for the control
@param VelocityDeltaTime If non-zero, the target velocity will be calculated using the current target
       position. If zero, the target velocity will be set to zero.
@param bEnableControl Enables the control if it is currently disabled
@param bApplyControlPointToTarget If true, then the target position/orientation is treated as
       a "virtual" object, where the system attempts to move the object to match the pose of
       this "virtual" object that has been placed at the target transform. Use this when you
       want to specify the target transform for the object as a whole. If false, then the
       target transform is used as is, and the system drives the control point towards this
       transform.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlTargetPositionsAndOrientations(TArray<FName> Names, FVector Position, FRotator Orientation, float32 VelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control targets in controls or controls in sets - i.e. what it is driving
towards, relative to the parent object
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The name of the controls or sets of controls to update.
@param Position The new position target for the control
@param Orientation The new orientation target for the control
@param VelocityDeltaTime If non-zero, the target velocity will be calculated using the current target
       position. If zero, the target velocity will be set to zero.
@param bEnableControl Enables the control if it is currently disabled
@param bApplyControlPointToTarget If true, then the target position/orientation is treated as
       a "virtual" object, where the system attempts to move the object to match the pose of
       this "virtual" object that has been placed at the target transform. Use this when you
       want to specify the target transform for the object as a whole. If false, then the
       target transform is used as is, and the system drives the control point towards this
       transform.
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `bool SetControlTargetPositionsAndOrientationsFromArray(TArray<FName> Names, TArray<FVector> Positions, TArray<FRotator> Orientations, float32 VelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false)`  
  Calls SetControlTargetPositionAndOrientation for each element of the control names, positions and orientations.
These array should match in size.
@return true if the control/position/orientation arrays match, false if they don't.
- `SetControlTargetPositionsAndOrientationsInSet(FName SetName, FVector Position, FRotator Orientation, float32 VelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false)`  
  Calls SetControlTargetPositionAndOrientation for each control in the set
- `bool SetControlTargetPositionsFromArray(TArray<FName> Names, TArray<FVector> Positions, float32 VelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false)`  
  Calls SetControlTargetPosition for each element of the control names and positions. These array should match
in size.
@return true if the control/position arrays match, false if they don't.
- `SetControlTargetPositionsInSet(FName SetName, FVector Position, float32 VelocityDeltaTime, bool bEnableControl = true, bool bApplyControlPointToTarget = false)`  
  Calls SetControlTargetPosition for each of the controls in the set
- `SetControlTargets(TArray<FName> Names, FPhysicsControlTarget ControlTarget, bool bEnableControl = true, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Modifies existing control targets in controls or controls in sets - i.e. what they are driving
towards, relative to the parent objects
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Names The names of the controls or sets of controls to update. Note that if you have these in a
       FPhysicsControlNameArray then it can be split.
@param ControlTarget The new target for the controls

@param bEnableControl Enables the controls if currently disabled
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `SetControlTargetsInSet(FName Set, FPhysicsControlTarget ControlTarget, bool bEnableControl = true)`  
  Modifies existing control targets - i.e. what they are driving towards, relative to the parent objects

@param Set The set of controls to update. Standard sets will include "All", "WorldSpace",
       "ParentSpace" and things like "WorldSpace_ArmLeft", depending on how controls have been created.
@param ControlTarget The new target for the controls
@param bEnableControl Enables the controls if currently disabled
- `SetControlUseSkeletalAnimation(FName Name, bool bUseSkeletalAnimation = true, float32 AngularTargetVelocityMultiplier = 1.000000, float32 LinearTargetVelocityMultiplier = 1.000000, bool bApplyToControlsWithName = true, bool bApplyToSetsWithName = true)`  
  Sets whether or not the control or controls in a set should use skeletal animation for the targets
Standard set names will include "All", "WorldSpace", "ParentSpace" and things like "WorldSpace_ArmLeft",
depending on how controls have been created.

@param Name The name of the control or set of controls to update.
@param bUseSkeletalAnimation If true then the targets will be a combination of the skeletal animation (if
       there is any) and the control target that has been set
@param AngularTargetVelocityMultiplier If skeletal animation is being used, then this determines the amount of
       angular velocity extracted from the animation that is used as targets for the controls
@param LinearTargetVelocityMultiplier If skeletal animation is being used, then this determines the amount of
       linear velocity extracted from the animation that is used as targets for the controls
@param bApplyToControlsWithName If true, then controls with the name will be modified
@param bApplyToSetsWithName If true, then controls in sets with the name will be modified
- `UpdateControls(float32 DeltaTime)`  
  Allows manual ticking so that your code can run in between updating the target caches and updating
the controls and body modifiers. This allows you to read the targets coming from animation and use
those values to create your own controls etc.

To use this function, you should disable ticking of the Physics Control Component, and ensure that the
relevant Skeletal Mesh Component (if being used) has ticked, using a tick prerequisite. Then explicitly
call (in order) UpdateTargetCaches and UpdateControls as you process your tick.
- `UpdateTargetCaches(float32 DeltaTime)`  
  Allows manual ticking so that your code can run in between updating the target caches and updating
the controls. This allows you to read the targets coming from animation and use those values to
create your own controls etc.

To use this function, you should disable ticking of the Physics Control Component, and ensure that the
relevant Skeletal Mesh Component (if being used) has ticked, using a tick prerequisite. Then explicitly
call (in order) UpdateTargetCaches and UpdateControls as you process your tick.

---

