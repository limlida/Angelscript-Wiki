### FClusterMagnetDataflowNode


Cluster by grouping the selected bones with their adjacent, neighboring bones.

**属性**:

- `int Iterations [How many layers of neighbors to include in the clusters -- i.e. if 1, only direct neighbors are clustered; if 2, neighbors of neighbors are included, etc.]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FClusterMagnetDataflowNode& opAssign(FClusterMagnetDataflowNode Other)`

---

