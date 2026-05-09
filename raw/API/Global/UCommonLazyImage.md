### UCommonLazyImage


A special Image widget that can show unloaded images and takes care of the loading for you!

UCommonLazyImage is another wrapper for SLoadGuard, but it only handles image loading and
a throbber during loading.

If this class changes to show any text, by default it will have CoreStyle styling

**属性**:

- `FSlateBrush LoadingBackgroundBrush []`
- `FSlateBrush LoadingThrobberBrush []`
- `FName MaterialTextureParamName [If this image uses a material that a texture should be applied to, this is the name of the material param to use.
I.e. if this property is not blank, the resource object of our brush is a material, and we are given a lazy texture, that texture
will be assigned to the texture param on the material instead of replacing the material outright on the brush.]`
- `FOnLoadGuardStateChangedDynamic OnLoadingStateChanged`
- `bool bShowLoading []`


**方法**:

- `bool IsLoading() const`
- `SetBrushFromLazyDisplayAsset(TSoftObjectPtr<UObject> LazyObject, bool bMatchTextureSize = false)`  
  Set the brush from a string asset ref only - expects the referenced asset to be a texture or material.
- `SetBrushFromLazyMaterial(TSoftObjectPtr<UMaterialInterface> LazyMaterial)`  
  Set the brush from a lazy material asset pointer - will load the material as needed.
- `SetBrushFromLazyTexture(TSoftObjectPtr<UTexture2D> LazyTexture, bool bMatchSize = false)`  
  Set the brush from a lazy texture asset pointer - will load the texture as needed.
- `SetMaterialTextureParamName(FName TextureParamName)`  
  Establishes the name of the texture parameter on the currently applied brush material to which textures should be applied.
Does nothing if the current brush resource object is not a material.

Note: that this is cleared out automatically if/when a new material is established on the brush.
You must call this function again after doing so if the new material has a texture param.

---

