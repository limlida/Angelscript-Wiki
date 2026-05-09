### FMakeCapsuleMeshDataflowNode


Make a capsule mesh

**属性**:

- `int NumCircleSteps [Number of vertices along each circle]`
- `int NumHemisphereArcSteps [Number of vertices along the 90-degree arc from the pole to edge of spherical cap.]`
- `int NumSegmentSteps [Number of subdivisions lengthwise along the cylindrical section]`
- `FLinearColor OverrideColor []`
- `float32 Radius [Radius of capsule]`
- `float32 SegmentLength [Length of capsule line segment, so total height is SegmentLength + 2*Radius]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FMakeCapsuleMeshDataflowNode& opAssign(FMakeCapsuleMeshDataflowNode Other)`

---

