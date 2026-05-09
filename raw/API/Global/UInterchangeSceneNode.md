### UInterchangeSceneNode


The scene node represents a transform node in the scene.
Scene nodes can have user-defined attributes. Use UInterchangeUserDefinedAttributesAPI to get and set user-defined attribute data.

**方法**:

- `bool AddComponentUid(FString ComponentUid)`
- `bool AddSpecializedType(FString SpecializedType)`
- `bool GetAnimationCurveTypeForCurveName(FString CurveName, EInterchangeAnimationPayLoadType& OutCurveAnimationType) const`  
  Gets the Animation Curve Type for the given CurveName.
- `GetComponentUids(TArray<FString>& OutComponentUids) const`
- `bool GetCustomActorVisibility(bool& bOutIsVisible) const`  
  Gets whether actors spawned from this node should be visible
- `bool GetCustomAnimationAssetUidToPlay(FString& AttributeValue) const`  
  Get the Animation Asset To Play by this Scene Node.
- `bool GetCustomAssetInstanceUid(FString& AttributeValue) const`  
  Get which asset, if any, a scene node is instantiating. Return false if the Attribute was not set previously.
- `bool GetCustomBindPoseGlobalTransform(const UInterchangeBaseNodeContainer BaseNodeContainer, FTransform GlobalOffsetTransform, FTransform& AttributeValue, bool bForceRecache = false) const`  
  Get the global transform of the bind pose scene node. This value is computed from the local transforms of all parent bind poses.
- `bool GetCustomBindPoseLocalTransform(FTransform& AttributeValue) const`  
  Get the local transform of the bind pose scene node.
- `bool GetCustomComponentVisibility(bool& bOutIsVisible) const`  
  Gets whether components spawned from this node should be visible
- `bool GetCustomGeometricTransform(FTransform& AttributeValue) const`  
  Get the geometric offset. Any mesh attached to this scene node will be offset using this transform.
- `bool GetCustomGlobalMatrixForT0Rebinding(FMatrix& AttributeValue) const`  
  Gets the Global Transformation Matrix used for T0 rebinding.
- `bool GetCustomGlobalTransform(const UInterchangeBaseNodeContainer BaseNodeContainer, FTransform GlobalOffsetTransform, FTransform& AttributeValue, bool bForceRecache = false) const`  
  Get the default scene node global transform. This value is computed from the local transforms of all parent scene nodes.
- `bool GetCustomHasBindPose(bool& bHasBindPose) const`  
  Gets if the joint has BindPose (if the setter was used, otherwise returns with false and T0 evaluation presumes bHasBindPose==true).
- `bool GetCustomIsSceneRoot(bool& IsSceneRoot) const`  
  Gets IsSceneRoot, which indicates if the SceneNode is a Scene Root Node.
- `bool GetCustomLocalTransform(FTransform& AttributeValue) const`  
  Get the default scene node local transform.
The default transform is the local transform of the node (no bind pose, no time evaluation).
- `bool GetCustomPivotNodeTransform(FTransform& AttributeValue) const`  
  Get the node pivot geometric offset.
- `bool GetCustomTimeZeroGlobalTransform(const UInterchangeBaseNodeContainer BaseNodeContainer, FTransform GlobalOffsetTransform, FTransform& AttributeValue, bool bForceRecache = false) const`  
  Get the global transform of the time-zero scene node. This value is computed from the local transforms of all parent time-zero scene nodes.
- `bool GetCustomTimeZeroLocalTransform(FTransform& AttributeValue) const`  
  Get the local transform of the time-zero scene node.
- `bool GetGlobalBindPoseReferenceForMeshUID(FString MeshUID, FMatrix& GlobalBindPoseReference) const`  
  Get the Global Bind Pose Reference for given MeshUID.
- `GetMorphTargetCurveWeights(TMap<FString,float32>& OutMorphTargetCurveWeights) const`  
  Get MorphTargets and their weights.
- `GetSlotMaterialDependencies(TMap<FString,FString>& OutMaterialDependencies) const`  
  Retrieve the correspondence table between slot names and assigned materials for this object.
- `bool GetSlotMaterialDependencyUid(FString SlotName, FString& OutMaterialDependency) const`  
  Retrieve the Material dependency for a given slot of this object.
- `GetSpecializedType(int Index, FString& OutSpecializedType) const`
- `int GetSpecializedTypeCount() const`  
  Get the specialized type this scene node represents (for example, Joint or LODGroup).
- `GetSpecializedTypes(TArray<FString>& OutSpecializedTypes) const`
- `bool IsSpecializedTypeContains(FString SpecializedType) const`
- `bool RemoveSlotMaterialDependencyUid(FString SlotName)`  
  Remove the Material dependency associated with the given slot name from this object.
- `bool RemoveSpecializedType(FString SpecializedType)`
- `bool SetAnimationCurveTypeForCurveName(FString CurveName, EInterchangeAnimationPayLoadType AnimationCurveType)`  
  Sets the Animation Curve Type for the given CurveName (StepCurve or Curve). (Mostly used for tracking Custom Attributes' Animation Types)
- `bool SetCustomActorVisibility(bool bInIsVisible)`  
  Sets whether actors spawned from this node should be visible
- `bool SetCustomAnimationAssetUidToPlay(FString AttributeValue)`  
  Set the Animation Asset To Play by this Scene Node. Only relevant for SkeletalMeshActors (that is, SceneNodes that are instantiating Skeletal Meshes).
- `bool SetCustomAssetInstanceUid(FString AttributeValue)`  
  Add an asset for this scene node to instantiate.
- `bool SetCustomBindPoseLocalTransform(const UInterchangeBaseNodeContainer BaseNodeContainer, FTransform AttributeValue, bool bResetCache = true)`  
  Set the local transform of the bind pose scene node.
- `bool SetCustomComponentVisibility(bool bInIsVisible)`  
  Sets whether components spawned from this node should be visible
- `bool SetCustomGeometricTransform(FTransform AttributeValue)`  
  Set the geometric offset. Any mesh attached to this scene node will be offset using this transform.
- `bool SetCustomGlobalMatrixForT0Rebinding(FMatrix AttributeValue)`  
  Sets the Global Transformation Matrix used for T0 rebinding.
- `bool SetCustomHasBindPose(bool bHasBindPose)`  
  Sets if Joint has Bind Pose. Automatic T0 usage will be configured in case if the Skeleton contanis at least 1 Joint without BindPose.
- `bool SetCustomIsSceneRoot(bool IsSceneRoot)`  
  Sets IsSceneRootNode, which indicates if the SceneNode is a Scene Root Node.
- `bool SetCustomLocalTransform(const UInterchangeBaseNodeContainer BaseNodeContainer, FTransform AttributeValue, bool bResetCache = true)`  
  Set the default scene node local transform.
The default transform is the local transform of the node (no bind pose, no time evaluation).
- `bool SetCustomPivotNodeTransform(FTransform AttributeValue)`  
  Set the node pivot geometric offset.
- `bool SetCustomTimeZeroLocalTransform(const UInterchangeBaseNodeContainer BaseNodeContainer, FTransform AttributeValue, bool bResetCache = true)`  
  Set the local transform of the time-zero scene node.
- `SetGlobalBindPoseReferenceForMeshUIDs(TMap<FString,FMatrix> GlobalBindPoseReferenceForMeshUIDs)`  
  Set the Global Bind Pose Referenced for MeshUIDs.
- `bool SetMorphTargetCurveWeight(FString MorphTargetName, float32 Weight)`  
  Set MorphTarget with given weight.
- `bool SetSlotMaterialDependencyUid(FString SlotName, FString MaterialDependencyUid)`  
  Add the specified Material dependency to a specific slot name of this object.

---

