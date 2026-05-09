### FMeshBooleanDataflowNode


Compute a Mesh Boolean between Mesh1 and Mesh2

Supported Boolean Operations:
 Union (Mesh1 + Mesh2)
 Difference (Mesh1 - Mesh2; removing what's inside of Mesh2 from Mesh1)
 Intersection (Mesh1 & Mesh2; removing what's outside of Mesh2 from Mesh1)

**属性**:

- `EMeshBooleanOperationEnum Operation [Boolean operation]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FMeshBooleanDataflowNode& opAssign(FMeshBooleanDataflowNode Other)`

---

