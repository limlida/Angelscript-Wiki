### UPaperTileMap


A tile map is a 2D grid with a defined width and height (in tiles).  There can be multiple layers, each of which can specify which tile should appear in each cell of the map for that layer.

**属性**:

- `UAssetImportData AssetImportData [Importing data and options used for this tile map]`
- `FLinearColor BackgroundColor [The background color displayed in the tile map editor]`
- `float32 CollisionThickness [The extrusion thickness of collision geometry when using a 3D collision domain]`
- `int HexSideLength [The vertical height of the sides of the hex cell for a tile.
Note: This value should already be included as part of the TileHeight, and is purely cosmetic; it only affects how the tile cursor preview is drawn.]`
- `FLinearColor LayerGridColor [The color of the layer grid]`
- `int MapHeight [Height of map (in tiles)]`
- `int MapWidth [Width of map (in tiles)]`
- `UMaterialInterface Material [The material to use on a tile map instance if not overridden]`
- `FLinearColor MultiTileGridColor [The color of the multi tile grid]`
- `int MultiTileGridHeight [Number of tiles the multi tile grid spans vertically. 0 removes horizontal lines]`
- `int MultiTileGridOffsetX [Number of tiles the multi tile grid is shifted to the right]`
- `int MultiTileGridOffsetY [Number of tiles the multi tile grid is shifted downwards]`
- `int MultiTileGridWidth [Number of tiles the multi tile grid spans horizontally. 0 removes vertical lines]`
- `float32 PixelsPerUnrealUnit [The scaling factor between pixels and Unreal units (cm) (e.g., 0.64 would make a 64 pixel wide tile take up 100 cm)]`
- `ETileMapProjectionMode ProjectionMode [Tile map type]`
- `float32 SeparationPerLayer [The Z-separation between each layer of the tile map]`
- `float32 SeparationPerTileX [The Z-separation incurred as you travel in X (not strictly applied, batched tiles will be put at the same Z level)]`
- `float32 SeparationPerTileY [The Z-separation incurred as you travel in Y (not strictly applied, batched tiles will be put at the same Z level)]`
- `ESpriteCollisionMode SpriteCollisionDomain [Collision domain (no collision, 2D, or 3D)]`
- `FLinearColor TileGridColor [The color of the tile grid]`
- `int TileHeight [Height of one tile (in pixels)]`
- `TArray<TObjectPtr<UPaperTileLayer>> TileLayers [The list of layers]`
- `int TileWidth [Width of one tile (in pixels)]`

---

