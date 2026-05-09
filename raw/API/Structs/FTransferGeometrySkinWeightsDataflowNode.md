### FTransferGeometrySkinWeightsDataflowNode


Build the curves skinning by transferring the indices weights from a skelmesh geometry

**属性**:

- `int LODIndex [LOD used to transfer the weights]`
- `FLinearColor OverrideColor []`
- `FTransform RelativeTransform [The relative transform between the skeletal mesh and the groom asset.]`
- `USkeletalMesh SkeletalMesh [SkeletalMesh used to transfer the skinning weights. Will be stored onto the groom asset]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FTransferGeometrySkinWeightsDataflowNode& opAssign(FTransferGeometrySkinWeightsDataflowNode Other)`

---

