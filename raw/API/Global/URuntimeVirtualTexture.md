### URuntimeVirtualTexture


Runtime virtual texture UObject

**属性**:

- `FVector4f CustomMaterialData [A float4 custom value that can be read in the material that writes this virtual texture.]`
- `EVTProducerPriority CustomPriority [Allows to override the default priority that this runtime virtual texture has, relative to other virtual texture producers. This allows to get the pages from this virtual texture to update faster than others in case of high contention.]`
- `TextureGroup LODGroup [Texture group this texture belongs to]`
- `ERuntimeVirtualTextureMaterialType MaterialType [Contents of virtual texture.]`
- `int RemoveLowMips [Number of low mips to cut from the virtual texture. This can reduce peak virtual texture update cost but will also increase the probability of mip shimmering.]`
- `int TileBorderSize [Page tile border size divided by 2 (Actual values increase in multiples of 2). Higher values trigger a higher anisotropic sampling level.]`
- `int TileCount [Size of virtual texture in tiles. (Actual values increase in powers of 2).
This is applied to the largest axis in world space and the size for any shorter axis is chosen to maintain aspect ratio.]`
- `int TileSize [Page tile size. (Actual values increase in powers of 2)]`
- `bool bAdaptive [Enable sparse adaptive page tables. This supports larger tile counts but adds an indirection cost when sampling the virtual texture. It is recommended only when very large virtual resolutions are necessary.]`
- `bool bClearTextures [Enable clear before rendering a page of the virtual texture. Disabling this can be an optimization if you know that the texture will always be fully covered by rendering.]`
- `bool bCompressTextures [Enable storing the virtual texture in GPU supported compression formats. Using uncompressed is only recommended for debugging and quality comparisons.]`
- `bool bContinuousUpdate [Enable continuous update of the virtual texture pages. This round-robin updates already mapped pages and can help fix pages that are mapped before dependent textures are fully streamed in.]`
- `bool bPrivateSpace [Enable private page table allocation. This can reduce total page table memory allocation but can also reduce the total number of virtual textures supported.]`
- `bool bSinglePhysicalSpace [Enable page table channel packing. This reduces page table memory and update cost but can reduce the ability to share physical memory with other virtual textures.]`
- `bool bUseCustomPriority []`
- `bool bUseLowQualityCompression [Use low quality textures (RGB565/RGB555A1) to replace runtime compression]`


**方法**:

- `int GetPageTableSize() const`  
  Public getter for virtual texture page table size. This is only different from GetTileCount() when using an adaptive page table.
- `int GetSize() const`  
  Public getter for virtual texture size. This is derived from the TileCount and TileSize.
- `int GetTileBorderSize() const`  
  Public getter for virtual texture tile border size
- `int GetTileCount() const`  
  Public getter for virtual texture tile count
- `int GetTileSize() const`  
  Public getter for virtual texture tile size

---

