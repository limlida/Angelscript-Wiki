### FClusterMergeToNeighborsDataflowNode


Merge selected bones to their neighbors

**属性**:

- `float32 MinVolumeCubeRoot [Size (cube root of volume) of minimum desired post-merge clusters; if > 0, selected clusters may be merged multiple times until the cluster size is above this value]`
- `EClusterNeighborSelectionMethodEnum NeighborSelectionMethod [Method to choose which neighbor to merge]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOnlySameParent [Whether to only allow clusters to merge if they have the same parent bone]`
- `bool bOnlyToConnected [Whether to only allow clusters to merge if their bones are connected in the proximity graph]`
- `bool bOverrideColor []`


**方法**:

- `FClusterMergeToNeighborsDataflowNode& opAssign(FClusterMergeToNeighborsDataflowNode Other)`

---

