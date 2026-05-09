### FSplineMeshParams


Structure that holds info about spline, passed to renderer to deform UStaticMesh.
Also used by Lightmass, so be sure to update Lightmass::FSplineMeshParams and the static lighting code if this changes!

**属性**:

- `FVector2D EndOffset [Ending offset of the mesh from the spline, in component space.]`
- `FVector EndPos [End location of spline, in component space.]`
- `float32 EndRoll [Roll around spline applied at end, in radians.]`
- `FVector2D EndScale [X and Y scale applied to mesh at end of spline.]`
- `FVector EndTangent [End tangent of spline, in component space.]`
- `float32 NaniteClusterBoundsScale [How much to scale the calculated culling bounds of Nanite clusters after deformation.
NOTE: This should only be set greater than 1.0 if it fixes visible issues with clusters being
incorrectly culled.]`
- `FVector2D StartOffset [Starting offset of the mesh from the spline, in component space.]`
- `FVector StartPos [Start location of spline, in component space.]`
- `float32 StartRoll [Roll around spline applied at start, in radians.]`
- `FVector2D StartScale [X and Y scale applied to mesh at start of spline.]`
- `FVector StartTangent [Start tangent of spline, in component space.]`


**方法**:

- `FSplineMeshParams& opAssign(FSplineMeshParams Other)`

---

