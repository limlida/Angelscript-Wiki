### FDataflowCorrectSkinWeightsNode


Correct skin weights vertex properties.

**属性**:

- `FString BoneIndicesName [The name to be set for the bone indices.]`
- `FString BoneWeightsName [The name to be set for the bone weights.]`
- `int ClampingNumber [Max number of bones to consider for the skin weights]`
- `ESkinWeightsCorrectionType CorrectionType [Selection map key to be used in other nodes if necessary]`
- `FLinearColor OverrideColor []`
- `float32 PruningThreshold [All weights below this threshold will be pruned]`
- `FString SelectionMapName [Map name to be used to select vertices to correct]`
- `float32 SelectionThreshold [Selection threshold to consider a neighbor skin weight]`
- `float32 SmoothingFactor [Lerp value in between the current and the average weight values]`
- `int SmoothingIterations [Number of iteration required for the smoothing]`
- `FScalarVertexPropertyGroup VertexGroup [Target group in which the attributes are stored]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bUseSelectionAsPerVertexFactor [When true, use the decimal values of the selection as a per vertex factor for the selected operation - Currently available for Relax operation only - false by default]`


**方法**:

- `FDataflowCorrectSkinWeightsNode& opAssign(FDataflowCorrectSkinWeightsNode Other)`

---

