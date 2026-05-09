### USculptBrushProperties


**属性**:

- `float32 BrushFalloffAmount [Amount of falloff to apply (0.0 - 1.0)]`
- `FBrushToolRadius BrushSize []`
- `float32 Depth [Depth of Brush into surface along view ray or surface normal, depending on the Active Brush Type]`
- `float32 FlowRate [Brush stamps are applied at this time interval. 0 for a single stamp, 1 for continuous stamps, 0.5 is a stamp every half-second]`
- `float32 Lazyness [Lazy brush smooths out the brush path by averaging the cursor positions]`
- `float32 RayDensity [When moving the mouse quickly in Spacing mode, determines how initial rays are upsampled before being filtered by StampSpacing.]`
- `float32 Spacing [Space out stamp centers at distances Spacing*BrushDiameter along the stroke (so Spacing of 1 means that stamps will be adjacent but non-overlapping). Zero spacing means continuous stamps.]`
- `EMeshSculptStrokeType StrokeType []`
- `bool bHitBackFaces [Allow the Brush to hit the back-side of the mesh]`

---

