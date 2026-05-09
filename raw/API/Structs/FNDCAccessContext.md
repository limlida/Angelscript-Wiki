### FNDCAccessContext


Basic AccessContext type providing a little more utility than the base.
If you require more data than this you can subclass this or replace entirely and subclass FNDCAccessContextBase.

**属性**:

- `FVector Location [In cases where there is no owning component for data being read or written to a data channel, we simply pass in a location. We can also use this when bOverrideLocaiton is set.]`
- `USceneComponent OwningComponent []`
- `TArray<FNDCSpawnedSystemRef> SpawnedSystems [The Niagara System spawned in response to this access, if any. Allows callers to set parameters etc on this system. It is not safe to store and use this component reference later. It can be reclaimed by the system at any time.]`
- `UObject SystemToSpawn`
- `bool bOverrideLocation [If true, even if an owning component is set, the data channel should use the Location value rather than the component location. If this is false, the NDC will get any location needed from the owning component.]`
- `bool bOverrideSystemToSpawn [If true, we'll override the system to spawn for this NDC write. If false, we'll use the system defined in the NDC asset, if there is one.]`


**方法**:

- `FNDCAccessContext& opAssign(FNDCAccessContext Other)`

---

