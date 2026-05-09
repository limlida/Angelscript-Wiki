### ALandmassActor


**属性**:

- `bool AffectsHeightmap`
- `bool AffectsVisibility`
- `bool AffectsWeightmaps`
- `FVector4 BrushExtents []`
- `ALandmassManagerBase BrushManager`
- `FLandscapeBrushParameters BrushRenderParameters`
- `float32 BrushSize`
- `bool DrawToEntireLandscape`
- `UMaterialInstanceDynamic ExtentsPreviewMID`
- `EBrushBlendMode HeightBlendMode`
- `UMaterialInterface HeightMaterial`
- `UMaterialInstanceDynamic HeightmapRenderMID`
- `FOnBrushUpdatedDelegate OnBrushUpdated`
- `EBrushBlendMode WeightMapBlendMode`
- `TArray<FName> WeightmapLayers`
- `UMaterialInterface WeightmapMaterial`
- `UMaterialInstanceDynamic WeightmapRenderMID`


**方法**:

- `ActorSelectionChanged(bool bSelected)`
- `CustomTick(float DeltaSeconds)`
- `DrawBrushMaterial(UMaterialInterface Material)`
- `FastPreviewMode()`
- `MoveBrushDown()`
- `MoveBrushUp()`
- `MoveToBottom()`
- `MoveToTop()`
- `RenderLayer(FLandscapeBrushParameters InParameters)`
- `RenderLayer_Native(FLandscapeBrushParameters InParameters)`
- `RestoreLandscapeEditing()`
- `SetEditorTickEnabled(bool bEnabled)`
- `SetMeshExentsMaterial(UMaterialInterface Material)`
- `UpdateBrushExtents()`

---

