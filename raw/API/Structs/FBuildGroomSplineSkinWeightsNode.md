### FBuildGroomSplineSkinWeightsNode


Build spline skinning data from skeletal mesh

**属性**:

- `EGroomCollectionType CurvesType [Type of curves to build skinning for (guides/strands)]`
- `int GroupIndex [Groom group index to build skinning weights for. -1 will build all groups]`
- `int LODIndex [LOD used to build skinning weights]`
- `FLinearColor OverrideColor []`
- `TArray<FString> RootBones [Root bones to be used for spline skinning. Uses all bones if empty. Note that branches in the skeleton is currently not supported.]`
- `int SamplesPerSegment [Number of spline samples per bone segment.]`
- `USkeletalMesh SkeletalMesh [SkeletalMesh used for spline skinning. Will be stored onto the groom asset]`
- `FString SplineBonesParamName [Spline bones attribute name. Used for storing root and end spline bone for each vertex.]`
- `FString SplineParamName [Spline skinning parameter attribute name]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FBuildGroomSplineSkinWeightsNode& opAssign(FBuildGroomSplineSkinWeightsNode Other)`

---

