### FSetIntoMaterialInterfaceArrayDataflowNode


Set an element into a material array at a specific index
(if the index does not match the range of the array, the array will remain unchanged)

**属性**:

- `int Index [Index Set the material at (if the index does not match the range of the array, the array will remain unchanged)]`
- `UMaterialInterface Material [Material to set at the specific index into the array]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FSetIntoMaterialInterfaceArrayDataflowNode& opAssign(FSetIntoMaterialInterfaceArrayDataflowNode Other)`

---

