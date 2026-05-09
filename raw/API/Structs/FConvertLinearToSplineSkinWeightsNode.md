### FConvertLinearToSplineSkinWeightsNode


Convert linear skinning data to spline skinning data

**属性**:

- `EGroomCollectionType CurvesType [Type of curves to convert skinning for (guides/strands)]`
- `int GroupIndex [Groom group index for converting skinning weights. -1 will convert all groups]`
- `FLinearColor OverrideColor []`
- `FString SplineBonesName [Spline bones parameter attribute name. Contains root and end spline bone for each vertex.]`
- `FString SplineParamName [Spline skinning parameter attribute name.]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FConvertLinearToSplineSkinWeightsNode& opAssign(FConvertLinearToSplineSkinWeightsNode Other)`

---

