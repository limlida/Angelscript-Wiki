### ULODSyncComponent


Implement an Actor component for LOD Sync of different components

This is a component that allows multiple different components to sync together of their LOD

This allows to find the highest LOD of all the parts, and sync to that LOD

**属性**:

- `TArray<FComponentSync> ComponentsToSync [Array of components whose LOD may drive or be driven by this component.
Components that are flagged as 'Drive' are treated as being in priority order, with the last component having highest priority. The highest priority
visible component will set the LOD for all other components. If no components are visible, then the highest priority non-visible component will set LOD.]`
- `TMap<FName,FLODMappingData> CustomLODMapping [by default, the mapping will be one to one
but if you want custom, add here.]`
- `int ForcedLOD [if -1, it's automatically switching]`
- `int MinLOD [Minimum LOD to use when syncing components]`
- `int NumLods [if -1, it's default and it will calculate the max number of LODs from all sub components
if not, it is a number of LODs (not the max index of LODs)]`


**方法**:

- `FString GetLODSyncDebugText() const`  
  Returns a string detailing

---

