### AMapTileBounds


**属性**:

- `UBoxComponent MapTileBounds []`
- `float32 MapWidth [The width our map should be, in unreal units (cm)]`
- `int NumTiles [The number of 1024x1024 tiles that should make up the map. For smaller maps you could use a single tile - for large open world maps you'll want more
       or your map will become blurry and low resolution.]`
- `TArray<FPOIData> POIs [All POIs found in the world are cached in here so we can create map markers for them]`
- `FMapTileSet TileSet [The tiles the tile generator has created]`

---

