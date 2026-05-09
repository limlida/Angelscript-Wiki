### FNDCAccessContext_GameplayBurst


Access Context for Gameplay Burst NDC.

**属性**:

- `FVector CellSizeOverride [An override for the Cell Size used for internal data routing.
Caution:
Every unique cell size value will create a new data bucket and handler Niagara System.
Use with care. Overriding cell size provides more flexibility for users but can cause problems if not done correctly.]`
- `FGameplayTag GameplayTag [Data can optionally be routed by a given Gameplay Tag for additional variation.]`
- `FVector Location [In cases where there is no owning component for data being read or written to a data channel, we simply pass in a location. We can also use this when bOverrideLocaiton is set.]`
- `USceneComponent OwningComponent []`
- `TArray<FNDCSpawnedSystemRef> SpawnedSystems [The Niagara System spawned in response to this access, if any. Allows callers to set parameters etc on this system. It is not safe to store and use this component reference later. It can be reclaimed by the system at any time.]`
- `FVector SystemBoundsPadding [Padding applied to the bounds of spawned handler systems.
Should be large enough to contain any spawned FX near the edge of a grid cell.
When systems are attached to the owning component, bounds are the component bounds + SystemBoundsPadding.]`
- `UObject SystemToSpawn`
- `bool bAttachedToOwningComponent [Flag set during the access that indicates whether the spawned systems are attached to the owning component.]`
- `bool bForceAttachToOwningComponent [If true, we will attempt to attach to the owning component if one exists. Ignoring other attachment settings.]`
- `bool bOverrideBoundsPadding [If true the SystemBoundsPadding in the context will override the bounds padding defind in the NDC.]`
- `bool bOverrideCellSize [If true, we will override the default grid Cell Size from the Data Channel.
Caution:
Every unique cell size value will create a new data bucket and handler Niagara System.
Use with care. Overriding cell size provides more flexibility for users but can cause problems if not done correctly.]`
- `bool bOverrideLocation [If true, even if an owning component is set, the data channel should use the Location value rather than the component location. If this is false, the NDC will get any location needed from the owning component.]`
- `bool bOverrideSystemToSpawn [If true, we'll override the system to spawn for this NDC write. If false, we'll use the system defined in the NDC asset, if there is one.]`


**方法**:

- `FNDCAccessContext_GameplayBurst& opAssign(FNDCAccessContext_GameplayBurst Other)`

---

