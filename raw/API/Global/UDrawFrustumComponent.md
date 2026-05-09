### UDrawFrustumComponent


Utility component for drawing a view frustum. Origin is at the component location, frustum points down position X axis.

**属性**:

- `float32 FrustumAngle [Angle of longest dimension of view shape.
If the angle is 0 then an orthographic projection is used]`
- `float32 FrustumAspectRatio [Ratio of horizontal size over vertical size.]`
- `FColor FrustumColor [Color to draw the wireframe frustum.]`
- `float32 FrustumEndDist [Distance from origin to stop drawing the frustum.]`
- `float32 FrustumStartDist [Distance from origin to start drawing the frustum.]`
- `UTexture Texture [optional texture to show on the near plane]`
- `bool bFrustumEnabled [Enable or disable frustum visualization for this camera]`

---

