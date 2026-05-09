### UStaticMeshDescription


A wrapper for MeshDescription, customized for static meshes

**方法**:

- `CreateCube(FVector Center, FVector HalfExtents, FPolygonGroupID PolygonGroup, FPolygonID& PolygonID_PlusX, FPolygonID& PolygonID_MinusX, FPolygonID& PolygonID_PlusY, FPolygonID& PolygonID_MinusY, FPolygonID& PolygonID_PlusZ, FPolygonID& PolygonID_MinusZ)`
- `FVector2D GetVertexInstanceUV(FVertexInstanceID VertexInstanceID, int UVIndex = 0) const`
- `SetPolygonGroupMaterialSlotName(FPolygonGroupID PolygonGroupID, FName SlotName)`
- `SetVertexInstanceUV(FVertexInstanceID VertexInstanceID, FVector2D UV, int UVIndex = 0)`

---

