### UNavigationSystemV1


**属性**:

- `float32 ActiveTilesUpdateInterval [Minimal time, in seconds, between active tiles set update]`
- `TSoftClassPtr<UCrowdManagerBase> CrowdManagerClass`
- `ENavDataGatheringModeConfig DataGatheringMode [Sets how navigation data should be gathered when building collision information]`
- `FName DefaultAgentName [If not None indicates which of navigation datas and supported agents are
going to be used as the default ones. If navigation agent of this type does
not exist or is not enabled then the first available nav data will be used
as the default one]`
- `float32 DirtyAreaWarningSizeThreshold [-1 by default, if set to a positive value dirty areas with any dimensions in 2d over the threshold created at runtime will be logged]`
- `float32 GatheringNavModifiersWarningLimitTime [-1.0f by default, if set to a positive value, all calls to GetNavigationData will be timed and compared to it.
     Over the limit calls will be logged as warnings.
     In seconds. Non-shipping build only.]`
- `int GeometryExportTriangleCountWarningThreshold [Warnings are logged if exporting the navigation collision for an object exceed this triangle count.
Use -1 to disable.]`
- `float InvokersMaximumDistanceFromSeed [When in use, invokers farther away from any invoker seed will be ignored (set to -1 to disable).]`
- `FOnNavDataGenericEvent OnNavigationGenerationFinishedDelegate`
- `TArray<FNavDataConfig> SupportedAgents [List of agents types supported by this navigation system]`
- `FNavAgentSelector SupportedAgentsMask [NavigationSystem's properties in Project Settings define all possible supported agents,
    but a specific navigation system can choose to support only a subset of agents. Set via
    NavigationSystemConfig]`
- `bool bAllowClientSideNavigation [If false, will not create nav collision when connecting as a client]`
- `bool bAutoCreateNavigationData [Should navigation system spawn default Navigation Data when there's none and there are navigation bounds present?]`
- `bool bGenerateNavigationOnlyAroundNavigationInvokers [If set to true navigation will be generated only around registered "navigation enforcers"
     This has a range of consequences (including how navigation octree operates) so it needs to
     be a conscious decision.
     Once enabled results in whole world being navigable.
     @see RegisterNavigationInvoker]`
- `bool bInitialBuildingLocked [if set to true will result navigation system not rebuild navigation until
    a call to ReleaseInitialBuildingLock() is called. Does not influence
    editor-time generation (i.e. does influence PIE and Game).
    Defaults to false.]`
- `bool bShouldDiscardSubLevelNavData [If true, games should ignore navigation data inside loaded sublevels]`
- `bool bSkipAgentHeightCheckWhenPickingNavData [false by default, if set to true will result in not caring about nav agent height
    when trying to match navigation data to passed in nav agent]`
- `bool bSpawnNavDataInNavBoundsLevel [If true will try to spawn the navigation data instance in the sublevel with navigation bounds, if false it will spawn in the persistent level]`
- `bool bTickWhilePaused [If true, will update navigation even when the game is paused]`


**方法**:

- `bool ReplaceAreaInOctreeData(const UObject Object, TSubclassOf<UNavArea> OldArea, TSubclassOf<UNavArea> NewArea)`
- `OnNavigationBoundsUpdated(ANavMeshBoundsVolume NavVolume)`  
  @todo document
- `RegisterNavigationInvoker(AActor Invoker, float32 TileGenerationRadius = 3000.000000, float32 TileRemovalRadius = 5000.000000)`  
  Registers given actor as a "navigation enforcer" which means navigation system will
    make sure navigation is being generated in specified radius around it.
    @note: you need NavigationSystem's GenerateNavigationOnlyAroundNavigationInvokers to be set to true
            to take advantage of this feature
- `ResetMaxSimultaneousTileGenerationJobsCount()`  
  Brings limit of simultaneous navmesh tile generation jobs back to Project Setting's default value
- `SetGeometryGatheringMode(ENavDataGatheringModeConfig NewMode)`
- `SetMaxSimultaneousTileGenerationJobsCount(int MaxNumberOfJobs)`  
  will limit the number of simultaneously running navmesh tile generation jobs to specified number.
    @param MaxNumberOfJobs gets trimmed to be at least 1. You cannot use this function to pause navmesh generation
- `UnregisterNavigationInvoker(AActor Invoker)`  
  Removes given actor from the list of active navigation enforcers.
    @see RegisterNavigationInvoker for more details

---

