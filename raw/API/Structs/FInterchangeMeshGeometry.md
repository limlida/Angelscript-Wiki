### FInterchangeMeshGeometry


* A mesh geometry is a description of a translated mesh asset node that defines a geometry.

**属性**:

- `TArray<FString> AttachedSocketUids [A list of all scene nodes that represent sockets attached to this mesh.]`
- `const UInterchangeMeshNode MeshNode [The UInterchangeMeshNode pointer represented by this structure.]`
- `FString MeshUid [The unique ID of the UInterchangeMeshNode represented by this structure.]`
- `TArray<FString> ReferencingMeshInstanceUids [All mesh instances that refer to this UInterchangeMeshNode pointer.]`


**方法**:

- `FInterchangeMeshGeometry& opAssign(FInterchangeMeshGeometry Other)`

---

