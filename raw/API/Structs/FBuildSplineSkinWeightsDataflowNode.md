### FBuildSplineSkinWeightsDataflowNode


Build spline skinning data from skeletal mesh

**属性**:

- `int LODIndex [LOD used to build skinning weights]`
- `FLinearColor OverrideColor []`
- `TArray<FString> RootBones [Root bones to be used for spline skinning. Uses all bones if empty. Note that branches in the skeleton is currently not supported.]`
- `int SamplesPerSegment [Number of spline samples per bone segment.]`
- `USkeletalMesh SkeletalMesh [SkeletalMesh used to compute spline skinning weights. Will be stored onto the groom asset]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FBuildSplineSkinWeightsDataflowNode& opAssign(FBuildSplineSkinWeightsDataflowNode Other)`

---

