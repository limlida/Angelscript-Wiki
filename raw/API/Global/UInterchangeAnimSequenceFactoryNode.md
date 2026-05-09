### UInterchangeAnimSequenceFactoryNode


**方法**:

- `GetAnimatedAttributeCurveName(int Index, FString& OutAttributeCurveName) const`  
  Get the animated attribute curve name at the specified index.
- `GetAnimatedAttributeCurveNames(TArray<FString>& OutAttributeCurveNames) const`  
  Get all animated attribute curve names.
- `int GetAnimatedAttributeCurveNamesCount() const`  
  Return the number of animated attribute curve names this anim sequence drives. Curves are FRichCurve of type float.
- `GetAnimatedAttributeStepCurveName(int Index, FString& OutAttributeStepCurveName) const`  
  Get the animated attribute step curve name at the specified index.
- `GetAnimatedAttributeStepCurveNames(TArray<FString>& OutAttributeStepCurveNames) const`  
  Get all animated attribute step curve names.
- `int GetAnimatedAttributeStepCurveNamesCount() const`  
  Return the number of animated attribute step curve names this anim sequence drives.
- `GetAnimatedMaterialCurveSuffixe(int Index, FString& OutMaterialCurveSuffixe) const`  
  Get the animated material curve suffix with the specified index.
- `GetAnimatedMaterialCurveSuffixes(TArray<FString>& OutMaterialCurveSuffixes) const`  
  Get all animated material curve suffixes.
- `int GetAnimatedMaterialCurveSuffixesCount() const`  
  Return the number of animated material curve suffixes this anim sequence drives. Curves are FRichCurve of type float.
- `bool GetCustomAddCurveMetadataToSkeleton(bool& AttributeValue) const`  
  Get the custom attribute AddCurveMetadataToSkeleton. Return false if the attribute is not set.

Note - If this setting is disabled, curve metadata will be added to skeletal meshes for morph targets, but no metadata entry will be created for general curves.
- `bool GetCustomDeleteExistingCustomAttributeCurves(bool& AttributeValue) const`  
  Get the custom attribute DeleteExistingCustomAttributeCurves. Return false if the attribute is not set.

Note - If true, all previous custom attribute curves are deleted if you reimport.
- `bool GetCustomDeleteExistingMorphTargetCurves(bool& AttributeValue) const`  
  Get the custom attribute DeleteExistingMorphTargetCurves. Return false if the attribute is not set.

Note: If true, all previous morph target curves are deleted if you reimport.
- `bool GetCustomDeleteExistingNonCurveCustomAttributes(bool& AttributeValue) const`  
  Get the custom attribute DeleteExistingNonCurveCustomAttributes. Return false if the attribute is not set.

Note - If true, all previous non-curve custom attributes are deleted if you reimport.
- `bool GetCustomDoNotImportCurveWithZero(bool& AttributeValue) const`  
  Get the custom attribute DoNotImportCurveWithZero. Return false if the attribute is not set.

Note - If this attribute is enabled, only curves that have a value other than zero will be imported. This is to avoid adding extra curves to evaluate.
- `bool GetCustomImportAttributeCurves(bool& AttributeValue) const`  
  Get the import attribute curves state. If true, all user custom attributes on nodes are imported.

Return false if the attribute is not set.
- `bool GetCustomImportBoneTracks(bool& AttributeValue) const`  
  Get the import bone tracks state. If the attribute is true, bone tracks are imported. If the attribute
is false, bone tracks are not imported.

Return false if the attribute is not set. Return true if the attribute exists and can be queried.
- `bool GetCustomImportBoneTracksRangeStart(float& AttributeValue) const`  
  Get the import bone tracks start time in seconds. Return false if the attribute is not set.
- `bool GetCustomImportBoneTracksRangeStop(float& AttributeValue) const`  
  Get the import bone tracks end time in seconds. Return false if the attribute is not set.
- `bool GetCustomImportBoneTracksSampleRate(float& AttributeValue) const`  
  Get the import bone tracks sample rate. Return false if the attribute is not set.
- `bool GetCustomMaterialDriveParameterOnCustomAttribute(bool& AttributeValue) const`  
  Get the custom attribute MaterialDriveParameterOnCustomAttribute. Return false if the attribute is not set.

Note: If true, sets Material Curve Type for all custom attributes.
- `bool GetCustomRemoveCurveRedundantKeys(bool& AttributeValue) const`  
  Get the custom attribute RemoveCurveRedundantKeys. Return false if the attribute is not set.
- `bool GetCustomSkeletonFactoryNodeUid(FString& AttributeValue) const`  
  Get the unique ID of the skeleton factory node. Return false if the attribute is not set.
- `bool GetCustomSkeletonSoftObjectPath(FSoftObjectPath& AttributeValue) const`  
  Query the optional existing USkeleton this animation must use. If this attribute is set and the skeleton is valid,
the AnimSequence factory uses this skeleton instead of the one imported from GetCustomSkeletonFactoryNodeUid.
Pipelines set this attribute when the user wants to specify an existing skeleton.
Return false if the attribute was not set.
- `GetMorphTargetNodeAnimationPayloadKeys(TMap<FString,FInterchangeAnimationPayLoadKey>& OutMorphTargetNodeAnimationPayloads) const`
- `GetSceneNodeAnimationPayloadKeys(TMap<FString,FInterchangeAnimationPayLoadKey>& OutSceneNodeAnimationPayloadKeys) const`
- `InitializeAnimSequenceNode(FString UniqueID, FString DisplayLabel, UInterchangeBaseNodeContainer NodeContainer)`  
  Initialize node data.
@param UniqueID - The unique ID for this node.
@param DisplayLabel - The name of the node.
- `bool RemoveAnimatedAttributeCurveName(FString AttributeCurveName)`  
  Remove the specified animated attribute curve name.
- `bool RemoveAnimatedAttributeStepCurveName(FString AttributeStepCurveName)`  
  Remove the specified animated attribute step curve name.
- `bool RemoveAnimatedMaterialCurveSuffixe(FString MaterialCurveSuffixe)`  
  Remove the specified animated material curve suffix.
- `bool SetAnimatedAttributeCurveName(FString AttributeCurveName)`  
  Add an animated attribute curve name.
- `bool SetAnimatedAttributeStepCurveName(FString AttributeStepCurveName)`  
  Add an animated attribute step curve name.
- `bool SetAnimatedMaterialCurveSuffixe(FString MaterialCurveSuffixe)`  
  Add an animated material curve suffix.
- `SetAnimationPayloadKeysForMorphTargetNodeUids(TMap<FString,FString> MorphTargetAnimationPayloadKeyUids, TMap<FString,uint8> MorphTargetAnimationPayloadKeyTypes)`
- `SetAnimationPayloadKeysForSceneNodeUids(TMap<FString,FString> SceneNodeAnimationPayloadKeyUids, TMap<FString,uint8> SceneNodeAnimationPayloadKeyTypes)`
- `bool SetCustomAddCurveMetadataToSkeleton(bool AttributeValue)`  
  Set the custom attribute AddCurveMetadataToSkeleton. Return false if the attribute could not be set.

Note - If this setting is disabled, curve metadata will be added to skeletal meshes for morph targets, but no metadata entry will be created for general curves.
- `bool SetCustomDeleteExistingCustomAttributeCurves(bool AttributeValue)`  
  Set the custom attribute DeleteExistingCustomAttributeCurves. Return false if the attribute could not be set.

Note - If true, all previous custom attribute curves are deleted if you reimport.
- `bool SetCustomDeleteExistingMorphTargetCurves(bool AttributeValue)`  
  Set the custom attribute DeleteExistingMorphTargetCurves. Return false if the attribute could not be set.

Note: If true, all previous morph target curves are deleted if you reimport.
- `bool SetCustomDeleteExistingNonCurveCustomAttributes(bool AttributeValue)`  
  Set the custom attribute DeleteExistingNonCurveCustomAttributes. Return false if the attribute could not be set.

Note - If true, all previous non-curve custom attributes are deleted if you reimport.
- `bool SetCustomDoNotImportCurveWithZero(bool AttributeValue)`  
  Set the custom attribute DoNotImportCurveWithZero. Return false if the attribute could not be set.

Note - If this attribute is enabled, only curves that have a value other than zero will be imported. This is to avoid adding extra curves to evaluate.
- `bool SetCustomImportAttributeCurves(bool AttributeValue)`  
  Set the import attribute curves state. Return false if the attribute could not be set.
- `bool SetCustomImportBoneTracks(bool AttributeValue)`  
  Set the import bone tracks state. Pass true to import bone tracks, or false to not import bone tracks.
- `bool SetCustomImportBoneTracksRangeStart(float AttributeValue)`  
  Set the import bone tracks start time in seconds. Return false if the attribute could not be set.
- `bool SetCustomImportBoneTracksRangeStop(float AttributeValue)`  
  Set the import bone tracks end time in seconds. Return false if the attribute could not be set.
- `bool SetCustomImportBoneTracksSampleRate(float AttributeValue)`  
  Set the import bone tracks sample rate. Return false if the attribute could not be set.
- `bool SetCustomMaterialDriveParameterOnCustomAttribute(bool AttributeValue)`  
  Set the custom attribute MaterialDriveParameterOnCustomAttribute. Return false if the attribute could not be set.

Note: If true, sets Material Curve Type for all custom attributes.
- `bool SetCustomRemoveCurveRedundantKeys(bool AttributeValue)`  
  Set the custom attribute RemoveCurveRedundantKeys. Return false if the attribute could not be set.
- `bool SetCustomSkeletonFactoryNodeUid(FString AttributeValue)`  
  Set the unique ID of the skeleton factory node. Return false if the attribute cannot be set.
- `bool SetCustomSkeletonSoftObjectPath(FSoftObjectPath AttributeValue)`  
  Set the optional existing USkeleton this animation must use. If this attribute is set and the skeleton is valid,
the AnimSequence factory uses this skeleton instead of the one imported from GetCustomSkeletonFactoryNodeUid.
Pipelines set this attribute when the user wants to specify an existing skeleton.

---

