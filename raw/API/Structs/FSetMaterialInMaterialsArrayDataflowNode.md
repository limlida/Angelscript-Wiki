### FSetMaterialInMaterialsArrayDataflowNode


Set a Material in a Materials array
Deprecated (5.6) - Use SetIntoMaterialArray instead

**属性**:

- `UMaterial Material [Material to add/insert to/in Materials array]`
- `int MaterialIdx [Index for inserting a nem material into the Materials array]`
- `ESetMaterialOperationTypeEnum Operation [Operation type for setting the material, add will add the new material to the end off Materials array, insert will insert the
      new material into Materials array at the index specified by MaterialIdx]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FSetMaterialInMaterialsArrayDataflowNode& opAssign(FSetMaterialInMaterialsArrayDataflowNode Other)`

---

