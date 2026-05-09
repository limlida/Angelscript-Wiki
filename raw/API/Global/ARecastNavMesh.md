### ARecastNavMesh


**属性**:

- `float32 AgentHeight [Size of the tallest agent that will path with this navmesh.]`
- `float32 AgentMaxSlope [The maximum slope (angle) that the agent can move on.]`
- `float32 AgentRadius [Radius of smallest agent to traverse this navmesh]`
- `float32 DrawOffset [vertical offset added to navmesh's debug representation for better readability]`
- `int ExpectedMaxLayersPerTile [Used when connecting segment links across layers to determine how much memory to allocate to hold skipped layers]`
- `float32 HeuristicScale [Euclidean distance heuristic scale used while pathfinding]`
- `uint InvokerTilePriorityBumpDistanceThresholdInTileUnits [If >= 1, when sorting pending tiles by priority, tiles near invokers (within the distance threshold) will have their priority increased.]`
- `uint8 InvokerTilePriorityBumpIncrease [Priority increase steps for tiles that are withing near distance.]`
- `int LayerChunkSplits [number of chunk splits (along single axis) used for layer's partitioning: ChunkyMonotone]`
- `ERecastPartitioning LayerPartitioning [partitioning method for creating tile layers]`
- `ENavigationLedgeSlopeFilterMode LedgeSlopeFilterMode [filtering methode used for filtering ledge slopes]`
- `float32 MaxSimplificationError [How much navigable shapes can get simplified - the higher the value the more freedom]`
- `int MaxSimultaneousTileGenerationJobsCount [Sets the limit for number of asynchronous tile generators running at one time, also used for some synchronous tasks]`
- `float32 MergeRegionSize [The size limit of regions to be merged with bigger regions (watershed partitioning only)]`
- `float32 MinRegionArea [The minimum dimension of area. Areas smaller than this will be discarded]`
- `TArray<FNavLinkGenerationJumpConfig> NavLinkJumpConfigs [Experimental configurations to generate jump links.]`
- `FVector NavMeshOriginOffset [Use this if you don't want your tiles to start at (0,0,0)]`
- `FNavMeshResolutionParam NavMeshResolutionParams [Resolution params
If using multiple resolutions, it's recommended to choose the highest resolution first and
set it according to the highest desired precision and then the other resolutions.]`
- `int RegionChunkSplits [number of chunk splits (along single axis) used for region's partitioning: ChunkyMonotone]`
- `ERecastPartitioning RegionPartitioning [partitioning method for creating navmesh polys]`
- `float32 SimplificationElevationRatio [When simplifying contours, how much is the vertical error taken into account when comparing with MaxSimplificationError.
Use 0 to deactivate (Recast behavior), use 1 as a typical value.]`
- `FRecastNavMeshTileGenerationDebug TileGenerationDebug []`
- `int TileNumberHardLimit [Absolute hard limit to number of navmesh tiles. Be very, very careful while modifying it while
    having big maps with navmesh. A single, empty tile takes 176 bytes and empty tiles are
    allocated up front (subject to change, but that's where it's at now)
    @note TileNumberHardLimit is always rounded up to the closest power of 2]`
- `int TilePoolSize [maximum number of tiles NavMesh can hold]`
- `float32 TileSizeUU [size of single tile, expressed in uu]`
- `int TimeSliceFilterLedgeSpansMaxYProcess [The maximum number of y coords to process when time slicing filter ledge spans during navmesh regeneration.]`
- `float TimeSliceLongDurationDebug [If a single time sliced section of navmesh regen code exceeds this duration then it will trigger debug logging]`
- `float32 VerticalDeviationFromGroundCompensation [Value added to each search height to compensate for error between navmesh polys and walkable geometry]`
- `bool bDoFullyAsyncNavDataGathering [if set, navmesh data gathering will never happen on the game thread and will only be done on background threads]`
- `bool bDrawClusters [Draw navmesh's clusters and cluster links. (Requires WITH_NAVMESH_CLUSTER_LINKS=1)]`
- `bool bDrawDefaultPolygonCost [Draw a label for every poly that indicates its default and fixed costs]`
- `bool bDrawFailedNavLinks [Draw failed links and valid links.]`
- `bool bDrawFilledPolys [if disabled skips filling drawn navmesh polygons]`
- `bool bDrawLabelsOnPathNodes`
- `bool bDrawMarkedForbiddenPolys`
- `bool bDrawNavLinks [Draw valid links (both ends are valid).]`
- `bool bDrawNavMeshEdges [Draw border-edges]`
- `bool bDrawOctree [Draw octree used to store navigation relevant actors]`
- `bool bDrawOctreeDetails [Draw octree used to store navigation relevant actors with the elements bounds]`
- `bool bDrawPathCollidingGeometry [Draw input geometry passed to the navmesh generator.  Recommend disabling other geometry rendering via viewport showflags in editor.]`
- `bool bDrawPolyEdges [Draw edges of every poly (i.e. not only border-edges)]`
- `bool bDrawPolygonAreaIDs [Draw a label for every poly that indicates its area id and the list of all NavAreaClass used in the displayed tiles.]`
- `bool bDrawPolygonFlags [Draw a label for every poly that indicates its poly and area flags]`
- `bool bDrawPolygonLabels [Draw a label for every poly that indicates its poly and tile indices]`
- `bool bDrawTileBounds [Draw the tile boundaries]`
- `bool bDrawTileBuildTimes`
- `bool bDrawTileBuildTimesHeatMap`
- `bool bDrawTileLabels`
- `bool bDrawTileResolutions [Draw the tile resolutions]`
- `bool bDrawTriangleEdges [Draw edges of every navmesh's triangle]`
- `bool bFilterLowSpanFromTileCache [if set, only low height spans with corresponding area modifier will be stored in tile cache (reduces memory, can't modify without full tile rebuild)]`
- `bool bFilterLowSpanSequences [if set, only single low height span will be allowed under valid one]`
- `bool bFixedTilePoolSize [if true, the NavMesh will allocate fixed size pool for tiles, should be enabled to support streaming]`
- `bool bGenerateNavLinks [Experimental: if set, navlinks will be automatically generated.
@see FNavLinkGenerationJumpConfig]`
- `bool bIsWorldPartitioned [In a world partitioned map, is this navmesh using world partitioning]`
- `bool bMarkLowHeightAreas [mark areas with insufficient free height above instead of cutting them out (accessible only for area modifiers using replace mode)]`
- `bool bPerformVoxelFiltering [controls whether voxel filtering will be applied (via FRecastTileGenerator::ApplyVoxelFilter).
    Results in generated navmesh better fitting navigation bounds, but hits (a bit) generation performance]`
- `bool bSortNavigationAreasByCost [Controls whether Navigation Areas will be sorted by cost before application
    to navmesh during navmesh generation. This is relevant when there are
    areas overlapping and we want to have area cost express area relevancy
    as well. Setting it to true will result in having area sorted by cost,
    but it will also increase navmesh generation cost a bit]`
- `bool bUseExtraTopCellWhenMarkingAreas [Expand the top of the area nav modifier's bounds by one cell height when applying to the navmesh.
              If unset, navmesh on top of surfaces might not be marked by marking bounds flush with top surfaces (since navmesh is generated slightly above collision, depending on cell height).]`


**方法**:

- `bool ReplaceAreaInTileBounds(FBox Bounds, TSubclassOf<UNavArea> OldArea, TSubclassOf<UNavArea> NewArea, bool ReplaceLinks = true)`  
  @return true if any polygon/link has been touched

---

