### UFractureAutoClusterSettings


**属性**:

- `int ClusterGridDepth [Choose the number of cluster sites to distribute along the Y axis]`
- `int ClusterGridHeight [Choose the number of cluster sites to distribute along the Z axis]`
- `int ClusterGridWidth [Choose the number of cluster sites to distribute along the X axis]`
- `EClusterSizeMethod ClusterSizeMethod [How to choose the size of the clusters to create]`
- `float ConcavityTolerance [If > 0, cube root of maximum concave volume to add per cluster (ignoring concavity of individual parts)]`
- `int DriftIterations [For a grid distribution, optionally iteratively recenter the grid points to the center of the cluster geometry (technically: applying K-Means iterations) to balance the shape and distribution of the clusters]`
- `float32 MinimumSize [If a cluster has volume less than this value (in cm) cubed, then the auto-cluster process will attempt to merge it into a neighboring cluster.]`
- `uint SiteCount [Use a Voronoi diagram with this many Voronoi sites as a guide for deciding cluster boundaries]`
- `float32 SiteCountFraction [Choose the number of Voronoi sites used for clustering as a fraction of the number of child bones to process]`
- `float32 SiteSize [Choose the Edge-Size of the cube used to groups bones under a cluster (in cm).]`
- `bool bAvoidIsolated [If true, prevent the creation of clusters with only a single child, skipping creation of a new cluster in such cases.]`
- `bool bEnforceConnectivity [If true, bones will only be added to the same cluster if they are physically connected (either directly, or via other bones in the same cluster)]`
- `bool bEnforceSiteParameters [If true, make sure the site parameters are matched as close as possible ( bEnforceConnectivity can make the number of site larger than the requested input may produce without it )]`
- `bool bPreferConvexity [Whether to favor clusters that have a convex shape. (Note: Does not support ByGrid clustering.)]`
- `bool bShowGridLines [If true, show the cluster grid boundary lines.]`

---

