### UTextureRenderTargetCube


TextureRenderTargetCube

Cube render target texture resource. This can be used as a target
for rendering as well as rendered as a regular cube texture resource.

**属性**:

- `TextureFilter MipsSamplerFilter [Sampler filter type for AutoGenerateMips. Defaults to match texture filter.]`
- `int SizeX [The width of the texture.]`
- `bool bAutoGenerateMips [Whether to support Mip maps for this render target texture]`
- `bool bHDR [Determines the format of the render target.
When enabled, the format is 16-bit RGBA. When disabled, the format is 8-bit BGRA.]`
- `bool bSupportsUAV [Whether this render target can be used as an unordered access view]`

---

