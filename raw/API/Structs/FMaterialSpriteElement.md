### FMaterialSpriteElement


**属性**:

- `float32 BaseSizeX [The base width of the sprite, multiplied with the DistanceToSizeCurve.]`
- `float32 BaseSizeY [The base height of the sprite, multiplied with the DistanceToSizeCurve.]`
- `UCurveFloat DistanceToOpacityCurve [A curve that maps distance on the X axis to the sprite opacity on the Y axis.]`
- `UCurveFloat DistanceToSizeCurve [A curve that maps distance on the X axis to the sprite size on the Y axis.]`
- `UMaterialInterface Material [The material that the sprite is rendered with.]`
- `bool bSizeIsInScreenSpace [Whether the size is defined in screen-space or world-space.]`


**方法**:

- `FMaterialSpriteElement& opAssign(FMaterialSpriteElement Other)`

---

