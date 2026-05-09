### ALandmassManagerBase


**属性**:

- `TArray<FBrushDataTree> BrushNodeData`
- `int BrushTreeDepth`
- `ALandscape DetailPanelLandscape [The owning landscape.]`
- `TArray<TObjectPtr<ALandmassActor>> LandmassBrushes`
- `FLandmassLandscapeInfo LandscapeInformation`


**方法**:

- `ActorSelectionChanged(bool bSelected)`
- `AddBrushToArray(ALandmassActor BrushToAdd)`
- `AddBrushToTree(ALandmassActor BrushToAdd, FVector4 InExtents, bool InMapToWholeLandscape, FVector4& ModifiedExtents, TArray<ALandmassActor>& InvalidatedBrushes, TArray<int>& ModifiedNodes)`
- `ConsolidateNodes(TArray<int>& NodesToConsolidate)`
- `DrawBrushMaterial(ALandmassActor Brush, UMaterialInterface BrushMaterial)`
- `TArray<ALandmassActor> GetActorsWithinModifiedNodes(TArray<int>& InModifiedNodes)`
- `ALandscape GetLandscape()`
- `TArray<int> GetNodesWithinExtents(FVector4& InExtents)`
- `LaunchLandmassEditor(ALandmassActor BrushRequestingEditor)`
- `PopulateNodeTree()`
- `TArray<int> RemoveBrushFromTree(ALandmassActor BrushToRemove)`
- `RequestUpdateFromBrush(ALandmassActor BrushRequestingUpdate)`
- `SetCaptureBoundaryNormals(bool bInCaptureBoundaryNormals)`
- `SetTargetLandscape(ALandscape InOwningLandscape)`  
  Adds the brush to the given landscape, removing it from any previous one. This differs from SetOwningLandscape
in that SetOwningLandscape is called by the landscape itself from AddBrushToLayer to update the manager.
- `TArray<ALandmassActor> SortBrushes(TArray<ALandmassActor> BrushArrayToMatch, TArray<ALandmassActor> ActorsToSort)`
- `TogglePreviewMode(bool bEnablePreviewMode)`
- `UpdateChildDataCounts()`

---

