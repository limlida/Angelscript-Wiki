### AChaosCacheManager


**属性**:

- `UChaosCacheCollection CacheCollection [The Cache Collection asset to use for this observer. This can be used for playback and record simultaneously
across multiple components depending on the settings for that component.]`
- `ECacheMode CacheMode [How to use the cache - playback or record]`
- `TArray<FObservedComponent> ObservedComponents [List of observed objects and their caches]`
- `EStartMode StartMode [How to trigger the cache record or playback, timed will start counting at BeginPlay, Triggered will begin
counting from when the owning cache manager is requested to trigger the cache action
@see AChaosCacheManager::TriggerObservedComponent]`
- `float32 StartTime [Defines the (random access) time that represents the rest pose of the components managed by this cache.
When in Play mode, the components are set to the state provided by the caches at this evaluated time.]`
- `bool bCreateNewCacheCollectionAssetOnRecord [When on, each time the cache starts recording a new asset will be created as an increment of the previous one]`
- `bool bStartOnBeginPlay [if true, cache will start automatically on begin play ( playing or recording )
if false, the function Start must be used to tsrat the cache again ( and can be stopped again using Stop )]`


**方法**:

- `ClearObservedComponents(bool bDestroyComponents = true)`  
  Clear all the observed components
- `EnablePlayback(int Index, bool bEnable)`  
  Enable playback for a specific component using its index in the list of observed component
- `EnablePlaybackByCache(FName InCacheName, bool bEnable)`  
  Enable playback for a specific component using its cache name
- `FindOrAddObservedComponent(UPrimitiveComponent InComponent, FName CacheName = NAME_None, bool bTransferSimulationFlag = false)`  
  Find or add a primitive component to a cache manager
- `bool IsRecording() const`
- `RemoveObservedComponent(UPrimitiveComponent InComponent)`  
  Remove a primitive component from the cache manager
- `ResetAllComponentTransforms()`  
  Resets all components back to the world space transform they had when the cache for them was originally recorded
if one is available
- `ResetSingleTransform(int InIndex)`  
  Resets the component at the specified index in the observed list back to the world space transform it had when the
cache for it was originally recorded if one is available
@param InIndex Index of the component to reset
- `SetCacheCollection(UChaosCacheCollection InCacheCollection)`  
  change the cache collection for this player
if the cache is playing or recording this will have no effect
- `SetCurrentTime(float32 CurrentTime)`  
  Used to set the start time of the cache from a blueprint
Note this will be ignored for evaluating in Play mode ( for that case, make sure to use Start(time) instead as this will properly stop the physics thread evalution and restert it after setting the time )
- `Start(float32 InStartTime = 0.000000)`  
  * Start the cache evaluation at a specific time
* If the cache if already eveluating, stop it, set the time, then re-start
* only works when the cache is in Static Pose or Play mode
- `Stop()`  
  * stop the cache from eveluating
- `TriggerAll()`  
  Triggers the recording or playback of all observed components
- `TriggerComponent(UPrimitiveComponent InComponent)`  
  Triggers a component to play or record.
If the cache manager has an observed component entry for InComponent and it is a triggered entry
this will begin the playback or record for that component, otherwise no action is taken.
@param InComponent Component to trigger
- `TriggerComponentByCache(FName InCacheName)`  
  Triggers a component to play or record.
Searches the observed component list for an entry matching InCacheName and triggers the
playback or recording of the linked observed component
@param InCacheName Cache name to trigger

---

