### UInterchangeSourceNode


This class allows a translator to add general source data that describes the whole source. Pipelines can use this information.

**方法**:

- `bool GetCustomAllowSceneRootAsJoint(bool& bAllowSceneRootAsJoint) const`  
  Gets, if the skeleton processing should accept a SceneRoot as a joint (root node), for when import is forced as Skeletal.
- `bool GetCustomAnimatedTimeEnd(float& AttributeValue) const`  
  Query the end of the source animated time.
- `bool GetCustomAnimatedTimeStart(float& AttributeValue) const`  
  Query the start of the source animated time.
- `bool GetCustomAxisConversionInverseTransform(FTransform& AxisConversionInverseTransform) const`  
  Query Axis Conversion Inverse Transform (Primarily used for Socket transform calculations.).
- `bool GetCustomImportUnusedMaterial(bool& AttributeValue) const`  
  Query whether to import materials that aren't used.
- `bool GetCustomNaniteTriangleThreshold(int64& MinNumTriangles) const`  
  Gets the minimum triangle count a mesh needs to have in order to get Nanite enabled for it when bBuildNanite is true on the static mesh pipeline.
- `bool GetCustomReimportStrategyFlags(uint8& StrategyFlag) const`  
  Get the reimport strategy based on EReimportStrategyFlags
- `bool GetCustomSkeletalMeshFrontAxis(uint8& AttributeValue) const`  
  Get the value of the front axis to be used when importing skeletal meshes.
- `bool GetCustomSourceFrameRateDenominator(int& AttributeValue) const`  
  Query the source frame rate denominator.
- `bool GetCustomSourceFrameRateNumerator(int& AttributeValue) const`  
  Query the source frame rate numerator.
- `bool GetCustomSourceTimelineEnd(float& AttributeValue) const`  
  Query the end of the source timeline.
- `bool GetCustomSourceTimelineStart(float& AttributeValue) const`  
  Query the start of the source timeline.
- `bool GetCustomSubPathPrefix(FString& Prefix) const`  
  Gets a prefix that should be added to factory node SubPath custom attributes.
For example this can contain the imported scene's name, so that we create an additional content folder named
after it to contain the imported assets.
- `bool GetCustomUseAssetTypeSubPathSuffix(bool& Suffix) const`  
  Gets whether factory nodes for this import should have a suffix named after their asset category added to their
custom sub path attribute. For example, if this is set then imported StaticMesh assets will be placed inside of
an additional content folder named "StaticMeshes".

Note that this is done automatically for all factory nodes created by the generic assets pipeline, but must be
handled manually by calling FillSubPathFromSourceNode() from InterchangePipelineHelper.h for any factory nodes
that other pipelines may create.
- `bool GetCustomUseLegacySkeletalMeshBakeTransform(bool& AttributeValue) const`  
  Does skeletalMesh factory should uses legacy bake transform behavior to create the skeletal mesh.
- `GetExtraInformation(TMap<FString,FString>& OutExtraInformation) const`  
  Get Extra Information that we want to show in the Config Panel (such as File Information).
- `InitializeSourceNode(FString UniqueID, FString DisplayLabel, UInterchangeBaseNodeContainer NodeContainer)`  
  Initialize the base data of the node. Adds it to NodeContainer.
@param UniqueID - The unique ID for this node.
@param DisplayLabel - The name of the node.
- `bool RemoveExtraInformation(FString Name)`  
  Remove Extra Information that we dont want to show in the Config Panel.
- `bool SetCustomAllowSceneRootAsJoint(bool bAllowSceneRootAsJoint)`  
  Sets, if the skeleton processing should accept a SceneRoot as a joint (root node), for when import is forced as Skeletal.
- `bool SetCustomAnimatedTimeEnd(float AttributeValue)`  
  Set the end of the source animated time.
- `bool SetCustomAnimatedTimeStart(float AttributeValue)`  
  Set the start of the source animated time.
- `bool SetCustomAxisConversionInverseTransform(FTransform AxisConversionInverseTransform)`  
  Set the Axis Conversion Inverse Transform (Primarily used for Socket transform calculations.).
- `bool SetCustomImportUnusedMaterial(bool AttributeValue)`  
  Set whether to import materials that aren't used.
- `bool SetCustomNaniteTriangleThreshold(int64 MinNumTriangles)`  
  Sets the minimum triangle count a mesh needs to have in order to get Nanite enabled for it when bBuildNanite is true on the static mesh pipeline.
- `bool SetCustomReimportStrategyFlags(uint8 StrategyFlag)`  
  Set the reimport strategy based on EReimportStrategyFlags
- `bool SetCustomSkeletalMeshFrontAxis(uint8 AttributeValue)`  
  Set the value of the front axis to be used when importing skeletal meshes.
- `bool SetCustomSourceFrameRateDenominator(int AttributeValue)`  
  Set the source frame rate denominator.
- `bool SetCustomSourceFrameRateNumerator(int AttributeValue)`  
  Set the source frame rate numerator.
- `bool SetCustomSourceTimelineEnd(float AttributeValue)`  
  Set the end of the source timeline.
- `bool SetCustomSourceTimelineStart(float AttributeValue)`  
  Set the start of the source timeline.
- `bool SetCustomSubPathPrefix(FString Prefix)`  
  Sets the prefix that should be added to factory node SubPath custom attributes.
- `bool SetCustomUseAssetTypeSubPathSuffix(bool Suffix)`  
  Sets whether factory nodes for this import should have a suffix named after their asset category added to their
custom sub path attribute.
- `bool SetCustomUseLegacySkeletalMeshBakeTransform(bool AttributeValue)`  
  Set the SkeletalMesh factory to uses legacy bake transform behavior to create the skeletalmesh.
- `bool SetExtraInformation(FString Name, FString Value)`  
  Set Extra Information that we want to show in the Config Panel (such as File Information).

---

