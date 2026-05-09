### FBuildCurveWeightsDataflowNode


Build a weight map that will be identical on every curves

**属性**:

- `FRuntimeFloatCurve CurveWeights [This curve determines the weight value from root to tip. 
 The X axis range is [0,1], 0 mapping the root and 1 the tip]`
- `FLinearColor OverrideColor []`
- `FCollectionAttributeKey WeightsAttribute [Vertex kinematic weights key to be used in other nodes if necessary]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FBuildCurveWeightsDataflowNode& opAssign(FBuildCurveWeightsDataflowNode Other)`

---

