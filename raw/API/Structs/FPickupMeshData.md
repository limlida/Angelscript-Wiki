### FPickupMeshData


Used when the item is dropped and we need to create a pickup from it

**属性**:

- `TSoftObjectPtr<UStaticMesh> PickupMesh [The mesh to display for this items pickup]`
- `TArray<TSoftObjectPtr<UMaterialInterface>> PickupMeshMaterials [The materials to display for this items pickup]`
- `FTransform PickupOffset [An extra transform to offset the pickup once dropped. This is because many items won't look nice if we drop the item at its default origin, it will probably need shifted to a nicer looking spot.]`


**方法**:

- `FPickupMeshData& opAssign(FPickupMeshData Other)`

---

