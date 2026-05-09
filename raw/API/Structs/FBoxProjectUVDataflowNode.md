### FBoxProjectUVDataflowNode


Generates UVs using a box projection

**属性**:

- `int GutterSize [Approximate space to leave between UV islands, measured in texels for 512x512 texture]`
- `FLinearColor OverrideColor []`
- `FVector ProjectionScale []`
- `int UVChannel [UV channel to unwrap into ( 0 by default )]`
- `FVector2f UVOffset []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bAutoFitToBounds []`
- `bool bCenterBoxAtPivot []`
- `bool bOverrideColor []`
- `bool bUniformProjectionScale []`


**方法**:

- `FBoxProjectUVDataflowNode& opAssign(FBoxProjectUVDataflowNode Other)`

---

