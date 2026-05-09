### FMakeDiscMeshDataflowNode


Make a disc mesh

**属性**:

- `int AngleSamples [Number of vertices around circumference]`
- `float32 EndAngle [End of angle range spanned by disc, in degrees]`
- `FVector Normal [Normal vector of all vertices will be set to this value. Default is +Z axis.]`
- `FLinearColor OverrideColor []`
- `int RadialSamples [Number of vertices along radial spokes]`
- `float32 Radius [Radius]`
- `float32 StartAngle [Start of angle range spanned by disc, in degrees]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FMakeDiscMeshDataflowNode& opAssign(FMakeDiscMeshDataflowNode Other)`

---

