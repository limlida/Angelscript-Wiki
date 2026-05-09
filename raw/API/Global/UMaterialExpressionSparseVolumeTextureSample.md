### UMaterialExpressionSparseVolumeTextureSample


Material expression for sampling from a runtime virtual texture.

**属性**:

- `int ConstMipValue [Only used if MipValue is not hooked up]`
- `ETextureMipValueMode MipValueMode [Defines how the MipValue property is applied to the texture lookup]`
- `ESamplerSourceMode SamplerSource [Controls where the sampler for this texture lookup will come from.
Choose 'from texture asset' to make use of the USparseVolumeTexture addressing settings,
Otherwise use one of the global samplers, which will not consume a sampler slot.
This allows materials to use more than 16 unique textures on SM5 platforms.]`

---

