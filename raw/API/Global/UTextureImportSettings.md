### UTextureImportSettings


**属性**:

- `int AutoLimitDimension [If not zero, textures over this size that are not VT will be resized to be equal to or less than this.  Treated as pixel count limit for cubes and volumes.  Must equal AutoVTSize if both are non-zero.  This setting will not affect existing textures in the project.]`
- `int AutoVTSize [Automatically enable the 'Virtual Texture Streaming' texture setting for textures larger than or equal to this size. Zero to disable.  This setting will not affect existing textures in the project.]`
- `ETextureImportFloatingPointFormat CompressedFormatForFloatTextures [Optionally use HDRCompressed (BC6H), or 32-bit adaptively, instead of HDR (RGBA16F) for floating point textures.  This setting is applied to newly imported textures, it does not affect existing textures in the project.]`
- `ETextureImportPNGInfill PNGInfill [Default behavior is to infill only for binary transparency; this setting may change that to always or never.  Will check TextureImporter/FillPNGZeroAlpha if this is not changed from Default.  This setting is applied to newly imported textures, it does not affect existing textures in the project. This setting is project-global, prefer the per-user variant in Editor Preferences.]`
- `bool bDoAutomaticTextureSettingsForNonPow2Textures [Sets them to NoMipMaps and uncompressed UI compression. If this is off, artists must imported UI textures up correctly by hand.]`
- `bool bEnableFastMipFilter [Use the fast mip filter on new textures; it is recommended, but can be turned off to maintain legacy behavior. This setting is applied to newly imported textures, it does not affect existing textures in the project.]`
- `bool bEnableNormalizeNormals [NormalizeNormals makes more correct normals in mip maps; it is recommended, but can be turned off to maintain legacy behavior. This setting is applied to newly imported textures, it does not affect existing textures in the project.]`

---

