### FTransferSkinWeightsGroomNode


Build the curves skinning by transferring the indices weights from a skelmesh

**属性**:

- `EGroomCollectionType CurvesType [Type of curves to use to fill the groom collection (guides/strands)]`
- `int GroupIndex [Group index on which the dats will be transfered. -1 will transfer on all the groups]`
- `int LODIndex [LOD used to transfer the weights]`
- `FLinearColor OverrideColor []`
- `FTransform RelativeTransform [The relative transform between the skeletal mesh and the groom asset.]`
- `USkeletalMesh SkeletalMesh [SkeletalMesh used to transfer the skinning weights. Will be stored onto the groom asset]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FTransferSkinWeightsGroomNode& opAssign(FTransferSkinWeightsGroomNode Other)`

---

