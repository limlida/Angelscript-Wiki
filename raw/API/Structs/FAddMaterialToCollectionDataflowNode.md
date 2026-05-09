### FAddMaterialToCollectionDataflowNode


Adds Outside/Inside Materials to Outside/Inside faces
Deprecated (5.6) - Use AssignMaterialToCollection node instead

**属性**:

- `UMaterial InsideMaterial [Inside material to assign to the inside faces from the face selection]`
- `UMaterial OutsideMaterial [Outside material to assign to the outside faces from the face selection]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bAssignInsideMaterial [If true, the inside material will be assigned to the inside faces from the face selection]`
- `bool bAssignOutsideMaterial [If true, the outside material will be assigned to the outside faces from the face selection]`
- `bool bOverrideColor []`


**方法**:

- `FAddMaterialToCollectionDataflowNode& opAssign(FAddMaterialToCollectionDataflowNode Other)`

---

