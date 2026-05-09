### AItemPickup


**属性**:

- `FPickupConfiguration PickupConfig [The item and quantity the pickup should grant - use SetPickup, dont set this directly.]`
- `UPickupInteractable PickupInteractable`
- `UStaticMeshComponent PickupMesh`
- `FGuid PickupSaveGUID [The item and quantity the pickup should grant - use SetPickup, dont set this directly.]`


**方法**:

- `OnPickupDataReady(FPickupMeshData Data)`  
  This is called when the pickup mesh data has been streamed in and ready to be set - BP can override this if they need something custom.
- `RefreshPickup(FPickupConfiguration InPickupConfig)`
- `SetPickup(FPickupConfiguration InPickupConfig)`  
  Set the item this pickup will grant on take.

---

