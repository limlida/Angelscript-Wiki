### UPaperTileSet


A tile set is a collection of tiles pulled from a texture that can be used to fill out a tile map.

@see UPaperTileMap, UPaperTileMapComponent

**属性**:

- `TArray<TObjectPtr<UTexture>> AdditionalSourceTextures [Additional source textures for other slots]`
- `FLinearColor BackgroundColor [The background color displayed in the tile set viewer]`
- `FIntMargin BorderMargin [The amount of padding around the border of the tile sheet (in pixels)]`
- `FIntPoint DrawingOffset [The drawing offset for tiles from this set (in pixels)]`
- `TArray<FPaperTileMetadata> PerTileData [Per-tile information]`
- `FIntPoint PerTileSpacing [The amount of padding between tiles in the tile sheet (in pixels)]`
- `UTexture2D TileSheet [The tile sheet texture associated with this tile set]`
- `FIntPoint TileSize [The width and height of a single tile (in pixels)]`

---

