### UTextureFactory


**属性**:

- `FVector4 AlphaCoverageThresholds [Channel values to compare to when preserving alpha coverage from a mask for mips]`
- `EBlendMode Blending [The blend mode of the created material]`
- `TextureCompressionSettings CompressionSettings [Compression settings for the texture]`
- `TextureGroup LODGroup [The group the texture belongs to]`
- `TextureMipGenSettings MipGenSettings [The mip-map generation settings for the texture; Allows customization of the content of the mip-map chain]`
- `bool NoAlpha [If enabled, the texture's alpha channel will be discarded during compression]`
- `EMaterialShadingModel ShadingModel [The shading model of the created material]`
- `bool bAlphaToEmissive [If enabled, link the texture's alpha to the created material's emissive color]`
- `bool bAlphaToOpacity [If enabled, link the texture's alpha to the created material's opacity]`
- `bool bAlphaToOpacityMask [If enabled, link the texture's alpha to the created material's opacity mask]`
- `bool bAlphaToRoughness [If enabled, link the texture's alpha to the created material's roughness]`
- `bool bCreateMaterial [If enabled, a material will automatically be created for the texture]`
- `bool bDeferCompression [If enabled, compression is deferred until the texture is saved]`
- `bool bDoScaleMipsForAlphaCoverage [Whether mip RGBA should be scaled to preserve the number of pixels with Value >= AlphaCoverageThresholds]`
- `bool bFlipNormalMapGreenChannel [If enabled, the texture's green channel will be inverted. This is useful for some normal maps]`
- `bool bPreserveBorder [If enabled, preserve the value of border pixels when creating mip-maps]`
- `bool bRGBToBaseColor [If enabled, link the texture to the created material's base color]`
- `bool bRGBToEmissive [If enabled, link the texture to the created material's emissive color]`
- `bool bTwoSided [If enabled, the created material will be two-sided]`
- `bool bUseNewMipFilter [Whether to use newer & faster mip generation filter]`

---

