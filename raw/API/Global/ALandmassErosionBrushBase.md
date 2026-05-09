### ALandmassErosionBrushBase


**属性**:

- `ALandscape DetailPanelLandscape [The owning landscape.]`


**方法**:

- `ActorSelectionChanged(bool bSelected)`
- `ALandscape GetLandscape()`
- `SetTargetLandscape(ALandscape InOwningLandscape)`  
  Adds the brush to the given landscape, removing it from any previous one. This differs from SetOwningLandscape
in that SetOwningLandscape is called by the landscape itself from AddBrushToLayer to update the manager.

---

