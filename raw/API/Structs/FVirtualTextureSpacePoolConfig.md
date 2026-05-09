### FVirtualTextureSpacePoolConfig


Settings for a single virtual texture physical pool.

**属性**:

- `TArray<EPixelFormat> Formats [Formats of the layers in the physical pool. Leave empty to match any format.]`
- `int MaxScaledSizeInMegabyte [Upper limit of size in megabytes to allocate for the pool after size scaling. Set to 0 to ignore.]`
- `int MaxTileSize [Maximum tile size to match (including tile border). Set to 0 to match any tile size.]`
- `int MinScaledSizeInMegabyte [Lower limit of size in megabytes to allocate for the pool after size scaling.]`
- `int MinTileSize [Minimum tile size to match (including tile border).]`
- `int ResidencyMipMapBiasGroup [Group can be in range 0-3. Pools with the same group share a mip map bias.]`
- `int SizeInMegabyte [Upper limit size in megabytes to allocate for the pool. The allocator will allocate as close as possible below this limit.]`
- `bool bAllowSizeScale [Allow the size to allocate for the pool to be scaled by scalability settings.]`
- `bool bEnableResidencyMipMapBias [Enable MipMapBias based on pool residency tracking.]`


**方法**:

- `FVirtualTextureSpacePoolConfig& opAssign(FVirtualTextureSpacePoolConfig Other)`

---

