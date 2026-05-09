### UMaterialInterface


**属性**:

- `UAssetImportData AssetImportData [Importing data and options used for this material]`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `UMaterialInterfaceEditorOnlyData EditorOnlyData []`
- `FLightmassMaterialInterfaceSettings LightmassSettings [The Lightmass settings for this object.]`
- `UNeuralProfile NeuralProfile [Neural network profile. For internal usage, not editable/visible]`
- `FSoftObjectPath PreviewMesh [The mesh used by the material editor to preview the material.]`
- `USubsurfaceProfile SubsurfaceProfile [SubsurfaceProfile, for Screen Space Subsurface Scattering..]`
- `UThumbnailInfo ThumbnailInfo [Information for thumbnail rendering]`


**方法**:

- `UMaterial GetBaseMaterial()`  
  Walks up parent chain and finds the base Material that this is an instance of. Just calls the virtual GetMaterial()
- `EBlendMode GetBlendMode() const`
- `UMaterialInterface GetNaniteOverideMaterial() const`  
  Get the associated nanite override material.
- `FMaterialParameterInfo GetParameterInfo(EMaterialParameterAssociation Association, FName ParameterName, UMaterialFunctionInterface LayerFunction) const`
- `UPhysicalMaterial GetPhysicalMaterial() const`  
  Return a pointer to the physical material used by this material instance.
@return The physical material.
- `UPhysicalMaterial GetPhysicalMaterialFromMap(int Index) const`  
  Return a pointer to the physical material from mask map at given index.
@return The physical material.
- `UPhysicalMaterialMask GetPhysicalMaterialMask() const`  
  Return a pointer to the physical material mask used by this material instance.
@return The physical material.
- `SetForceMipLevelsToBeResident(bool OverrideForceMiplevelsToBeResident, bool bForceMiplevelsToBeResidentValue, float32 ForceDuration, int CinematicTextureGroups = 0, bool bFastResponse = false)`  
  Force the streaming system to disregard the normal logic for the specified duration and
instead always load all mip-levels for all textures used by this material.

@param OverrideForceMiplevelsToBeResident    - Whether to use (true) or ignore (false) the bForceMiplevelsToBeResidentValue parameter.
@param bForceMiplevelsToBeResidentValue              - true forces all mips to stream in. false lets other factors decide what to do with the mips.
@param ForceDuration                                                 - Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic. Negative value turns it off.
@param CinematicTextureGroups                                - Bitfield indicating texture groups that should use extra high-resolution mips
@param bFastResponse                                                 - USE WITH EXTREME CAUTION! Fast response textures incur sizable GT overhead and disturb streaming metric calculation. Avoid whenever possible.

---

