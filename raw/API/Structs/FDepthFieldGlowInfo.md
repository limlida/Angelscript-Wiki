### FDepthFieldGlowInfo


Info for glow when using depth field rendering

**属性**:

- `FLinearColor GlowColor [Base color to use for the glow]`
- `FVector2D GlowInnerRadius [If bEnableGlow, outline glow inner radius (0 to 1, 0.5 is edge of character silhouette)
glow influence will be 1 at GlowInnerRadius.X and 0 at GlowInnerRadius.Y]`
- `FVector2D GlowOuterRadius [If bEnableGlow, outline glow outer radius (0 to 1, 0.5 is edge of character silhouette)
glow influence will be 0 at GlowOuterRadius.X and 1 at GlowOuterRadius.Y]`
- `bool bEnableGlow [Whether to turn on the outline glow (depth field fonts only)]`


**方法**:

- `FDepthFieldGlowInfo& opAssign(FDepthFieldGlowInfo Other)`

---

