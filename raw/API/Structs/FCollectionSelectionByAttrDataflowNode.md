### FCollectionSelectionByAttrDataflowNode


Selects specified Vertices/Faces/Transforms in the GeometryCollection by using an attribute value
Currently supported attribute types: float, int32, String, bool

**属性**:

- `FString Attribute [Attribute for the selection]`
- `ESelectionByAttrGroup Group [Group]`
- `ESelectionByAttrOperation Operation [Operation]`
- `FLinearColor OverrideColor []`
- `FString Value [Attribute value for the operation]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FCollectionSelectionByAttrDataflowNode& opAssign(FCollectionSelectionByAttrDataflowNode Other)`

---

