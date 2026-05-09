### UBakeInputMeshProperties


**属性**:

- `float32 ProjectionDistance [Maximum allowed distance for the projection from target mesh to source mesh for the sample to be considered valid.
This is only relevant if a separate source mesh is provided.]`
- `UTexture2D SourceNormalMap [Source mesh normal map; if empty, the geometric normals will be used]`
- `FString SourceNormalMapUVLayer [UV channel to use for the source mesh normal map; only relevant if a source normal map is set]`
- `EBakeNormalSpace SourceNormalSpace [Normal space of the source mesh normal map.]`
- `FString TargetUVLayer [UV channel to use for the target mesh]`
- `bool bHideSourceMesh [If true, hide the source mesh]`
- `bool bProjectionInWorldSpace [If true, uses the world space positions for the projection from target mesh to source mesh, otherwise it uses their object space positions.
This is only relevant if a separate source mesh is provided.]`

---

