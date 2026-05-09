### FGenerateStaticMeshLODProcess_CollisionSettings


**属性**:

- `EGenerateStaticMeshLODSimpleCollisionGeometryType CollisionType [Type of simple collision objects to produce]`
- `int ConvexTriangleCount [Target triangle count for each convex hull after simplification]`
- `float32 HullTolerance [Target minumum edge length for simplified swept convex hulls]`
- `int PrefilterGridResolution [Grid resolution (along the maximum-length axis) for subsampling before computing the convex hull]`
- `EGenerateStaticMeshLODProjectedHullAxisMode SweepAxis [Which axis to sweep along when computing swept convex hulls]`
- `bool bPrefilterVertices [Whether to subsample input vertices using a regular grid before computing the convex hull]`
- `bool bSimplifyPolygons [Whether to simplify polygons used for swept convex hulls]`


**方法**:

- `FGenerateStaticMeshLODProcess_CollisionSettings& opAssign(FGenerateStaticMeshLODProcess_CollisionSettings Other)`

---

