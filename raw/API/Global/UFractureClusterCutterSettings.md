### UFractureClusterCutterSettings


**属性**:

- `float32 ClusterRadiusFractionMax [Maximum cluster radius (as fraction of the overall Voronoi diagram size). Cluster Radius Offset will be added to this
Each Voronoi site will be placed at most this far (plus the Cluster Radius Offset) from its cluster center]`
- `float32 ClusterRadiusFractionMin [Minimum cluster radius (as fraction of the overall Voronoi diagram size). Cluster Radius Offset will be added to this
Each Voronoi site will be placed at least this far (plus the Cluster Radius Offset) from its cluster center]`
- `float32 ClusterRadiusOffset [Cluster radius offset (in cm). This offset will be added to the 'Min/Max Dist from Center' distance]`
- `int NumberClustersMax [Maximum number of clusters of Voronoi sites to create. The amount of clusters created will be chosen at random between Min and Max]`
- `int NumberClustersMin [Minimum number of clusters of Voronoi sites to create. The amount of clusters created will be chosen at random between Min and Max]`
- `int SitesPerClusterMax [Maximum number of Voronoi sites per cluster. The amount of sites in each cluster will be chosen at random between Min and Max]`
- `int SitesPerClusterMin [Minimum number of Voronoi sites per cluster. The amount of sites in each cluster will be chosen at random between Min and Max]`

---

