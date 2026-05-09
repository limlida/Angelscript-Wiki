### UMaterialExpressionTextureSample


**属性**:

- `bool AutomaticViewMipBias [Whether the texture should be sampled with per view mip biasing for sharper output with Temporal AA.]`
- `FParameterChannelNames ChannelNames []`
- `uint8 ConstCoordinate [only used if Coordinates is not hooked up]`
- `int ConstMipValue [only used if MipValue is not hooked up]`
- `ETextureGatherMode GatherMode [Whether to do a Gather of the given component from 4 neighboring texels (xyzw in counter clockwise order starting with the sample to the lower left).
Only works with Texture2D or TextureCube.  Doesn't work with virtual textures.]`
- `ETextureMipValueMode MipValueMode [Defines how the MipValue property is applied to the texture lookup]`
- `ESamplerSourceMode SamplerSource [Controls where the sampler for this texture lookup will come from.
Choose 'from texture asset' to make use of the UTexture addressing settings,
Otherwise use one of the global samplers, which will not consume a sampler slot.
This allows materials to use more than 16 unique textures on SM5 platforms.]`

---

