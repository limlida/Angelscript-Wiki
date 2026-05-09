### UMeshTexturePaintingToolProperties


Base class for mesh texture paint properties.

**属性**:

- `UTexture2D PaintBrush [Optional Texture Brush to which Painting should use]`
- `float32 PaintBrushRotationOffset [Initial Rotation offset to apply to our paint brush]`
- `bool bEnableSeamPainting [Seam painting flag, True if we should enable dilation to allow the painting of texture seams]`
- `bool bRotateBrushTowardsDirection [Whether or not to continously rotate the brush towards the painting direction]`
- `bool bWriteAlpha [Whether or not to apply Texture Color Painting to the Alpha Channel]`
- `bool bWriteBlue [Whether or not to apply Texture Color Painting to the Blue Channel]`
- `bool bWriteGreen [Whether or not to apply Texture Color Painting to the Green Channel]`
- `bool bWriteRed [Whether or not to apply Texture Color Painting to the Red Channel]`

---

