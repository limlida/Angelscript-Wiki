### FPaperTerrainMaterialRule


Rule for a single section of a terrain material

**属性**:

- `TArray<TObjectPtr<UPaperSprite>> Body [A set of sprites to randomly choose to fill up the interior space between the caps in a terrain segment]`
- `float32 CollisionOffset [How much should the collision be lofted from the spline (positive values go out from the spline, negative values go in to the spline)]`
- `FText Description [Readable description for the rule (unused anywhere, just for clarity when editing the material)]`
- `int DrawOrder [Specify a draw order for different materials in a spline. Smaller draw orders are drawn first, negative values are allowed.]`
- `UPaperSprite EndCap [The sprite to use at the 'right' (closest to spline end) edge of the terrain segment]`
- `float32 MaximumAngle [Maximum slope angle (in degrees) to apply this rule]`
- `float32 MinimumAngle [Minimum slope angle (in degrees) to apply this rule]`
- `UPaperSprite StartCap [The sprite to use at the 'left' (closest to spline start) edge of the terrain segment]`
- `bool bEnableCollision [If true, collision is enabled for sections matching this rule]`


**方法**:

- `FPaperTerrainMaterialRule& opAssign(FPaperTerrainMaterialRule Other)`

---

