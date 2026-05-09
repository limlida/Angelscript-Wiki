### UTextureRenderTarget2DArray


TextureRenderTarget2DArray

2D Array render target texture resource. This can be used as a target
for rendering as well as rendered as a regular 2DArray texture resource.

**属性**:

- `int SizeX [The width of the texture.]`
- `int SizeY [The height of the texture.]`
- `int Slices [The slices of the texture.]`
- `bool bHDR [Determines the format of the render target.
When enabled, the format is 16-bit RGBA. When disabled, the format is 8-bit BGRA.]`
- `bool bSupportsUAV [Whether this render target can be used as an unordered access view]`

---

