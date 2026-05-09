### UPaperTerrainComponent


The terrain visualization component for an associated spline component.
This takes a 2D terrain material and instances sprite geometry along the spline path.

**属性**:

- `float32 CollisionThickness [The extrusion thickness of collision geometry when using a 3D collision domain]`
- `int RandomSeed [Random seed used for choosing which spline meshes to use.]`
- `int ReparamStepsPerSegment [Number of steps per spline segment to place in the reparameterization table]`
- `float32 SegmentOverlapAmount [The overlap amount between segments]`
- `ESpriteCollisionMode SpriteCollisionDomain [Collision domain (no collision, 2D (experimental), or 3D)]`
- `FLinearColor TerrainColor [The color of the terrain (passed to the sprite material as a vertex color)]`
- `UPaperTerrainMaterial TerrainMaterial [The terrain material to apply to this component (set of rules for which sprites are used on different surfaces or the interior)]`
- `bool bClosedSpline`
- `bool bFilledSpline`


**方法**:

- `SetTerrainColor(FLinearColor NewColor)`  
  Set color of the terrain

---

