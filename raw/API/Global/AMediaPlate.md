### AMediaPlate


MediaPlate is an actor that can play and show media in the world.

**属性**:

- `UMediaPlateComponent MediaPlateComponent`
- `UStaticMeshComponent StaticMeshComponent [Holds the mesh.]`
- `bool bEnableHoldoutComposite [If true, the mesh is rendered separately and composited after post-processing (see HoldoutComposite plugin). Using mip generation with this setting is also recommended if the cost is acceptable, given that the composite bypasses temporal anti-aliasing.]`


**方法**:

- `bool IsHoldoutCompositeEnabled() const`  
  Get the holdout composite state.
- `SetHoldoutCompositeEnabled(bool bInEnabled)`  
  Set the holdout composite state.

---

