### ALandscapeBlueprintBrushBase


**属性**:

- `bool AffectHeightmap`
- `bool AffectVisibilityLayer`
- `bool AffectWeightmap`
- `TArray<FName> AffectedWeightmapLayers`
- `bool UpdateOnPropertyChange`
- `bool bUsePowerOfTwoRenderTarget [It is possible to define whether this BP brush works exclusively with power-of-2 render targets. This used to be mandatory so for full backwards-compatibility,
this is still the case by default but it can be turned off.]`


**方法**:

- `GetBlueprintRenderDependencies(TArray<UObject>& OutStreamableAssets)`
- `Initialize(FTransform InLandscapeTransform, FIntPoint InLandscapeSize, FIntPoint InLandscapeRenderTargetSize)`
- `UTextureRenderTarget2D RenderLayer(FLandscapeBrushParameters InParameters)`
- `RequestLandscapeUpdate(bool bInUserTriggered = false)`

---

