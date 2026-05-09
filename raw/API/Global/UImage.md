### UImage


The image widget allows you to display a Slate Brush, or texture or material in the UI.

* No Children

**属性**:

- `FSlateBrush Brush [Image to draw]`
- `FLinearColor ColorAndOpacity [Color and opacity]`
- `FOnPointerEvent__Widget OnMouseButtonDownEvent []`
- `bool bFlipForRightToLeftFlowDirection [Flips the image if the localization's flow direction is RightToLeft]`


**方法**:

- `UMaterialInstanceDynamic GetDynamicMaterial()`
- `SetBrush(FSlateBrush InBrush)`
- `SetBrushFromAsset(USlateBrushAsset Asset)`
- `SetBrushFromMaterial(UMaterialInterface Material)`
- `SetBrushFromSoftMaterial(TSoftObjectPtr<UMaterialInterface> SoftMaterial)`
- `SetBrushFromSoftTexture(TSoftObjectPtr<UTexture2D> SoftTexture, bool bMatchSize = false)`  
  Sets the Brush to the specified Soft Texture.

  @param SoftTexture Soft Texture to use to set on Brush.
      @param bMatchSize If true, image will change its size to texture size. If false, texture will be stretched to image size.
- `SetBrushFromTexture(UTexture2D Texture, bool bMatchSize = false)`  
  Sets the Brush to the specified Texture.

  @param Texture Texture to use to set on Brush.
      @param bMatchSize If true, image will change its size to texture size. If false, texture will be stretched to image size.
- `SetBrushFromTextureDynamic(UTexture2DDynamic Texture, bool bMatchSize = false)`  
  Sets the Brush to the specified Dynamic Texture.

  @param Texture Dynamic Texture to use to set on Brush.
      @param bMatchSize If true, image will change its size to texture size. If false, texture will be stretched to image size.
- `SetBrushResourceObject(UObject ResourceObject)`
- `SetBrushTintColor(FSlateColor TintColor)`
- `SetColorAndOpacity(FLinearColor InColorAndOpacity)`
- `SetDesiredSizeOverride(FVector2D DesiredSize)`
- `SetOpacity(float32 InOpacity)`

---

