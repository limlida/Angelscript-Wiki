### FPoseSearchInteractionAssetItem


**属性**:

- `UAnimationAsset Animation [associated aniamtion for this FPoseSearchInteractionAssetItem]`
- `FTransform Origin [offset from the origin]`
- `USkeletalMesh PreviewMesh [If null, the default preview mesh for the skeleton will be used. Otherwise, this will be used in preview scenes.]`
- `FName Role [associated role for this FPoseSearchInteractionAssetItem]`
- `float32 WarpingWeightRotation [relative weight to the other FPoseSearchInteractionAssetItem::WarpingWeightRotation(s) defining which character will be rotated while warping
0 - the associated character to this item will move fully to compensate the warping errors
> 0 && all the other FPoseSearchInteractionAssetItem::WarpingWeightTranslation as zero, and the associated character will not move]`
- `float32 WarpingWeightTranslation [relative weight to the other FPoseSearchInteractionAssetItem::WarpingWeightTranslation(s) defining which character will be translated while warping
0 - the associated character to this item will move fully to compensate the warping errors
> 0 && all the other FPoseSearchInteractionAssetItem::WarpingWeightTranslation as zero, and the associated character will not move]`


**方法**:

- `FPoseSearchInteractionAssetItem& opAssign(FPoseSearchInteractionAssetItem Other)`

---

