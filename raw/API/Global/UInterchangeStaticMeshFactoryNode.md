### UInterchangeStaticMeshFactoryNode


namespace UE

**方法**:

- `bool AddSocketUid(FString SocketUid)`
- `bool AddSocketUids(TArray<FString> InSocketUids)`
- `bool GetCustomAutoComputeLODScreenSizes(bool& AttributeValue) const`  
  Get whether the static mesh factory should auto compute LOD Screen Sizes. Return false if the attribute was not set.
- `bool GetCustomBuildNanite(bool& AttributeValue) const`  
  Get whether the static mesh factory should set the Nanite build setting. Return false if the attribute was not set.
- `bool GetCustomBuildReversedIndexBuffer(bool& AttributeValue) const`  
  Get whether the static mesh should build a reversed index buffer.
- `bool GetCustomBuildScale3D(FVector& AttributeValue) const`  
  Get the local scale that is applied when building the static mesh.
- `bool GetCustomDistanceFieldReplacementMesh(FSoftObjectPath& AttributeValue) const`  
  Get the static mesh asset whose distance field will be used as the distance field for the imported mesh.
- `bool GetCustomDistanceFieldResolutionScale(float32& AttributeValue) const`  
  Get the scale to apply to the mesh when allocating the distance field volume texture.
The default scale is 1, which assumes that the mesh will be placed unscaled in the world.
- `bool GetCustomDstLightmapIndex(int& AttributeValue) const`  
  Get the index of the UV that is used to store generated lightmaps for the static mesh.
- `bool GetCustomGenerateDistanceFieldAsIfTwoSided(bool& AttributeValue) const`  
  Get whether to generate the distance field by treating every triangle hit as a front face.
This prevents the distance field from being discarded due to the mesh being open, but also lowers distance field ambient occlusion quality.
- `bool GetCustomGenerateLightmapUVs(bool& AttributeValue) const`  
  Get whether the static mesh should generate lightmap UVs.
- `bool GetCustomMaxLumenMeshCards(int& AttributeValue) const`  
  Get the maximum number of Lumen mesh cards to generate for this mesh.
More cards means that the surface will have better coverage, but will result in increased runtime overhead.
Set this to 0 to disable mesh card generation for this mesh.
The default is 12.
- `bool GetCustomMinLightmapResolution(int& AttributeValue) const`  
  Get the amount of padding used to pack UVs for the static mesh.
- `bool GetCustomSrcLightmapIndex(int& AttributeValue) const`  
  Get the index of the UV that is used as the source for generating lightmaps for the static mesh.
- `bool GetCustomSubstituteUID(FString& AttributeValue) const`  
  Gets the Substitute UID, said UID can be used to acquire an identical FactoryNode.
(for more see SetCustomSubstituteUID)
- `bool GetCustomSupportFaceRemap(bool& AttributeValue) const`  
  Get whether the static mesh is set up for use with physical material masks.
- `int GetLODScreenSizeCount() const`  
  Returns the number of LOD Screen Sizes the static mesh has.
- `GetLODScreenSizes(TArray<float32>& OutLODScreenSizes) const`  
  Returns All the LOD Screen Sizes set for the static mesh.
- `int GetSocketUidCount() const`  
  Return the number of socket UIDs this static mesh has.
- `GetSocketUids(TArray<FString>& OutSocketUids) const`
- `InitializeStaticMeshNode(FString UniqueID, FString DisplayLabel, FString InAssetClass, UInterchangeBaseNodeContainer NodeContainer)`  
  Initialize node data. Also adds it to NodeContainer.
@param UniqueID - The unique ID for this node.
@param DisplayLabel - The name of the node.
@param InAssetClass - The class the StaticMesh factory will create for this node.
- `bool RemoveSocketUd(FString SocketUid)`
- `bool SetCustomAutoComputeLODScreenSizes(bool AttributeValue)`  
  Set whether the static mesh factory should auto compute LOD Screen Sizes. Return false if the attribute was not set.
- `bool SetCustomBuildNanite(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether the static mesh factory should set the Nanite build setting. Return false if the attribute was not set.
- `bool SetCustomBuildReversedIndexBuffer(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether the static mesh should build a reversed index buffer.
- `bool SetCustomBuildScale3D(FVector AttributeValue, bool bAddApplyDelegate = true)`  
  Set the local scale that is applied when building the static mesh.
- `bool SetCustomDistanceFieldReplacementMesh(FSoftObjectPath AttributeValue, bool bAddApplyDelegate = true)`  
  Set the static mesh asset whose distance field will be used as the distance field for the imported mesh.
- `bool SetCustomDistanceFieldResolutionScale(float32 AttributeValue, bool bAddApplyDelegate = true)`  
  Set the scale to apply to the mesh when allocating the distance field volume texture.
The default scale is 1, which assumes that the mesh will be placed unscaled in the world.
- `bool SetCustomDstLightmapIndex(int AttributeValue, bool bAddApplyDelegate = true)`  
  Set the index of the UV that is used to store generated lightmaps for the static mesh.
- `bool SetCustomGenerateDistanceFieldAsIfTwoSided(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether to generate the distance field by treating every triangle hit as a front face.
This prevents the distance field from being discarded due to the mesh being open, but also lowers distance field ambient occlusion quality.
- `bool SetCustomGenerateLightmapUVs(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether the static mesh should generate lightmap UVs.
- `bool SetCustomMaxLumenMeshCards(int AttributeValue, bool bAddApplyDelegate = true)`  
  Set the maximum number of Lumen mesh cards to generate for this mesh.
More cards means that the surface will have better coverage, but will result in increased runtime overhead.
Set this to 0 to disable mesh card generation for this mesh.
The default is 12.
- `bool SetCustomMinLightmapResolution(int AttributeValue, bool bAddApplyDelegate = true)`  
  Set the amount of padding used to pack UVs for the static mesh.
- `bool SetCustomSrcLightmapIndex(int AttributeValue, bool bAddApplyDelegate = true)`  
  Set the index of the UV that is used as the source for generating lightmaps for the static mesh.
- `bool SetCustomSubstituteUID(FString AttributeValue)`  
  Currently specifically used for LOD group nodes.
If an LOD Group is identified as identical to another one (when bakeMesh is turned off),
      then said LOD Group's asset won't be created and the substitute UID will be set to the FactoryNode that's identical to the one at hand.
- `bool SetCustomSupportFaceRemap(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether the static mesh is set up for use with physical material masks.
- `bool SetLODScreenSizes(TArray<float32> InLODScreenSizes)`  
  Sets the LOD Screen Sizes for the static mesh.

---

