### UTextureRenderTarget2D


TextureRenderTarget2D

2D render target texture resource. This can be used as a target
for rendering as well as rendered as a regular 2D texture resource.

**属性**:

- `TextureAddress AddressX [The addressing mode to use for the X axis.]`
- `TextureAddress AddressY [The addressing mode to use for the Y axis.]`
- `FLinearColor ClearColor [the color the texture is cleared to]`
- `TextureAddress MipsAddressU [AutoGenerateMips sampler address mode for U channel. Defaults to clamp.]`
- `TextureAddress MipsAddressV [AutoGenerateMips sampler address mode for V channel. Defaults to clamp.]`
- `TextureFilter MipsSamplerFilter [Sampler filter type for AutoGenerateMips. Defaults to match texture filter.]`
- `ETextureRenderTargetFormat RenderTargetFormat [Format of the texture render target.
Data written to the render target will be quantized to this format, which can limit the range and precision.
The largest format (RTF_RGBA32f) uses 16x more memory and bandwidth than the smallest (RTF_R8) and can greatly affect performance.
Use the smallest format that has enough precision and range for what you are doing.]`
- `int SizeX [The width of the texture.]`
- `int SizeY [The height of the texture.]`
- `bool bAutoGenerateMips [Whether to support Mip maps for this render target texture]`
- `bool bGPUSharedFlag [Whether to support GPU sharing of the underlying native texture resource.]`
- `bool bSupportsUAV [Whether this render target can be used as an unordered access view]`

---

