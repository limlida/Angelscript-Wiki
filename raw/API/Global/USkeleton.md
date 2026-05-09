### USkeleton


USkeleton : that links between mesh and animation
        - Bone hierarchy for animations
        - Bone/track linkup between mesh and animation
        - Retargetting related

**属性**:

- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserDataEditorOnly [Array of user data stored with the asset]`
- `TArray<TSoftObjectPtr<USkeleton>> CompatibleSkeletons [The list of compatible skeletons. This skeleton will be able to use animation data originating from skeletons within this array, such as animation sequences.
This property is not bi-directional.

This is an array of TSoftObjectPtr in order to prevent all skeletons to be loaded, as we only want to load things on demand.
As this is EditAnywhere and an array of TSoftObjectPtr, checking validity of pointers is needed.]`
- `EAxis PreviewForwardAxis [Preview axis to consider as "forward" for the skeleton. Only used for preview purposes.]`
- `bool bUseRetargetModesFromCompatibleSkeleton [Should we use the per bone translational retarget mode from the source (compatible) skeleton's instead of from this skeleton? On default this is disabled.
Enabling this would allow you to have one shared set of animations. You would configure the retarget settings on the animation skeleton.
Then every character that plays animations from this source skeleton will use the translational retarget settings from the source skeleton, which saves you from
having to configure the retarget modes for every bone in every character as they can be setup just once now on the animation skeleton.]`


**方法**:

- `bool AddCurveMetaData(FName CurveName, bool bTransact = true)`  
  Adds a curve metadata entry with the specified name on the skeleton
@param       InCurveName                     The name of the curve to find
@param   bTransact           If true record a new transaction
@return true if an entry was added, false if an entry already existed
- `bool GetCurveMetaDataMaterial(FName CurveName) const`  
  Gets the material flag for a curve's metadata
@param       CurveName       The name of the curve to check
@return true if the flag has been set
- `bool GetCurveMetaDataMorphTarget(FName CurveName) const`  
  Gets the morph target flag for a curve's metadata
@param       CurveName       The name of the curve to check
@return true if the flag has been set
- `GetCurveMetaDataNames(TArray<FName>& OutNames) const`  
  Get an array of all curve metadata names
@param       OutNames        The array to receive the metadata names
- `int GetNumCurveMetaData() const`  
  @return the number of curve metadata entries on the skeleton *
- `bool RemoveCurveMetaData(FName CurveName)`  
  Removes a curve metadata entry for the specified name.
@param CurveName     The name of the curve to remove the metadata for
@return true if the entry was successfully removed (i.e. it existed)
- `bool RenameCurveMetaData(FName OldName, FName NewName)`  
  Renames a curve metadata entry. Metadata is preserved, but assigned to a different curve name.
@param OldName       The name of an existing curve entry
@param NewName       The name to change the entry to
@return                      true if the rename was successful (the old name was found and the new name didnt collide with an
                                     existing entry)
- `SetCurveMetaDataMaterial(FName CurveName, bool bOverrideMaterial)`  
  Set the material flag for a curve's metadata
@param       CurveName                       The name of the curve to set
@param       bOverrideMaterial       Whether to set the material flag
- `SetCurveMetaDataMorphTarget(FName CurveName, bool bOverrideMorphTarget)`  
  Set the morph target flag for a curve's metadata
@param       CurveName                               The name of the curve to set
@param       bOverrideMorphTarget    Whether to set the morph target flag
- `GetReferencePose(FAnimPose& OutPose)`  
  Populates an Anim Pose with the reference poses stored for the provided USkeleton

@param        Skeleton                                USkeleton object to retrieve the reference pose from
@param        OutPose                                 Anim pose to hold the reference pose
- `AddCompatibleSkeleton(const USkeleton SourceSkeleton)`
- `AddCompatibleSkeletonSoft(TSoftObjectPtr<USkeleton> SourceSkeleton)`
- `UBlendProfile GetBlendProfile(FName InProfileName)`  
  Get the specified blend profile by name

---

