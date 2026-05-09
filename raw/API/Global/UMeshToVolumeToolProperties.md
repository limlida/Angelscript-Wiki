### UMeshToVolumeToolProperties


**属性**:

- `EMeshToVolumeMode ConversionMode [Method for converting the input mesh to a set of Planar Polygonal Faces in the output Volume.]`
- `TSubclassOf<AVolume> NewVolumeType [Type of new Volume to create on Accept]`
- `int SimplifyMaxTriangles [Target triangle count for auto simplification when Auto Simplify is true.]`
- `bool bAutoSimplify [Determines whether mesh gets auto simplified when its triangle count is too high.]`
- `bool bPreserveGroupBoundaries [When true, adjacent coplanar groups will not be merged together into single faces. Not relevant if
conversion mode is set to emit all triangles separately.]`

---

