### UInterchangeMeshFactoryNode


namespace Interchange

**方法**:

- `bool AddLodDataUniqueId(FString LodDataUniqueId)`
- `bool AddPayloadKeyBooleanAttribute(FString PayloadAttributeKey, bool Value)`  
  Add a boolean attribute for the payload. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddPayloadKeyDoubleAttribute(FString PayloadAttributeKey, float Value)`  
  Add a double attribute for the payload. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddPayloadKeyFloatAttribute(FString PayloadAttributeKey, float32 Value)`  
  Add a float attribute for the payload. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddPayloadKeyInt32Attribute(FString PayloadAttributeKey, int Value)`  
  Add an int attribute for the payload. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddPayloadKeyStringAttribute(FString PayloadAttributeKey, FString Value)`  
  Add a string attribute for the payload. Returns false if the attribute does not exist or if it cannot be added.
- `GetAssemblyPartDependencies(TMap<FString,FString>& OutAssemblyPartDependencies) const`  
  Retrieve the Nanite assembly part dependencies for this object.
- `int GetAssemblyPartDependenciesCount() const`  
  Retrieve the number of Nanite assembly part dependencies for this object.
- `bool GetCustomComputeWeightedNormals(bool& AttributeValue) const`  
  Query whether normals are recomputed by weighting the surface area and the corner angle of the triangle as a ratio.
- `bool GetCustomImportSockets(bool& AttributeValue) const`  
  Query whether the mesh factory should create sockets.
- `bool GetCustomKeepSectionsSeparate(bool& AttributeValue) const`  
  Query whether sections with matching materials are kept separate and will not get combined.
- `bool GetCustomLODGroup(FName& AttributeValue) const`  
  Query whether a custom LOD group is set for the mesh.
- `bool GetCustomRecomputeNormals(bool& AttributeValue) const`  
  Query whether normals in the imported mesh are ignored and recomputed. When normals are recomputed, the tangents are also recomputed.
- `bool GetCustomRecomputeTangents(bool& AttributeValue) const`  
  Query whether tangents in the imported mesh are ignored and recomputed.
- `bool GetCustomRemoveDegenerates(bool& AttributeValue) const`  
  Query whether degenerate triangles are removed.
- `bool GetCustomUseBackwardsCompatibleF16TruncUVs(bool& AttributeValue) const`  
  Query whether UVs are converted to 16-bit by a legacy truncation process instead of the default rounding process. This may avoid differences when reimporting older content.
- `bool GetCustomUseFullPrecisionUVs(bool& AttributeValue) const`  
  Query whether UVs are stored at full floating point precision.
- `bool GetCustomUseHighPrecisionTangentBasis(bool& AttributeValue) const`  
  Query whether tangents are stored at 16-bit precision instead of the default 8-bit precision.
- `bool GetCustomUseMikkTSpace(bool& AttributeValue) const`  
  Query whether tangents are recomputed using MikkTSpace when they need to be recomputed.
- `bool GetCustomVertexColorIgnore(bool& AttributeValue) const`  
  Query whether the static mesh factory should ignore the vertex color. Return false if the attribute was not set.
- `bool GetCustomVertexColorOverride(FColor& AttributeValue) const`  
  Query whether the static mesh factory should override the vertex color. Return false if the attribute was not set.
- `bool GetCustomVertexColorReplace(bool& AttributeValue) const`  
  Query whether the static mesh factory should replace the vertex color. Return false if the attribute was not set.
- `int GetLodDataCount() const`  
  Return the number of LODs this static mesh has.
- `GetLodDataUniqueIds(TArray<FString>& OutLodDataUniqueIds) const`
- `bool GetPayloadKeyBooleanAttribute(FString PayloadAttributeKey, bool& Value)`  
  Get a payload key boolean attribute from this node. Returns false if the attribute does not exist.
- `bool GetPayloadKeyDoubleAttribute(FString PayloadAttributeKey, float& Value)`  
  Get a payload key double attribute from this node. Returns false if the attribute does not exist.
- `bool GetPayloadKeyFloatAttribute(FString PayloadAttributeKey, float32& Value)`  
  Get a payload key float attribute from this node. Returns false if the attribute does not exist.
- `bool GetPayloadKeyInt32Attribute(FString PayloadAttributeKey, int& Value)`  
  Get a payload key int32 attribute from this node. Returns false if the attribute does not exist.
- `bool GetPayloadKeyStringAttribute(FString PayloadAttributeKey, FString& Value)`  
  Get a payload key string attribute from this node. Returns false if the attribute does not exist.
- `GetSlotMaterialDependencies(TMap<FString,FString>& OutMaterialDependencies) const`  
  Retrieve the correspondence table between slot names and assigned materials for this object.
- `bool GetSlotMaterialDependencyUid(FString SlotName, FString& OutMaterialDependency) const`  
  Retrieve the Material dependency for the specified slot of this object.
- `bool RemoveAssemblyPartDependencyUid(FString MeshUid)`  
  Remove a Nanite assembly part dependency associated with this object
- `bool RemoveLodDataUniqueId(FString LodDataUniqueId)`
- `bool RemoveSlotMaterialDependencyUid(FString SlotName)`  
  Remove the Material dependency associated with the specified slot name of this object.
- `bool ResetAssemblyDependencies()`  
  Reset all the Nanite assembly dependencies.
- `bool ResetSlotMaterialDependencies()`  
  Reset all the material dependencies.
- `bool SetAssemblyPartDependencyUid(FString MeshUid, FString AssemblyPartDependencyUid)`  
  Add a Nanite assembly part dependency to this object.
- `bool SetCustomComputeWeightedNormals(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether normals are recomputed by weighting the surface area and the corner angle of the triangle as a ratio.
- `bool SetCustomImportSockets(bool AttributeValue)`  
  Set whether the mesh factory should create sockets.
- `bool SetCustomKeepSectionsSeparate(bool AttributeValue)`  
  Set whether sections with matching materials are kept separate and will not get combined.
- `bool SetCustomLODGroup(FName AttributeValue, bool bAddApplyDelegate = true)`  
  Set a custom LOD group for the mesh.
- `bool SetCustomRecomputeNormals(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether normals in the imported mesh are ignored and recomputed. When normals are recomputed, the tangents are also recomputed.
- `bool SetCustomRecomputeTangents(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether tangents in the imported mesh are ignored and recomputed.
- `bool SetCustomRemoveDegenerates(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether degenerate triangles are removed.
- `bool SetCustomUseBackwardsCompatibleF16TruncUVs(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether UVs are converted to 16-bit by a legacy truncation process instead of the default rounding process. This may avoid differences when reimporting older content.
- `bool SetCustomUseFullPrecisionUVs(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether UVs are stored at full floating point precision.
- `bool SetCustomUseHighPrecisionTangentBasis(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether tangents are stored at 16-bit precision instead of the default 8-bit precision.
- `bool SetCustomUseMikkTSpace(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set whether tangents are recomputed using MikkTSpace when they need to be recomputed.
- `bool SetCustomVertexColorIgnore(bool AttributeValue)`  
  Set whether the static mesh factory should ignore the vertex color. Return false if the attribute could not be set.
- `bool SetCustomVertexColorOverride(FColor AttributeValue)`  
  Set whether the static mesh factory should override the vertex color. Return false if the attribute could not be set.
- `bool SetCustomVertexColorReplace(bool AttributeValue)`  
  Set whether the static mesh factory should replace the vertex color. Return false if the attribute could not be set.
- `bool SetSlotMaterialDependencyUid(FString SlotName, FString MaterialDependencyUid)`  
  Add a Material dependency to the specified slot of this object.

---

