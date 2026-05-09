### UPhysicalMaterialMask


Physical material masks are used to map multiple physical materials to a single rendering material

**属性**:

- `TextureAddress AddressX [The addressing mode to use for the X axis.]`
- `TextureAddress AddressY [The addressing mode to use for the Y axis.]`
- `UAssetImportData AssetImportData []`
- `UTexture MaskTexture [Mask input texture, square aspect ratio recommended. Recognized mask colors include: white, black, red, green, yellow, cyan, turquoise, and magenta.]`
- `int UVChannelIndex [StaticMesh UV channel index to use when performing lookups with this mask.]`

---

