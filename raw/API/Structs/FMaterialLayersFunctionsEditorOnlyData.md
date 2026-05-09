### FMaterialLayersFunctionsEditorOnlyData


**属性**:

- `TArray<FGuid> DeletedParentLayerGuids [List of Guids that exist in the parent material that have been explicitly deleted
This is needed to distinguish these layers from newly added layers in the parent material]`
- `TArray<FGuid> LayerGuids [Guid that identifies each layer in this stack]`
- `TArray<EMaterialLayerLinkState> LayerLinkStates [State of each layer's link to parent material]`
- `TArray<FText> LayerNames []`
- `TArray<bool> LayerStates []`
- `TArray<bool> RestrictToBlendRelatives []`
- `TArray<bool> RestrictToLayerRelatives []`


**方法**:

- `FMaterialLayersFunctionsEditorOnlyData& opAssign(FMaterialLayersFunctionsEditorOnlyData Other)`

---

