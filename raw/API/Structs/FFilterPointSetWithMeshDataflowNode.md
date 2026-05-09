### FFilterPointSetWithMeshDataflowNode


Filter a point set to only the points inside or outside of a given mesh

**属性**:

- `uint8 FilterMethod []`
- `float32 MaxDistance [The max distance to surface to keep, if corresponding Filter Method is set]`
- `float32 MinDistance [The min distance to surface to keep, if corresponding Filter Method is set]`
- `FLinearColor OverrideColor []`
- `float32 WindingThreshold [The winding number threshold to use for determining whether a point is inside or outside of the mesh, if corresponding Filter Method is set]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bKeepInside [Whether to keep the points inside or (if false) outside the mesh, when filtering by Winding Number.]`
- `bool bOverrideColor []`
- `bool bUseSignedDistance [Whether to use signed distances for the Min and Max Distance thresholds. Otherwise, unsigned distance is used.
Note: Signs are computed via the Winding Number. The sign is negative if the point's Winding Number is below the Winding Threshold.]`


**方法**:

- `FFilterPointSetWithMeshDataflowNode& opAssign(FFilterPointSetWithMeshDataflowNode Other)`

---

