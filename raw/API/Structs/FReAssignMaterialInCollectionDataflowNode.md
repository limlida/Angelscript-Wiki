### FReAssignMaterialInCollectionDataflowNode


Reassign existing material(s) to Outside/Inside faces
Deprecated (5.6) - Use AssignMaterialToCollection node instead

**属性**:

- `int InsideMaterialIdx [Index of the material in the Materials array to assign to the inside faces from the face selection]`
- `TArray<TObjectPtr<UMaterial>> Materials [Materials array storing the materials]`
- `int OutsideMaterialIdx [Index of the material in the Materials array to assign to the outside faces from the face selection]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bAssignInsideMaterial [If true, the selected material from the Materials array will be assigned to the inside faces from the face selection]`
- `bool bAssignOutsideMaterial [If true, the selected material from the Materials array will be assigned to the outside faces from the face selection]`
- `bool bOverrideColor []`


**方法**:

- `FReAssignMaterialInCollectionDataflowNode& opAssign(FReAssignMaterialInCollectionDataflowNode Other)`

---

