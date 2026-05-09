### FConvertSplineToLinearSkinWeightsNode


Convert spline skinning data to linear data

**属性**:

- `EGroomCollectionType CurvesType [Type of curves to convert skinning for (guides/strands)]`
- `int GroupIndex [Groom group index for converting skinning weight. -1 will convert all the groups]`
- `FLinearColor OverrideColor []`
- `FString SplineBonesName [Spline bones attribute name. Used for storing root and end spline bone for each vertex.]`
- `FString SplineParamName [Spline skinning parameter attribute name]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FConvertSplineToLinearSkinWeightsNode& opAssign(FConvertSplineToLinearSkinWeightsNode Other)`

---

