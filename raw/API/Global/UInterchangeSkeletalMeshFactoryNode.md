### UInterchangeSkeletalMeshFactoryNode


**方法**:

- `bool GetCustomAddCurveMetadataToSkeleton(bool& AttributeValue) const`  
  Get the custom attribute AddCurveMetadataToSkeleton. Return false if the attribute is not set.

Note - If this setting is disabled, curve metadata will be added to skeletal meshes for morph targets, but no metadata entry will be created for general curves.
- `bool GetCustomBoneInfluenceLimit(int& AttributeValue) const`  
  Query the maximum number of bone influences to allow each vertex in this mesh to use.
If set higher than the limit determined by the project settings, it has no effect.
If set to 0, the value is taken from the DefaultBoneInfluenceLimit project setting.
- `bool GetCustomCreatePhysicsAsset(bool& AttributeValue) const`  
  Query whether the skeletal mesh factory should create a physics asset. Return false if the attribute was not set.
- `bool GetCustomImportContentType(EInterchangeSkeletalMeshContentType& AttributeValue) const`  
  Query the skeletal mesh import content type. This content type determines whether the factory imports partial or full translated content. Return false if the attribute was not set.
- `bool GetCustomImportMorphTarget(bool& AttributeValue) const`  
  Query whether the skeletal mesh factory should create morph targets. Return false if the attribute was not set.
- `bool GetCustomImportVertexAttributes(bool& AttributeValue) const`  
  Query whether the skeletal mesh factory should import vertex attributes. Return false if the attribute was not set.
- `bool GetCustomMergeMorphTargetShapeWithSameName(bool& AttributeValue) const`  
  Query whether the skeletal mesh factory should merge morph target shape with the same name under one morph target. Return false if the attribute was not set.
- `bool GetCustomMorphThresholdPosition(float32& AttributeValue) const`  
  Query the skeletal mesh threshold value that is used to compare vertex position equality when computing morph target deltas.
- `bool GetCustomPhysicAssetSoftObjectPath(FSoftObjectPath& AttributeValue) const`  
  Query a physics asset the skeletal mesh factory should use. Return false if the attribute was not set.
- `bool GetCustomSkeletonSoftObjectPath(FSoftObjectPath& AttributeValue) const`  
  Query the skeletal mesh factory skeleton UObject. Return false if the attribute was not set.
- `bool GetCustomThresholdPosition(float32& AttributeValue) const`  
  Query the skeletal mesh threshold value that is used to decide whether two vertex positions are equal.
- `bool GetCustomThresholdTangentNormal(float32& AttributeValue) const`  
  Query the skeletal mesh threshold value that is used to decide whether two normals, tangents, or bi-normals are equal.
- `bool GetCustomThresholdUV(float32& AttributeValue) const`  
  Query the skeletal mesh threshold value that is used to decide whether two UVs are equal.
- `bool GetCustomUseHighPrecisionSkinWeights(bool& AttributeValue) const`  
  Query the skeletal mesh UseHighPrecisionSkinWeights setting.
- `InitializeSkeletalMeshNode(FString UniqueID, FString DisplayLabel, FString InAssetClass, UInterchangeBaseNodeContainer NodeContainer)`  
  Initialize node data. Also adds it to NodeContainer.
@param: UniqueID - The unique ID for this node.
@param DisplayLabel - The name of the node.
@param InAssetClass - The class the SkeletalMesh factory will create for this node.
- `bool SetCustomAddCurveMetadataToSkeleton(bool AttributeValue)`  
  Set the custom attribute AddCurveMetadataToSkeleton. Return false if the attribute could not be set.

Note - If this setting is disabled, curve metadata will be added to skeletal meshes for morph targets, but no metadata entry will be created for general curves.
- `bool SetCustomBoneInfluenceLimit(int AttributeValue, bool bAddApplyDelegate = true)`  
  Set the maximum number of bone influences to allow each vertex in this mesh to use.
If set higher than the limit determined by the project settings, it has no effect.
If set to 0, the value is taken from the DefaultBoneInfluenceLimit project setting.
- `bool SetCustomCreatePhysicsAsset(bool AttributeValue)`  
  Set whether the skeletal mesh factory should create a physics asset. Return false if the attribute could not be set.
- `bool SetCustomImportContentType(EInterchangeSkeletalMeshContentType AttributeValue)`  
  Set the skeletal mesh import content type. This content type determines whether the factory imports partial or full translated content. Return false if the attribute could not be set.
- `bool SetCustomImportMorphTarget(bool AttributeValue)`  
  Set whether the skeletal mesh factory should create morph targets. Return false if the attribute could not be set.
- `bool SetCustomImportVertexAttributes(bool AttributeValue)`  
  Set whether the skeletal mesh factory should import vertex attributes. Return false if the attribute could not be set.
- `bool SetCustomMergeMorphTargetShapeWithSameName(bool AttributeValue)`  
  Set whether the skeletal mesh factory should merge morph target shape with the same name under one morph target. Return false if the attribute could not be set.
- `bool SetCustomMorphThresholdPosition(float32 AttributeValue, bool bAddApplyDelegate = true)`  
  Set the skeletal mesh threshold value that is used to compare vertex position equality when computing morph target deltas.
- `bool SetCustomPhysicAssetSoftObjectPath(FSoftObjectPath AttributeValue)`  
  Set a physics asset the skeletal mesh factory should use. Return false if the attribute could not be set.
- `bool SetCustomSkeletonSoftObjectPath(FSoftObjectPath AttributeValue)`  
  Set the skeletal mesh factory skeleton UObject. Return false if the attribute could not be set.
- `bool SetCustomThresholdPosition(float32 AttributeValue, bool bAddApplyDelegate = true)`  
  Set the skeletal mesh threshold value that is used to decide whether two vertex positions are equal.
- `bool SetCustomThresholdTangentNormal(float32 AttributeValue, bool bAddApplyDelegate = true)`  
  Set the skeletal mesh threshold value that is used to decide whether two normals, tangents, or bi-normals are equal.
- `bool SetCustomThresholdUV(float32 AttributeValue, bool bAddApplyDelegate = true)`  
  Set the skeletal mesh threshold value that is used to decide whether two UVs are equal.
- `bool SetCustomUseHighPrecisionSkinWeights(bool AttributeValue, bool bAddApplyDelegate = true)`  
  Set the skeletal mesh UseHighPrecisionSkinWeights setting.

---

