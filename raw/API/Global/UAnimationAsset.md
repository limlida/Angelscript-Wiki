### UAnimationAsset


**属性**:

- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `TArray<TObjectPtr<UAnimMetaData>> MetaData [Meta data that can be saved with the asset

You can query by GetMetaData function]`
- `UPoseAsset PreviewPoseAsset [The default skeletal mesh to use when previewing this asset - this only applies when you open Persona using this asset// @todo: note that this doesn't retarget right now]`
- `UThumbnailInfo ThumbnailInfo [Information for thumbnail rendering]`


**方法**:

- `USkeleton GetSkeleton()`  
  @param        InAsset         Animation Asset to retrieve the Skeleton for

@return       The target USkeleton for the provided UAnimationAsset
- `UAnimMetaData FindMetaDataByClass(TSubclassOf<UAnimMetaData> MetaDataClass) const`  
  Returns the first metadata of the specified class
- `float32 GetPlayLength() const`
- `SetPreviewSkeletalMesh(USkeletalMesh PreviewMesh)`  
  Sets or updates the preview skeletal mesh
- `FAnimationAttributeIdentifier CreateAttributeIdentifier(FName AttributeName, FName BoneName, UScriptStruct AttributeType, bool bValidateExistsOnAsset = false)`  
  Constructs a valid FAnimationAttributeIdentifier instance. Ensuring that the underlying BoneName exists on the Skeleton for the provided AnimationAsset.

@param        AnimationAsset                  Animation asset to retrieve Skeleton from
@param        AttributeName                   Name of the attribute
@param        BoneName                                Name of the bone this attribute should be attributed to
@param        AttributeType                   Type of the underlying data (to-be) stored by this attribute
@param        bValidateExistsOnAsset  Whether or not the attribute should exist on the AnimationAsset. False by default.

@return       Valid FAnimationCurveIdentifier if the operation was successful

---

