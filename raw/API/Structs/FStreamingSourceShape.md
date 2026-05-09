### FStreamingSourceShape


**属性**:

- `float32 LoadingRangeScale [Applies a scale to the grid's loading range (used if bUseGridLoadingRange is True).]`
- `FVector Location [Streaming source shape location (local to streaming source).]`
- `float32 Radius [Custom streaming source shape radius (not used if bUseGridLoadingRange is True).]`
- `FRotator Rotation [Streaming source shape rotation (local to streaming source).]`
- `float32 SectorAngle [Shape's spherical sector angle in degree (not used if bIsSector is False).]`
- `bool bIsSector [Whether the source shape is a spherical sector instead of a regular sphere source.]`
- `bool bUseGridLoadingRange [If True, streaming source shape radius is bound to loading range radius.]`


**方法**:

- `FStreamingSourceShape& opAssign(FStreamingSourceShape Other)`

---

