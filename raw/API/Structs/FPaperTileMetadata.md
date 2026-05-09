### FPaperTileMetadata


Information about a single tile in a tile set

**属性**:

- `FSpriteGeometryCollection CollisionData [Collision data for the tile]`
- `uint8 TerrainMembership [Indexes into the Terrains array of the owning tile set, in counterclockwise order starting from top-left
0xFF indicates no membership.]`
- `FName UserDataName [A tag that can be used for grouping and categorizing (consider using it as the index into a UDataTable asset).]`


**方法**:

- `FPaperTileMetadata& opAssign(FPaperTileMetadata Other)`

---

