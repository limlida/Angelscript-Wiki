### UMaterialBillboardComponent


A 2d material that will be rendered always facing the camera.

**属性**:

- `TArray<FMaterialSpriteElement> Elements [Current array of material billboard elements]`


**方法**:

- `AddElement(UMaterialInterface Material, UCurveFloat DistanceToOpacityCurve, bool bSizeIsInScreenSpace, float32 BaseSizeX, float32 BaseSizeY, UCurveFloat DistanceToSizeCurve)`  
  Adds an element to the sprite.
- `SetElements(TArray<FMaterialSpriteElement> NewElements)`  
  Set all elements of this material billboard component

---

