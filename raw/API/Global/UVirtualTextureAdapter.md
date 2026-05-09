### UVirtualTextureAdapter


Adapter object that wraps a regular UTexture and allows it to be referenced as a virtual texture in materials.
The virtual texture pages are filled on demand by copying from the wrapped texture.
This isn't memory efficient or performant, but can be useful for certain debugging or previewing modes where we don't
want to change the material, but do want to bind a non-virtual texture to an existing virtual texture sample.

**属性**:

- `UTexture2D OverrideWithTextureFormat [Optional UTexture object that has the final texture format that we would like to use.]`
- `UTexture Texture [The UTexture object to wrap.]`
- `int TileBorderSize [Page tile border size. (Will be rounded up to multiple of 2).]`
- `int TileSize [Page tile size. (Will be rounded up to power of 2).]`
- `bool bUseDefaultTileSizes [Set to true if we want to use the default project virtual texture tile settings.]`

---

