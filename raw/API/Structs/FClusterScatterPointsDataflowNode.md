### FClusterScatterPointsDataflowNode


**属性**:

- `float32 ClusterRadiusFractionMax [Maximum cluster radius (as fraction of the overall bounding box size). Cluster Radius Offset will be added to this.
Each point will be placed at most this far (plus the Cluster Radius Offset) from its cluster center.]`
- `float32 ClusterRadiusFractionMin [Minimum cluster radius (as fraction of the overall bounding box size). Cluster Radius Offset will be added to this.
Each point will be placed at least this far (plus the Cluster Radius Offset) from its cluster center.]`
- `float32 ClusterRadiusOffset [Cluster radius offset (in cm). This offset will be added to the 'Min/Max Dist from Center' distance]`
- `int NumberClustersMax [Maximum number of clusters of points to create. The amount of clusters created will be chosen at random between Min and Max]`
- `int NumberClustersMin [Minimum number of clusters of points to create. The amount of clusters created will be chosen at random between Min and Max]`
- `FLinearColor OverrideColor []`
- `int PointsPerClusterMax [Maximum number of points per cluster. The amount of points in each cluster will be chosen at random between Min and Max]`
- `int PointsPerClusterMin [Minimum number of points per cluster. The amount of points in each cluster will be chosen at random between Min and Max]`
- `int RandomSeed [Seed for random]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FClusterScatterPointsDataflowNode& opAssign(FClusterScatterPointsDataflowNode Other)`

---

