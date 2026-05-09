### FRecastNavMeshTileGenerationDebug


**属性**:

- `EHeightFieldRenderMode HeightFieldRenderMode []`
- `uint16 LinkGenerationDebugFlags []`
- `int LinkGenerationSelectedConfig [Using -1 as 'no config selected'.]`
- `int LinkGenerationSelectedEdge [Using -1 as 'no edge selected'.]`
- `FIntVector MaxTileCoordinate [Optional: Highest bound included tile to define a rectangle with TileCoordinate for which the internal data is kept.
Tip: displaying the navmesh using 'Draw Tile Labels' show tile coordinates.]`
- `FIntVector TileCoordinate [Selected tile coordinate, only this tile will have it's internal data kept.
When MaxTileCoordinate is enabled, this defines the lower bound of a rectangle.
Tip: displaying the navmesh using 'Draw Tile Labels' show tile coordinates.]`
- `bool bCollisionGeometry [Display the collision used for the navmesh rasterization.
Note: The visualization is affected by the DrawOffset of the RecastNavmesh owner]`
- `bool bCompactHeightfield`
- `bool bCompactHeightfieldDistances`
- `bool bCompactHeightfieldEroded`
- `bool bCompactHeightfieldRegions`
- `bool bEnabled [If set, the selected internal debug data will be kept during tile generation to be displayed with the navmesh.]`
- `bool bGenerateDebugTileOnly [If set, the generator will only generate the tile selected to debug (set in TileCoordinate).]`
- `bool bHeightFieldLayers`
- `bool bHeightfieldBounds`
- `bool bHeightfieldFromRasterization`
- `bool bHeightfieldPostHeightFiltering`
- `bool bHeightfieldPostInclusionBoundsFiltering`
- `bool bSkipContourSimplification [If set, the contour simplification step will be skipped. Beware that enabling this changes the way navmesh will generate when Tile Generation Debug is enabled.]`
- `bool bTileCacheContours`
- `bool bTileCacheDetailMesh`
- `bool bTileCacheLayerAreas`
- `bool bTileCacheLayerRegions`
- `bool bTileCachePolyMesh`
- `bool bUseMaxTileCoordinate`


**方法**:

- `FRecastNavMeshTileGenerationDebug& opAssign(FRecastNavMeshTileGenerationDebug Other)`

---

