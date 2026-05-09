### FSplitMeshIslandsDataflowNode


Split a mesh into a connected islands

**属性**:

- `float32 ConnectVerticesThreshold [Vertices closer than this distance are considered to be overlapping]`
- `FLinearColor OverrideColor []`
- `EDataflowMeshSplitIslandsMethod SplitMethod [Whether to consider coincident vertices as connected even if the topology does not connect them]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FSplitMeshIslandsDataflowNode& opAssign(FSplitMeshIslandsDataflowNode Other)`

---

