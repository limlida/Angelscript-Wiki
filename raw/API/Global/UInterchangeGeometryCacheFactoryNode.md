### UInterchangeGeometryCacheFactoryNode


**方法**:

- `bool GetCustomApplyConstantTopologyOptimization(bool& AttributeValue) const`  
  Get whether constant topology optimization is applied
- `bool GetCustomEndFrame(int& AttributeValue) const`  
  Get the end frame index of the animation
- `bool GetCustomFlattenTracks(bool& AttributeValue) const`  
  Get whether to merge all geometries into a single mesh
- `bool GetCustomMotionVectorsImport(EInterchangeMotionVectorsHandling& AttributeValue) const`  
  Get how the motion vectors are managed
- `bool GetCustomNumBitsForUVs(int& AttributeValue) const`  
  Get the number of bits for compressing the UV into
- `bool GetCustomOptimizeIndexBuffers(bool& AttributeValue) const`  
  Get whether to optimize the index buffers when building the geometry cache
- `bool GetCustomPositionPrecision(float32& AttributeValue) const`  
  Get the precision used for compressing vertex positions
- `bool GetCustomStartFrame(int& AttributeValue) const`  
  Get the start frame index of the animation
- `bool GetCustomStoreImportedVertexNumbers(bool& AttributeValue) const`  
  Get whether vertex numbers from DCC are stored in the geometry cache
- `GetSceneNodeAnimationPayloadKeys(TMap<FString,FString>& OutSceneNodeAnimationPayloadKeyUids) const`  
  Get the animation payload keys that are relevant to building the geometry cache
- `InitializeGeometryCacheNode(FString UniqueID, FString DisplayLabel, FString InAssetClass, UInterchangeBaseNodeContainer NodeContainer)`  
  Initialize node data. Also adds it to NodeContainer.
@param UniqueID - The unique ID for this node.
@param DisplayLabel - The name of the node.
@param InAssetClass - The class the GeometryCache factory will create for this node.
- `bool SetAnimationPayloadKeyForSceneNodeUid(FString SceneNodeUid, FString InUniqueId)`  
  Set the animation payload keys that are relevant to building the geometry cache
- `bool SetCustomApplyConstantTopologyOptimization(bool AttributeValue)`  
  Get whether constant topology optimization is applied
- `bool SetCustomEndFrame(int AttributeValue)`  
  Set the end frame index of the animation
- `bool SetCustomFlattenTracks(bool AttributeValue)`  
  Set whether to merge all geometries into a single mesh
- `bool SetCustomMotionVectorsImport(EInterchangeMotionVectorsHandling AttributeValue)`  
  Set how the motion vectors are managed
- `bool SetCustomNumBitsForUVs(int AttributeValue)`  
  Set the number of bits for compressing the UV into
- `bool SetCustomOptimizeIndexBuffers(bool AttributeValue)`  
  Set whether to optimize the index buffers when building the geometry cache
- `bool SetCustomPositionPrecision(float32 AttributeValue)`  
  Set the precision used for compressing vertex positions
- `bool SetCustomStartFrame(int AttributeValue)`  
  Set the start frame index of the animation
- `bool SetCustomStoreImportedVertexNumbers(bool AttributeValue)`  
  Set whether vertex numbers from DCC are stored in the geometry cache

---

