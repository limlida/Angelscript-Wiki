### FGetFromMaterialInterfaceArrayDataflowNode


Get an element from a material array
(if the index does not match the range of the array, null is returned)
DEPRECATED 5.6 - use the generic GetArrayElement node instead

**属性**:

- `int Index [Index in the array to get the material from. Invalid index will return null material]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FGetFromMaterialInterfaceArrayDataflowNode& opAssign(FGetFromMaterialInterfaceArrayDataflowNode Other)`

---

