### UPoseSearchInteractionAsset


**属性**:

- `float32 DebugWarpAmount [used to test warping: 0 - no warping applied, 1 - full warping/alignment applied
test warping actors will be offsetted by Items::DebugWarpOffset transforms from the original
UMultiAnimAsset::GetOrigin() definition and warped accordingly with CalculateWarpTransforms
following the rotation and translation weights defined in Items::WarpingWeightRotation and
Items::WarpingWeightTranslation as relative weights between the Items (they'll be normalized at runtime)]`
- `TArray<FTransform> DebugWarpOffsets []`
- `TArray<FPoseSearchInteractionAssetItem> Items []`
- `float32 WarpingBankingWeight []`
- `bool bEnableDebugWarp []`

---

