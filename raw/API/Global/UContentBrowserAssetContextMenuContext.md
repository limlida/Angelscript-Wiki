### UContentBrowserAssetContextMenuContext


**属性**:

- `TArray<FAssetData> SelectedAssets [The currently selected assets in the content browser.]`
- `bool bContainsUnsupportedAssets []`


**方法**:

- `TArray<UObject> LoadSelectedObjects(TSet<FName> LoadTags) const`  
  Loads all the selected assets and returns an array of the objects.
- `TArray<UObject> LoadSelectedObjectsIfNeeded() const`  
  Loads the selected assets (if needed) which is based on AssetViewUtils::LoadAssetsIfNeeded, this exists primarily
for backwards compatability.  Reliance on a black box to determine 'neededness' is not recommended, this function
will likely be deprecated a few versions after GetSelectedObjects.

---

