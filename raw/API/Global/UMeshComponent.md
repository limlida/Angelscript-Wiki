### UMeshComponent


MeshComponent is an abstract base for any component that is an instance of a renderable collection of triangles.

@see UStaticMeshComponent
@see USkeletalMeshComponent

**属性**:

- `TArray<TObjectPtr<UMaterialInterface>> MaterialSlotsOverlayMaterial [Translucent material to blend on top of this mesh. Mesh will be rendered twice - once with a base material and once with overlay material.
The difference with the  global OverlayMaterial is those are per material slot, if the entry is null or doesn't exist the global
OverlayMaterial will be use for sections using the material slot.]`
- `UMaterialInterface OverlayMaterial [Translucent material to blend on top of this mesh. Mesh will be rendered twice - once with a base material and once with overlay material]`
- `float32 OverlayMaterialMaxDrawDistance [The max draw distance for overlay material. A distance of 0 indicates that overlay will be culled using primitive max distance.]`
- `TArray<TObjectPtr<UMaterialInterface>> OverrideMaterials [Material overrides.]`
- `bool bEnableMaterialParameterCaching [Whether or not to cache material parameter to speed up setting scalar or vector value on materials]`


**方法**:

- `TArray<UMaterialInterface> GetMaterials() const`
- `UMaterialInterface GetOverlayMaterial() const`  
  Get the overlay material used by this instance
- `float32 GetOverlayMaterialMaxDrawDistance() const`  
  Get the overlay material used by this instance
- `bool PrestreamMeshLods(float32 Seconds)`  
  Tell the streaming system to start streaming in all LODs for the mesh.
 Note: this function may set bIgnoreStreamingMipBias on this component enable the FastForceResident system.
@return bool                                                        True if streaming was successfully requested
@param Seconds                                                  Number of seconds to force all LODs to be resident
- `PrestreamTextures(float32 Seconds, bool bPrioritizeCharacterTextures, int CinematicTextureGroups = 0)`  
  Tell the streaming system to start loading all textures with all mip-levels.
@param Seconds                                                  Number of seconds to force all mip-levels to be resident
@param bPrioritizeCharacterTextures             Whether character textures should be prioritized for a while by the streaming system
@param CinematicTextureGroups                   Bitfield indicating which texture groups that use extra high-resolution mips
- `SetColorParameterValueOnMaterials(FName ParameterName, FLinearColor ParameterValue)`  
  Set all occurrences of Vector Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue
- `SetOverlayMaterial(UMaterialInterface NewOverlayMaterial)`  
  Change the overlay material used by this instance
- `SetOverlayMaterialMaxDrawDistance(float32 InMaxDrawDistance)`  
  Change the overlay material max draw distance used by this instance
- `SetScalarParameterValueOnMaterials(FName ParameterName, float32 ParameterValue)`  
  Set all occurrences of Scalar Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue
- `SetVectorParameterValueOnMaterials(FName ParameterName, FVector ParameterValue)`  
  Set all occurrences of Vector Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue

---

