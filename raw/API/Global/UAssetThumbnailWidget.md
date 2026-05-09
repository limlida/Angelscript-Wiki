### UAssetThumbnailWidget


This widget can be given an asset and it will render its thumbnail. Editor-only.

**属性**:

- `FAssetData AssetToShow [The asset of which to show the thumbnail.]`
- `FIntPoint Resolution [Desired size of the thumbnail]`
- `FAssetThumbnailWidgetSettings ThumbnailSettings [Behaviour and style of the widget]`


**方法**:

- `FIntPoint GetResolution() const`  
  Gets the resolution of the rendered thumbnail.
- `SetAsset(FAssetData AssetData)`
- `SetAssetByObject(UObject Object)`
- `SetResolution(FIntPoint InResolution)`  
  Sets the resolution for the rendered thumbnail.
- `SetThumbnailSettings(FAssetThumbnailWidgetSettings InThumbnailSettings)`

---

