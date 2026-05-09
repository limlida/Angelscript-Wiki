### FMeshRayTracingProxySettings


**属性**:

- `float32 FallbackPercentTriangles [Percentage of triangles to keep from source mesh for fallback. 1.0 = no reduction, 0.0 = no triangles.]`
- `float32 FallbackRelativeError [Reduce until at least this amount of error is reached relative to size of the mesh]`
- `ENaniteFallbackTarget FallbackTarget [Which heuristic to use when generating the fallback mesh.]`
- `float32 FoliageOverOcclusionBias [A bias to reduce foliage over occlusion in Lumen GI. 0: no adjustment, 1: full strength.]`
- `float32 LOD1PercentTriangles`
- `bool bEnabled [If true, Ray Tracing Proxy data will be generated.]`


**方法**:

- `FMeshRayTracingProxySettings& opAssign(FMeshRayTracingProxySettings Other)`

---

