### FMaterialProxySettings


**属性**:

- `float32 AmbientOcclusionConstant [Constant value to use for the Ambient Occlusion property]`
- `FIntPoint AmbientOcclusionTextureSize [Override Ambient Occlusion texture size]`
- `float32 AnisotropyConstant [Constant value to use for the Anisotropy property]`
- `FIntPoint AnisotropyTextureSize [Override Anisotropy texture size]`
- `EBlendMode BlendMode [Target blend mode for the generated material]`
- `FIntPoint DiffuseTextureSize [Override Diffuse texture size]`
- `FIntPoint EmissiveTextureSize [Override Emissive texture size]`
- `float32 GutterSpace [Gutter space to take into account]`
- `float32 MeshMaxScreenSizePercent [Expected maximum screen size for the mesh]`
- `float MeshMinDrawDistance [Expected minimum distance at which the mesh will be rendered]`
- `float32 MetallicConstant [Constant value to use for the Metallic property]`
- `FIntPoint MetallicTextureSize [Override Metallic texture size]`
- `FIntPoint NormalTextureSize [Override Normal texture size]`
- `float32 OpacityConstant [Constant value to use for the Opacity property]`
- `float32 OpacityMaskConstant [Constant value to use for the Opacity mask property]`
- `FIntPoint OpacityMaskTextureSize [Override Opacity Mask texture size]`
- `FIntPoint OpacityTextureSize [Override Opacity texture size]`
- `float32 RoughnessConstant [Constant value to use for the Roughness property]`
- `FIntPoint RoughnessTextureSize [Override Roughness texture size]`
- `float32 SpecularConstant [Constant value to use for the Specular property]`
- `FIntPoint SpecularTextureSize [Override Specular texture size]`
- `FIntPoint TangentTextureSize [Override Tangent texture size]`
- `float32 TargetTexelDensityPerMeter [Target texel density]`
- `FIntPoint TextureSize [Size of generated BaseColor map]`
- `ETextureSizingType TextureSizingType [Method that should be used to generate the sizes of the output textures]`
- `bool bAllowTwoSidedMaterial [Whether or not to allow the generated material can be two-sided]`
- `bool bAmbientOcclusionMap [Whether to generate a texture for the Ambient Occlusion property]`
- `bool bAnisotropyMap [Whether to generate a texture for the Anisotropy property]`
- `bool bEmissiveMap [Whether to generate a texture for the Emissive property]`
- `bool bMetallicMap [Whether to generate a texture for the Metallic property]`
- `bool bNormalMap [Whether to generate a texture for the Normal property]`
- `bool bOpacityMap [Whether to generate a texture for the Opacity property]`
- `bool bOpacityMaskMap [Whether to generate a texture for the Opacity Mask property]`
- `bool bRoughnessMap [Whether to generate a texture for the Roughness property]`
- `bool bSpecularMap [Whether to generate a texture for the Specular property]`
- `bool bTangentMap [Whether to generate a texture for the Tangent property]`


**方法**:

- `FMaterialProxySettings& opAssign(FMaterialProxySettings Other)`

---

