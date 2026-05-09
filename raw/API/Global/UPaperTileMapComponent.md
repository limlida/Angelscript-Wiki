### UPaperTileMapComponent


A component that handles rendering and collision for a single instance of a UPaperTileMap asset.

This component is created when you drag a tile map asset from the content browser into a Blueprint, or
contained inside of the actor created when you drag one into the level.

NOTE: This is an beta preview class.  While not considered production-ready, it is a step beyond
'experimental' and is being provided as a preview of things to come:
 - We will try to provide forward-compatibility for content you create.
 - The classes may change significantly in the future.
 - The code is in an early state and may not meet the desired polish / quality bar.
 - There is probably no documentation or example content yet.
 - They will be promoted out of 'beta' when they are production ready.

@see UPrimitiveComponent, UPaperTileMap

**属性**:

- `UPaperTileMap TileMap [The tile map used by this component]`
- `FLinearColor TileMapColor [The color of the tile map (multiplied with the per-layer color and passed to the material as a vertex color)]`
- `int UseSingleLayerIndex [The index of the single layer to use if enabled]`
- `bool bShowOutlineWhenUnselected [Should this component show an outline around the first layer when the component is not selected?]`
- `bool bShowPerLayerGridWhenSelected [Should this component show an outline around each layer when the component is selected?]`
- `bool bShowPerLayerGridWhenUnselected [Should this component show an outline around each layer when the component is not selected?]`
- `bool bShowPerTileGridWhenSelected [Should this component show a tile grid when the component is selected?]`
- `bool bShowPerTileGridWhenUnselected [Should this component show a tile grid when the component is not selected?]`
- `bool bUseSingleLayer [Should we draw a single layer?]`


**方法**:

- `UPaperTileLayer AddNewLayer()`  
  Creates and adds a new layer to the tile map
Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets
- `CreateNewTileMap(int MapWidth = 4, int MapHeight = 4, int TileWidth = 32, int TileHeight = 32, float32 PixelsPerUnrealUnit = 1.000000, bool bCreateLayer = true)`  
  Creates a new tile map of the specified size, replacing the TileMap reference (or dropping the previous owned one)

@param MapWidth Width of the map (in tiles)
@param MapHeight Height of the map (in tiles)
@param TileWidth Width of one tile (in pixels)
@param TileHeight Height of one tile (in pixels)
@param bCreateLayer Should an empty layer be created?
- `FLinearColor GetLayerColor(int Layer = 0) const`  
  Gets the per-layer color multiplier for a specific layer (multiplied with the tile map color and passed to the material as a vertex color)
- `GetMapSize(int& MapWidth, int& MapHeight, int& NumLayers)`  
  Returns the size of the tile map
- `FPaperTileInfo GetTile(int X, int Y, int Layer) const`  
  Returns the contents of a specified tile cell
- `FVector GetTileCenterPosition(int TileX, int TileY, int LayerIndex = 0, bool bWorldSpace = false) const`  
  Returns the position of the center of the specified tile
- `FVector GetTileCornerPosition(int TileX, int TileY, int LayerIndex = 0, bool bWorldSpace = false) const`  
  Returns the position of the top left corner of the specified tile
- `FLinearColor GetTileMapColor() const`  
  Gets the tile map global color multiplier (multiplied with the per-layer color and passed to the material as a vertex color)
- `GetTilePolygon(int TileX, int TileY, TArray<FVector>& Points, int LayerIndex = 0, bool bWorldSpace = false) const`  
  Returns the polygon for the specified tile (will be 4 or 6 vertices as a rectangle, diamond, or hexagon)
- `MakeTileMapEditable()`  
  Makes the tile map asset pointed to by this component editable.  Nothing happens if it was already instanced, but
if the tile map is an asset reference, it is cloned to make a unique instance.
- `bool OwnsTileMap() const`  
  Does this component own the tile map (is it instanced instead of being an asset reference)?
- `RebuildCollision()`  
  Rebuilds collision for the tile map
- `ResizeMap(int NewWidthInTiles, int NewHeightInTiles)`  
  Resizes the tile map (Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets)
- `SetDefaultCollisionThickness(float32 Thickness, bool bRebuildCollision = true)`  
  Sets the default thickness for any layers that don't override the collision thickness
Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets
- `SetLayerCollision(int Layer = 0, bool bHasCollision = true, bool bOverrideThickness = true, float32 CustomThickness = 50.000000, bool bOverrideOffset = false, float32 CustomOffset = 0.000000, bool bRebuildCollision = true)`  
  Sets the collision thickness for a specific layer
Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets
- `SetLayerColor(FLinearColor NewColor, int Layer = 0)`  
  Sets the per-layer color multiplier for a specific layer (multiplied with the tile map color and passed to the material as a vertex color)
Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets
- `SetTile(int X, int Y, int Layer, FPaperTileInfo NewValue)`  
  Modifies the contents of a specified tile cell (Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets)
Note: Does not update collision by default, call RebuildCollision after all edits have been done in a frame if necessary
- `bool SetTileMap(UPaperTileMap NewTileMap)`  
  Change the PaperTileMap used by this instance.
- `SetTileMapColor(FLinearColor NewColor)`  
  Sets the tile map global color multiplier (multiplied with the per-layer color and passed to the material as a vertex color)

---

