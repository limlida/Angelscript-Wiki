### UVariantSet


**方法**:

- `FText GetDisplayText() const`
- `int GetNumVariants() const`
- `ULevelVariantSets GetParent()`
- `UTexture2D GetThumbnail()`  
  Gets the thumbnail currently used for this variant set
- `UVariant GetVariant(int VariantIndex)`
- `UVariant GetVariantByName(FString VariantName)`
- `SetDisplayText(FText NewDisplayText)`
- `SetThumbnailFromCamera(FTransform CameraTransform, float32 FOVDegrees = 50.000000, float32 MinZ = 50.000000, float32 Gamma = 2.200000)`
- `SetThumbnailFromEditorViewport()`  
  Sets the thumbnail from the active editor viewport. Doesn't do anything if the Editor is not available
- `SetThumbnailFromFile(FString FilePath)`
- `SetThumbnailFromTexture(UTexture2D NewThumbnail)`  
  Sets the thumbnail to use for this variant set. Can receive nullptr to clear it
- `AddVariant(UVariant Variant)`  
  Adds Variant to the VariantSet's list of Variants
- `RemoveVariant(UVariant Variant)`  
  Removes Variant from VariantSet, if that is its parent
- `RemoveVariantByName(FString VariantName)`  
  Looks for a variant with VariantName within VariantSet and removes it, if it exists

---

