### ANavigationTestingActor


**属性**:

- `ENavCostDisplay CostDisplayMode [determines which cost will be shown]`
- `float32 CostLimitFactor [this multiplier is used to compute a max node cost allowed to the open list
    (cost limit = CostLimitFactor*InitialHeuristicEstimate)]`
- `TSubclassOf<UNavigationQueryFilter> FilterClass ["None" will result in default filter being used. This filter is used by the PathFind and Raycast queries.]`
- `UNavigationInvokerComponent InvokerComponent []`
- `float32 MinimumCostLimit [minimum cost limit clamping value (in cost units)
    used to allow large deviation in short paths]`
- `FNavAgentProperties NavAgentProps [@todo document]`
- `float32 OffsetFromCornersDistance []`
- `ANavigationTestingActor OtherActor []`
- `float PathCost []`
- `int PathfindingSteps []`
- `float32 PathfindingTime [Time in micro seconds]`
- `FVector ProjectedLocation []`
- `AActor QueryTargetActor [Actor to use as a target for navigation data queries]`
- `FVector QueryingExtent []`
- `float32 RadiusUsedToValidateNavData [NavData must be ready for all tiles within radius. When using 0, NavData must be ready at the actor location.]`
- `int ShowStepIndex [Show debug steps up to this index. Use -1 to disable.]`
- `FVector2D TextCanvasOffset [text canvas offset to apply]`
- `bool bActAsNavigationInvoker`
- `bool bBacktracking [Instead of regular pathfinding from source to target location do
    a 'backwards' search that searches from the source, but as if the allowed
    movement direction was coming from the target. Meaningful only for paths
    containing one-direction nav links.]`
- `bool bDrawDistanceToWall`
- `bool bDrawIfNavDataIsReadyInRadius [If set, a cylinder is drawn to indicate if the navigation data is ready (has been generated) for the given radius (green when ready, red otherwise).]`
- `bool bDrawIfNavDataIsReadyToQueryTargetActor [If set, a capsule is drawn to indicate if the navigation data is ready (has been generated) for the given radius from the current actor to the query target (green when ready, red otherwise).]`
- `bool bDrawRaycastToQueryTargetActor [If set, a line is drawn to indicate to result of a ray cast on the navigation data between the current actor and the QueryTargetActor location
(red when there is a hit, green when there is no hit and the ray end is on the explored corridor, orange otherwise).]`
- `bool bGatherDetailedInfo [if set, all steps of A* algorithm will be accessible for debugging]`
- `bool bPathExist`
- `bool bPathIsPartial`
- `bool bPathSearchOutOfNodes`
- `bool bProjectedLocationValid`
- `bool bRequireNavigableEndLocation [if set, require the end location to be close to the navigation data. The tolerance is controlled by QueryingExtent]`
- `bool bSearchStart [if set, start the search from this actor, else start the search from the other actor]`
- `bool bShouldBeVisibleInGame`
- `bool bShowBestPath [show current best path]`
- `bool bShowDiffWithPreviousStep [show which nodes were modified in current A* step]`
- `bool bShowNodePool [show polys from open (orange) and closed (yellow) sets]`
- `bool bUseHierarchicalPathfinding`

---

