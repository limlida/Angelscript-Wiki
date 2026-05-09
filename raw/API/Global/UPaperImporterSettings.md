### UPaperImporterSettings


Implements the settings for imported Paper2D assets, such as sprite sheet textures.

**属性**:

- `TArray<FString> BaseMapTextureSuffixes [The default suffix to remove (if present) from a texture name before looking for an associated normal map using NormalMapTextureSuffixes]`
- `float32 DefaultPixelsPerUnrealUnit [The default scaling factor between pixels and Unreal units (cm) to use for newly created sprite assets (e.g., 0.64 would make a 64 pixel wide sprite take up 100 cm)]`
- `TextureCompressionSettings DefaultSpriteTextureCompression [Compression settings to use when building the texture.
The default texture group for imported sprite textures, tile sheets, etc... (typically set to UI for 'modern 2D' or 2D pixels for 'retro 2D')]`
- `TextureGroup DefaultSpriteTextureGroup [The default texture group for imported sprite textures, tile sheets, etc... (typically set to UI for 'modern 2D' or 2D pixels for 'retro 2D')]`
- `FSoftObjectPath LitDefaultMaskedMaterialName [The lit default masked material for newly created sprites (masked means binary opacity: things are either opaque or see-thru, with nothing in between)]`
- `FSoftObjectPath LitDefaultOpaqueMaterialName [The lit default opaque material for newly created sprites]`
- `FSoftObjectPath LitDefaultTranslucentMaterialName [The lit default translucent material for newly created sprites (translucent means smooth opacity which can vary continuously from 0..1, but translucent rendering is more expensive that opaque or masked rendering and has different sorting rules)]`
- `TArray<FString> NormalMapTextureSuffixes [A list of default suffixes to use when looking for associated normal maps while importing sprites or creating sprites from textures]`
- `FSoftObjectPath UnlitDefaultMaskedMaterialName [The unlit default masked material for newly created sprites (masked means binary opacity: things are either opaque or see-thru, with nothing in between)]`
- `FSoftObjectPath UnlitDefaultOpaqueMaterialName [The unlit default opaque material for newly created sprites]`
- `FSoftObjectPath UnlitDefaultTranslucentMaterialName [The unlit default translucent material for newly created sprites (translucent means smooth opacity which can vary continuously from 0..1, but translucent rendering is more expensive that opaque or masked rendering and has different sorting rules)]`
- `bool bAnalysisCanUseOpaque [Can opaque materials be applied as part of the 'best material' analysis?]`
- `bool bOverrideTextureCompression [Should texture compression settings be overridden on imported sprite textures, tile sheets, etc...?]`
- `bool bPickBestMaterialWhenCreatingSprites [Should the source texture be scanned when creating new sprites to determine the appropriate material? (if false, the Default Masked Material is always used)]`
- `bool bPickBestMaterialWhenCreatingTileMaps [Should the source texture be scanned when creating new tile maps (from a tile set or via importing) to determine the appropriate material? (if false, the Default Masked Material is always used)]`

---

