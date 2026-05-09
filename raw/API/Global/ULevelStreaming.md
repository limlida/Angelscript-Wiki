### ULevelStreaming


Abstract base class of container object encapsulating data required for streaming and providing
interface for when a level should be streamed in and out of memory.

**属性**:

- `TArray<TObjectPtr<ALevelStreamingVolume>> EditorStreamingVolumes [The level streaming volumes bound to this level.]`
- `FLinearColor LevelColor [The level color used for visualization. (Show -> Advanced -> Level Coloration)]`
- `int LevelLODIndex [Requested LOD. Non LOD sub-levels have Index = -1]`
- `FTransform LevelTransform [Transform applied to actors after loading.]`
- `float32 MinTimeBetweenVolumeUnloadRequests [Cooldown time in seconds between volume-based unload requests.  Used in preventing spurious unload requests.]`
- `FLevelStreamingVisibilityStatus OnLevelHidden [Called when level is no longer visible, may not be removed from world yet]`
- `FLevelStreamingLoadedStatus OnLevelLoaded [Called when level is streamed in]`
- `FLevelStreamingVisibilityStatus OnLevelShown [Called when level is added to the world and is visible]`
- `FLevelStreamingLoadedStatus OnLevelUnloaded [Called when level is streamed out]`
- `int StreamingPriority [The relative priority of considering the streaming level. Changing the priority will not interrupt the currently considered level, but will affect the next time a level is being selected for evaluation.]`
- `TSoftObjectPtr<UWorld> WorldAsset [The reference to the world containing the level to load]`
- `bool bDisableDistanceStreaming [Whether this level streaming object should be ignored by world composition distance streaming,
so streaming state can be controlled by other systems (ex: in blueprints)]`
- `bool bDrawOnLevelStatusMap [If true, will be drawn on the 'level streaming status' map (STAT LEVELMAP console command)]`
- `bool bIsStatic [Whether this level only contains static actors that aren't affected by gameplay or replication.
If true, the engine can make certain optimizations and will add this level to the StaticLevels collection.]`
- `bool bShouldBeLoaded [Whether the level should be loaded]`
- `bool bShouldBeVisible [Whether the level should be visible if it is loaded]`
- `bool bShouldBlockOnLoad [Whether we want to force a blocking load]`
- `bool bShouldBlockOnUnload [Whether we want to force a blocking unload]`


**方法**:

- `ULevelStreaming CreateInstance(FString UniqueInstanceName)`  
  Creates a new instance of this streaming level with a provided unique instance name
- `bool GetIsRequestingUnloadAndRemoval() const`  
  Returns if the streaming level has requested to be unloaded and removed.
- `ULevel GetLoadedLevel() const`  
  Gets a pointer to the LoadedLevel value
- `FName GetWorldAssetPackageFName() const`  
  Gets the package name for the world asset referred to by this level streaming as an FName
- `bool IsLevelLoaded() const`  
  Returns whether streaming level is loaded
- `bool IsLevelVisible() const`  
  Returns whether streaming level is visible
- `bool IsStreamingStatePending() const`  
  Returns whether level has streaming state change pending
- `SetIsRequestingUnloadAndRemoval(bool bInIsRequestingUnloadAndRemoval)`  
  Sets if the streaming level should be unloaded and removed.
- `SetLevelLODIndex(int LODIndex)`  
  Sets the world composition level LOD index and marks the streaming level as requiring consideration.
- `SetPriority(int NewPriority)`  
  Sets the relative priority of considering the streaming level. Changing the priority will not interrupt the currently considered level, but will affect the next time a level is being selected for evaluation.
- `SetShouldBeLoaded(bool bInShouldBeLoaded)`  
  Virtual that can be overridden to change whether a streaming level should be loaded.
Doesn't do anything at the base level as should be loaded defaults to true
- `SetShouldBeVisible(bool bInShouldBeVisible)`  
  Sets the should be visible flag and marks the streaming level as requiring consideration.
- `bool ShouldBeLoaded() const`  
  Return whether this level should be present in memory which in turn tells the
streaming code to stream it in. Please note that a change in value from false
to true only tells the streaming code that it needs to START streaming it in
so the code needs to return true an appropriate amount of time before it is
needed.

@return true if level should be loaded/ streamed in, false otherwise
- `bool GetShouldBeVisibleInEditor() const`

---

