### FDataflowCollectionEditSkinWeightsNode


Edit skin weights vertex properties.

**属性**:

- `FString BoneIndicesName [The name to be set as a weight map attribute.]`
- `FString BoneWeightsName [The name to be set as a weight map attribute.]`
- `FLinearColor OverrideColor []`
- `USkeletalMesh SkeletalMesh [Skeletal mesh to extract the skeleton from for the skinning]`
- `FScalarVertexPropertyGroup VertexGroup [Target group in which the attributes are stored]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bCompressSkinWeights [Boolean to use a compressed format (FVector4f, FIntVector) to store the skin weights]`
- `bool bOverrideColor []`


**方法**:

- `FDataflowCollectionEditSkinWeightsNode& opAssign(FDataflowCollectionEditSkinWeightsNode Other)`

---

