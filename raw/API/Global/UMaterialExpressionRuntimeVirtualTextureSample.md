### UMaterialExpressionRuntimeVirtualTextureSample


Material expression for sampling from a runtime virtual texture.

**属性**:

- `ERuntimeVirtualTextureMaterialType MaterialType [How to interpret the virtual texture contents. Note that the bound Virtual Texture should have the same setting for sampling to work correctly.]`
- `ERuntimeVirtualTextureMipValueMode MipValueMode [Defines how the mip level is calculated for the virtual texture lookup.]`
- `ERuntimeVirtualTextureTextureAddressMode TextureAddressMode [Defines the texture addressing mode.]`
- `URuntimeVirtualTexture VirtualTexture [The virtual texture object to sample.]`
- `EPositionOrigin WorldPositionOriginType [Defines the reference space for the WorldPosition input.]`
- `bool bAdaptive [Enable sparse adaptive page tables. Note that the bound Virtual Texture should have valid adaptive virtual texture settings for sampling to work correctly.]`
- `bool bEnableFeedback [Enable virtual texture feedback.
Disabling this can result in the virtual texture not reaching the correct mip level.
It should only be used in cases where we don't care about the correct mip level being resident, or some other process is maintaining the correct level.]`
- `bool bSinglePhysicalSpace [Enable page table channel packing. Note that the bound Virtual Texture should have the same setting for sampling to work correctly.]`

---

