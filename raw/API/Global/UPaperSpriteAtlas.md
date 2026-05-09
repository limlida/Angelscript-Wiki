### UPaperSpriteAtlas


Groups together a set of sprites that will try to share the same texture atlas (allowing them to be combined into a single draw call)

**属性**:

- `FString AtlasDescription [Description of this atlas, which shows up in the content browser tooltip]`
- `TextureCompressionSettings CompressionSettings [Compression settings to use on atlas texture]`
- `TextureFilter Filter [Texture filtering mode when sampling these textures]`
- `int MaxHeight [Maximum atlas page height (single pages might be smaller)]`
- `int MaxWidth [Maximum atlas page width (single pages might be smaller)]`
- `int MipCount [Maximum atlas page height (single pages might be smaller)]`
- `int Padding [The number of pixels of padding]`
- `EPaperSpriteAtlasPadding PaddingType [The type of padding performed on this atlas]`
- `bool bRebuildAtlas [Slots in the atlas]`

---

