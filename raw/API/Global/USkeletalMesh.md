### USkeletalMesh


SkeletalMesh is geometry bound to a hierarchical skeleton of bones which can be animated for the purpose of deforming the mesh.
Skeletal Meshes are built up of two parts; a set of polygons composed to make up the surface of the mesh, and a hierarchical skeleton which can be used to animate the polygons.
The 3D models, rigging, and animations are created in an external modeling and animation application (3DSMax, Maya, Softimage, etc).

@see https://docs.unrealengine.com/latest/INT/Engine/Content/Types/SkeletalMeshes/

**属性**:

- `UAssetImportData AssetImportData []`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserDataEditorOnly []`
- `EClothLODBiasMode ClothLODBiasMode []`
- `TSoftObjectPtr<UObject> DefaultAnimatingRig`
- `UMeshDeformer DefaultMeshDeformer`
- `FPerPlatformBool DisableBelowMinLodStripping []`
- `EAxis ForwardAxis [Axis that the skeletal mesh is facing. Default is the Y axis.
The facing axis represents the MeshDescription's orientation and is set on import.
Therefore, if this property is modified elsewhere, the associated MeshDescription should be appropriately modified to reflect the new orientation.]`
- `USkeletalMeshLODSettings LODSettings`
- `TArray<FSkeletalMaterial> Materials`
- `FPerPlatformInt MaxNumOptionalLODs []`
- `FPerPlatformInt MaxNumStreamedLODs []`
- `TArray<TObjectPtr<UClothingAssetBase>> MeshClothingAssets`
- `FPerPlatformInt MinLod []`
- `FPerQualityLevelInt MinQualityLevelLOD []`
- `TArray<TObjectPtr<UMorphTarget>> MorphTargets []`
- `FMeshNaniteSettings NaniteSettings [Settings related to building Nanite data.]`
- `FVector NegativeBoundsExtension`
- `TArray<TObjectPtr<UNodeMappingContainer>> NodeMappingData`
- `UMaterialInterface OverlayMaterial`
- `float32 OverlayMaterialMaxDrawDistance`
- `UPhysicsAsset PhysicsAsset`
- `FVector PositiveBoundsExtension`
- `int PostProcessAnimBPLODThreshold [* Max LOD level that post-process anim graphs are evaluated.
* For example if you have the threshold set to 2, it will evaluate until including LOD 2 (based on 0 index). In case the LOD level gets set to 3, it will stop evaluating the post-process anim graph.
* Setting it to -1 will always evaluate it and disable LODing.]`
- `TSubclassOf<UAnimInstance> PostProcessAnimBlueprint`
- `int RayTracingMinLOD []`
- `FSkeletalMeshSamplingInfo SamplingInfo []`
- `UPhysicsAsset ShadowPhysicsAsset`
- `EAxis SkelMirrorAxis []`
- `EAxis SkelMirrorFlipAxis []`
- `TArray<FBoneMirrorInfo> SkelMirrorTable []`
- `USkeleton Skeleton []`
- `TArray<FSkinWeightProfileInfo> SkinWeightProfiles []`
- `TArray<FSkeletalMeshSourceModel> SourceModels []`
- `UMeshDeformerCollection TargetMeshDeformers [Skeletal Mesh needs this collection of deformers to make sure it cooks any extra data required by these deformers]`
- `UThumbnailInfo ThumbnailInfo`
- `bool bEnablePerPolyCollision`
- `bool bOverrideLODStreamingSettings []`
- `FPerPlatformBool bSupportLODStreaming []`
- `bool bSupportRayTracing`


**方法**:

- `AddSocket(USkeletalMeshSocket InSocket, bool bAddToSkeleton = false)`  
  Add a skeletal socket object to this SkeletalMesh, and optionally promotes it to USkeleton socket.
- `USkeletalMeshSocket FindSocketAndIndex(FName InSocketName, int& OutIndex) const`  
  Find a socket object in this SkeletalMesh by name.
Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.
Also returns the index for the socket allowing for future fast access via GetSocketByIndex()
- `FBoxSphereBounds GetBounds() const`  
  Get the extended bounds of this mesh (imported bounds plus bounds extension). USkinnedAsset interface.
- `TSoftObjectPtr<UObject> GetDefaultAnimatingRig() const`
- `UMeshDeformer GetDefaultMeshDeformer() const`  
  Get the default mesh deformer used by this mesh. A mesh deformer is used to deform the skeletal mesh at runtime
- `EAxis GetForwardAxis() const`  
  Get the forward axis used by this mesh
- `bool HasVertexColors() const`  
  Return whether the mesh has vertex colors. USkinnedAsset interface.
- `FBoxSphereBounds GetImportedBounds() const`  
  Get the original imported bounds of the skel mesh
- `const USkeletalMeshLODSettings GetLODSettings() const`
- `TArray<FSkeletalMaterial> GetMaterials() const`  
  USkinnedAsset interface.
- `TArray<UClothingAssetBase> GetMeshClothingAssets() const`
- `GetMinLODForQualityLevels(TMap<EPerQualityLevels,int>& QualityLevelMinimumLODs, int& Default) const`
- `TArray<UMorphTarget> GetMorphTargetsPtrConv() const`  
  NOTE: BP compiler doesn't support TObjectPtr as an argument type for UFUNCTION so this converting call is
required. For many morphs, this can be expensive, since it needs to resolve _all_ TObjectPtrs and construct a new
array for it.
- `UNodeMappingContainer GetNodeMappingContainer(UBlueprint SourceAsset) const`
- `TArray<UNodeMappingContainer> GetNodeMappingData() const`
- `UMaterialInterface GetOverlayMaterial() const`  
  Get the default overlay material used by this mesh
- `float32 GetOverlayMaterialMaxDrawDistance() const`  
  Get the default overlay material max draw distance used by this mesh
- `UPhysicsAsset GetPhysicsAsset() const`  
  USkinnedAsset interface.
- `UPhysicsAsset GetShadowPhysicsAsset() const`  
  USkinnedAsset interface.
- `const USkeleton GetSkeleton() const`  
  USkinnedAsset interface.
- `USkeletalMeshSocket GetSocketByIndex(int Index) const`  
  Returns a socket by index. Max index is NumSockets(). The meshes sockets are accessed first, then the skeletons.
- `UMeshDeformerCollection GetTargetMeshDeformers() const`  
  Set the collection of mesh deformers that may be applied to this mesh. Skeletal Mesh use these deformers to determined if any extra data needs to be cooked
- `bool IsSectionUsingCloth(int InSectionIndex, bool bCheckCorrespondingSections = true) const`  
  Checks whether the provided section is using APEX cloth. if bCheckCorrespondingSections is true
disabled sections will defer to correspond sections to see if they use cloth (non-cloth sections
are disabled and another section added when cloth is enabled, using this flag allows for a check
on the original section to succeed)
@param InSectionIndex Index to check
@param bCheckCorrespondingSections Whether to check corresponding sections for disabled sections
- `TArray<FString> GetAllMorphTargetNames() const`  
  Returns the list of all morph targets of this skeletal mesh
@return     The list of morph targets
- `TArray<FString> GetAllSkinWeightProfileNames() const`  
  Returns the list of the names of all the skin weight profile on this skeletal mesh
@return     The list of skin weight profiles.
- `int NumSockets() const`  
  Returns the number of sockets available. Both on this mesh and it's skeleton.
- `SetDefaultAnimatingRig(TSoftObjectPtr<UObject> InAnimatingRig)`
- `SetLODSettings(USkeletalMeshLODSettings InLODSettings)`
- `SetMaterials(TArray<FSkeletalMaterial> InMaterials)`
- `SetMeshClothingAssets(TArray<UClothingAssetBase> InMeshClothingAssets)`
- `SetMinLODForQualityLevels(TMap<EPerQualityLevels,int> QualityLevelMinimumLODs, int Default = - 1)`  
  Allow to override min lod quality levels on a skeletalMesh and it Default value (-1 value for Default dont override its value).
- `SetMorphTargets(TArray<UMorphTarget> InMorphTargets)`
- `SetOverlayMaterial(UMaterialInterface NewOverlayMaterial)`  
  Change the default overlay material used by this mesh
- `SetOverlayMaterialMaxDrawDistance(float32 InMaxDrawDistance)`  
  Change the default overlay material max draw distance used by this mesh
- `SetSkeleton(USkeleton InSkeleton)`
- `bool RegenerateLOD(int NewLODCount = 0, bool bRegenerateEvenIfImported = false, bool bGenerateBaseLOD = false)`  
  Regenerate LODs of the mesh

@param SkeletalMesh  The mesh that will regenerate LOD
@param NewLODCount   Set valid value (>0) if you want to change LOD count.
                                            Otherwise, it will use the current LOD and regenerate
@param bRegenerateEvenIfImported     If this is true, it only regenerate even if this LOD was imported before
                                                                    If false, it will regenerate for only previously auto generated ones
@param bGenerateBaseLOD If this is true and there is some reduction data, the base LOD will be reduce according to the settings
@return      true if succeed. If mesh reduction is not available this will return false.
- `bool RenameSocket(FName OldName, FName NewName)`  
  Rename a socket within a skeleton
@param SkeletalMesh  The mesh inside which we are renaming a socket
@param OldName       The old name of the socket
@param NewName               The new name of the socket
@return true if the renaming succeeded.

---

