### USkinnedMeshComponent


Skinned mesh component that supports bone skinned mesh rendering.
This class does not support animation.

@see USkeletalMeshComponent

**属性**:

- `float32 CapsuleIndirectShadowMinVisibility [Controls how dark the capsule indirect shadow can be.]`
- `int ForcedLodModel`
- `TWeakObjectPtr<USkinnedMeshComponent> LeaderPoseComponent [If set, this SkeletalMeshComponent will not use its SpaceBase for bone transform, but will
use the component space transforms from the LeaderPoseComponent. This is used when constructing a character using multiple skeletal meshes sharing the same
skeleton within the same Actor.]`
- `UMeshDeformer MeshDeformer [The mesh deformer to use. Set to None to disable the deformer on the SkeletalMesh. If no deformer is set from here or the SkeletalMesh, we fall back to the fixed function deformation, unless AlwaysUseMeshDeformer is on.]`
- `UMeshDeformerInstanceSettings MeshDeformerInstanceSettings [Object containing instance settings for the bound MeshDeformer.]`
- `int MinLodModel [This is the min LOD that this component will use.  (e.g. if set to 2 then only 2+ LOD Models will be used.) This is useful to set on
meshes which are known to be a certain distance away and still want to have better LODs when zoomed in on them.]`
- `float32 NanitePixelProgrammableDistance [Used to forcefully disable pixel programmable rasterization of Nanite when the mesh is further than a given distance from the camera.]`
- `UPhysicsAsset PhysicsAssetOverride [PhysicsAsset is set in SkeletalMesh by default, but you can override with this value]`
- `TArray<ESkinCacheUsage> SkinCacheUsage [How this Component's LOD uses the skin cache feature. Auto will defer to the asset's (SkeletalMesh) option. If Ray Tracing is enabled, will imply Enabled]`
- `USkinnedAsset SkinnedAsset []`
- `float32 StreamingDistanceMultiplier [Allows adjusting the desired streaming distance of streaming textures that uses UV 0.
1.0 is the default, whereas a higher value makes the textures stream in sooner from far away.
A lower value (0.0-1.0) makes the textures stream in later (you have to be closer).
Value can be < 0 (from legcay content, or code changes)]`
- `EVisibilityBasedAnimTickOption VisibilityBasedAnimTickOption [* This is tick animation frequency option based on this component rendered or not or using montage
*  You can change this default value in the INI file
* Mostly related with performance]`
- `bool bAlwaysUseMeshDeformer [If true, and if no mesh deformer is set from here or the SkeletalMesh, fall back to the default deformer specified in the project settings, unless DefaultMode is set to "Never" in project settings]`
- `bool bCastCapsuleDirectShadow [Whether to use the capsule representation (when present) from a skeletal mesh's ShadowPhysicsAsset for direct shadowing from lights.
This type of shadowing is approximate but handles extremely wide area shadowing well.  The softness of the shadow depends on the light's LightSourceAngle / SourceRadius.
This flag will force bCastInsetShadow to be enabled. This flag is only used if CastShadow is true and if FirstPersonPrimitiveType is not set to FirstPerson.]`
- `bool bCastCapsuleIndirectShadow [Whether to use the capsule representation (when present) from a skeletal mesh's ShadowPhysicsAsset for shadowing indirect lighting (from lightmaps or skylight).
This flag is only used if CastShadow is true and if FirstPersonPrimitiveType is not set to FirstPerson.]`
- `bool bComponentUseFixedSkelBounds [When true, skip using the physics asset etc. and always use the fixed bounds defined in the SkeletalMesh.]`
- `bool bConsiderAllBodiesForBounds [If true, when updating bounds from a PhysicsAsset, consider _all_ BodySetups, not just those flagged with bConsiderForBounds.]`
- `bool bDisableMorphTarget [Disable Morphtarget for this component.]`
- `bool bDisplayBones [Draw the skeleton hierarchy for this skel mesh.]`
- `bool bDisplayDebugUpdateRateOptimizations [Enable on screen debugging of update rate optimization.
Red = Skipping 0 frames, Green = skipping 1 frame, Blue = skipping 2 frames, black = skipping more than 2 frames.
@todo: turn this into a console command.]`
- `bool bEnableUpdateRateOptimizations [if TRUE, Owner will determine how often animation will be updated and evaluated. See AnimUpdateRateTick()
This allows to skip frames for performance. (For example based on visibility and size on screen).]`
- `bool bIgnoreLeaderPoseComponentLOD [Flag that when set will ensure UpdateLODStatus will not take the LeaderPoseComponent's current LOD in consideration when determining the correct LOD level (this requires LeaderPoseComponent's LOD to always be >= determined LOD otherwise bone transforms could be missing]`
- `bool bIncludeComponentLocationIntoBounds [If true, the Location of this Component will be included into its bounds calculation
(this can be useful when using SMU_OnlyTickPoseWhenRendered on a character that moves away from the root and no bones are left near the origin of the component)]`
- `bool bOverrideMinLod [Whether we should use the min lod specified in MinLodModel for this component instead of the min lod in the mesh]`
- `bool bPerBoneMotionBlur [If true, use per-bone motion blur on this skeletal mesh (requires additional rendering, can be disabled to save performance).]`
- `bool bRenderStatic [If true, render as static in reference pose.]`
- `bool bSetMeshDeformer [If true, MeshDeformer will be used. If false, use the default mesh deformer on the SkeletalMesh.]`
- `bool bSortTriangles [Enable dynamic sort mesh's triangles to remove ordering issue when rendered with a translucent material]`
- `bool bSyncAttachParentLOD [If true, this component uses its parents LOD when attached if available
ForcedLOD can override this change. By default, it will use parent LOD.]`
- `bool bUseBoundsFromLeaderPoseComponent [When true, we will just using the bounds from our LeaderPoseComponent.  This is useful for when we have a Mesh Parented
to the main SkelMesh (e.g. outline mesh or a full body overdraw effect that is toggled) that is always going to be the same
bounds as parent.  We want to do no calculations in that case.]`
- `bool bUseScreenRenderStateForUpdate [If set, use the screen render flag instead of the default render flag when processing offscreen-rendering optimizations
(such as VisibilityBasedAnimTickOption) that look to reduce animation work when the mesh is not rendered.
Using this option can result in meshes that are occlusion culled ceasing to perform animation work.
Note that this can however result in shadows not being animated when meshes are not directly visible.]`


**方法**:

- `UpdateLODStatus()`
- `InvalidateCachedBounds()`
- `bool BoneIsChildOf(FName BoneName, FName ParentBoneName) const`  
  Tests if BoneName is child of (or equal to) ParentBoneName.

@param BoneName Name of the bone
@param ParentBone Name to check

@return true if child (strictly, not same). false otherwise
Note - will return false if ChildBoneIndex is the same as ParentBoneIndex ie. must be strictly a child.
- `ClearAllSkinWeightProfiles()`  
  Clear the skin Weight Profile from all layers on this component. If no profiles are set for any layer, then this call does nothing.
- `ClearSkinWeightOverride(int LODIndex)`  
  Clear any applied skin weight override
- `ClearSkinWeightProfile(ESkinWeightProfileLayer InLayer = ESkinWeightProfileLayer :: Primary)`  
  Clear the skin weight profile from the given layer on this component, in case it is set. If no profile is set for the layer,
then this call does nothing.
- `ClearVertexColorOverride(int LODIndex)`  
  Clear any applied vertex color override
- `FName FindClosestBone_K2(FVector TestLocation, FVector& BoneLocation, float32 IgnoreScale = 0.000000, bool bRequirePhysicsAsset = false) const`  
  finds the closest bone to the given location

@param TestLocation the location to test against
@param BoneLocation (optional, out) if specified, set to the world space location of the bone that was found, or (0,0,0) if no bone was found
@param IgnoreScale (optional) if specified, only bones with scaling larger than the specified factor are considered
@param bRequirePhysicsAsset (optional) if true, only bones with physics will be considered

@return the name of the bone that was found, or 'None' if no bone was found
- `bool GetAlwaysUseMeshDeformer() const`  
  Returns whether the component is set to always use a mesh deformer if one can be found in the project settings
- `int GetBoneIndex(FName BoneName) const`  
  Find the index of bone by name. Looks in the current SkeletalMesh being used by this SkeletalMeshComponent.

@param BoneName Name of bone to look up

@return Index of the named bone in the current SkeletalMesh. Will return INDEX_NONE if bone not found.

@see USkeletalMesh::GetBoneIndex.
- `FName GetBoneName(int BoneIndex) const`  
  Get Bone Name from index
@param BoneIndex Index of the bone

@return the name of the bone at the specified index
- `FTransform GetBoneTransform(FName InBoneName, ERelativeTransformSpace TransformSpace = ERelativeTransformSpace :: RTS_World) const`  
  Get world-space bone transform.
@param InBoneName Name of the the bone to get the transform
@return Bone transform in world space if bone is found. Otherwise it will return component's transform in world space.
- `TArray<FName> GetCurrentSkinWeightProfileLayerNames() const`  
  Return the names of the skin weight profiles for all the layers
- `FName GetCurrentSkinWeightProfileName(ESkinWeightProfileLayer InLayer = ESkinWeightProfileLayer :: Primary) const`  
  Return the name of the skin weight profile that is currently set on the given layer, otherwise returns 'None'
- `FTransform GetDeltaTransformFromRefPose(FName BoneName, FName BaseName = NAME_None) const`  
  Get delta transform from reference pose based on BaseNode.
This uses last frame up-to-date transform, so it will have a frame delay if you use this info in the AnimGraph

@param BoneName Name of the bone
@param BaseName Name of the base bone - if none, it will use parent as a base

@return the delta transform from refpose in that given space (BaseName)
- `int GetForcedLOD() const`  
  Get ForcedLodModel of the mesh component. Note that the actual forced LOD level is the return value minus one and zero means no forced LOD
- `UMeshDeformerInstance GetMeshDeformerInstance() const`
- `int GetNumBones() const`  
  Returns the number of bones in the skeleton.
- `int GetNumLods() const`  
  Get the number of LODs on this component
- `FName GetParentBone(FName BoneName) const`  
  Get Parent Bone of the input bone

@param BoneName Name of the bone

@return the name of the parent bone for the specified bone. Returns 'None' if the bone does not exist or it is the root bone
- `int GetPredictedLODLevel() const`  
  Get predicted LOD level. This value is usually calculated in UpdateLODStatus, but can be modified by skeletal mesh streaming.
- `FVector GetRefPosePosition(int BoneIndex) const`  
  Gets the local-space position of a bone in the reference pose.

@param BoneIndex Index of the bone

@return Local space reference position
- `FTransform GetRefPoseTransform(int BoneIndex) const`  
  Gets the local-space transform of a bone in the reference pose.

@param BoneIndex Index of the bone

@return Local space reference transform
- `USkinnedAsset GetSkinnedAsset() const`  
  Get the SkinnedAsset rendered for this mesh.

@return the SkinnedAsset set to this mesh.
- `FName GetSocketBoneName(FName InSocketName) const`  
  Returns bone name linked to a given named socket on the skeletal mesh component.
If you're unsure to deal with sockets or bones names, you can use this function to filter through, and always return the bone name.

@param       bone name or socket name

@return      bone name
- `bool GetTwistAndSwingAngleOfDeltaRotationFromRefPose(FName BoneName, float32& OutTwistAngle, float32& OutSwingAngle) const`  
  Get Twist and Swing Angle in Degree of Delta Rotation from Reference Pose in Local space

First this function gets rotation of current, and rotation of ref pose in local space, and
And gets twist/swing angle value from refpose aligned.

@param BoneName Name of the bone
@param OutTwistAngle TwistAngle in degree
@param OutSwingAngle SwingAngle in degree

@return true if succeed. False otherwise. Often due to incorrect bone name.
- `HideBoneByName(FName BoneName, EPhysBodyOp PhysBodyOption)`  
  Hides the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones.
Compared to HideBone By Index - This keeps track of list of bones and update when LOD changes

@param  BoneName            Name of bone to hide
@param  PhysBodyOption          Option for physics bodies that attach to the bones to be hidden
- `bool IsBoneHiddenByName(FName BoneName)`  
  Determines if the specified bone is hidden.

@param  BoneName            Name of bone to check

@return true if hidden
- `bool IsMaterialSectionShown(int MaterialID, int LODIndex)`  
  Returns whether a specific material section is currently hidden on this component (by using ShowMaterialSection)
- `bool IsUsingSkinWeightProfile() const`  
  Check whether a skin weight profile is currently set on any layer.
- `OverrideMinLOD(int InNewMinLOD)`  
  Override the Min LOD of the mesh component

@param       InNewMinLOD     Override new MinLodModel that make sure the LOD does not go below of this value. Range from [0, Max Number of LOD - 1]. This will affect in the next tick update.
- `SetAlwaysUseMeshDeformer(bool bShouldAlwaysUseMeshDeformer)`  
  Always use a MeshDeformer as long as one can be found in the project settings

@param bShouldAlwaysUseMeshDeformer Always use mesh deformer for this component
- `SetCapsuleIndirectShadowMinVisibility(float32 NewValue)`
- `SetCastCapsuleDirectShadow(bool bNewValue)`
- `SetCastCapsuleIndirectShadow(bool bNewValue)`
- `SetForcedLOD(int InNewForcedLOD)`  
  Set ForcedLodModel of the mesh component

@param       InNewForcedLOD  Set new ForcedLODModel that forces to set the incoming LOD. Range from [1, Max Number of LOD]. This will affect in the next tick update.
- `SetLeaderPoseComponent(USkinnedMeshComponent NewLeaderBoneComponent, bool bForceUpdate = false, bool bInFollowerShouldTickPose = false)`  
  Set LeaderPoseComponent for this component

@param NewLeaderBoneComponent New LeaderPoseComponent
@param bForceUpdate If false, the function will be skipped if NewLeaderBoneComponent is the same as currently setup (default)
@param bInFollowerShouldTickPose If false, Follower components will not execute TickPose (default)
- `SetMeshDeformer(UMeshDeformer InMeshDeformer)`  
  Change the MeshDeformer that is used for this Component.

@param InMeshDeformer New mesh deformer to set for this component
- `SetPhysicsAsset(UPhysicsAsset NewPhysicsAsset, bool bForceReInit = false)`  
  Override the Physics Asset of the mesh. It uses SkeletalMesh.PhysicsAsset, but if you'd like to override use this function

@param       NewPhysicsAsset New PhysicsAsset
@param       bForceReInit    Force reinitialize
- `SetRenderStatic(bool bNewValue)`  
  Set whether this skinned mesh should be rendered as static mesh in a reference pose

@param       whether this skinned mesh should be rendered as static
- `SetSkinnedAssetAndUpdate(USkinnedAsset NewMesh, bool bReinitPose = true)`  
  Change the SkinnedAsset that is rendered for this Component. Will re-initialize the animation tree etc.

@param NewMesh New mesh to set for this component
@param bReinitPose Whether we should keep current pose or reinitialize.
- `SetSkinWeightOverride(int LODIndex, TArray<FSkelMeshSkinWeightInfo> SkinWeights)`  
  Allow override of skin weights on a per-component basis.
- `bool SetSkinWeightProfile(FName InProfileName, ESkinWeightProfileLayer InLayer = ESkinWeightProfileLayer :: Primary)`  
  Set up an override skin weight profile for this component on the given layer.
The values from the secondary layer (if set to have a profile) are applied first, followed by the values from the primary layer.
Since skin weight profiles are stored as sparse data, where only weight values different from the base are kept in storage, it's
possible to set up layers such that they don't interfere with one another.
- `SetVertexColorOverride_LinearColor(int LODIndex, TArray<FLinearColor> VertexColors)`  
  Allow override of vertex colors on a per-component basis, taking array of Blueprint-friendly LinearColors.
- `ShowAllMaterialSections(int LODIndex)`  
  Clear any material visibility modifications made by ShowMaterialSection
- `ShowMaterialSection(int MaterialID, int SectionIndex, bool bShow, int LODIndex)`  
  Allows hiding of a particular material (by ID) on this instance of a SkeletalMesh.

@param MaterialID - Index of the material show/hide
@param bShow - True to show the material, false to hide it
@param LODIndex - Index of the LOD to modify material visibility within
- `TransformFromBoneSpace(FName BoneName, FVector InPosition, FRotator InRotation, FVector& OutPosition, FRotator& OutRotation)`  
  Transform a location/rotation in bone relative space to world space.

@param BoneName Name of bone
@param InPosition Input position
@param InRotation Input rotation
@param OutPosition (out) Transformed position
@param OutRotation (out) Transformed rotation
- `TransformToBoneSpace(FName BoneName, FVector InPosition, FRotator InRotation, FVector& OutPosition, FRotator& OutRotation) const`  
  Transform a location/rotation from world space to bone relative space.
This is handy if you know the location in world space for a bone attachment, as AttachComponent takes location/rotation in bone-relative space.

@param BoneName Name of bone
@param InPosition Input position
@param InRotation Input rotation
@param OutPosition (out) Transformed position
@param OutRotation (out) Transformed rotation
- `UnHideBoneByName(FName BoneName)`  
  UnHide the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones.
Compared to HideBone By Index - This keeps track of list of bones and update when LOD changes
@param  BoneName            Name of bone to unhide
- `UnloadSkinWeightProfile(FName InProfileName)`  
  Unload a Skin Weight Profile's skin weight buffer (if created)
- `UnsetMeshDeformer()`  
  Unset any MeshDeformer applied to this Component.

@param InMeshDeformer New mesh deformer to set for this component

---

