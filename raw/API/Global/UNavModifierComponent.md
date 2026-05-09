### UNavModifierComponent


**属性**:

- `TSubclassOf<UNavArea> AreaClass [NavArea to apply inside the defined volume.]`
- `TSubclassOf<UNavArea> AreaClassToReplace [When setting this value, the modifier behavior changes : it will now replace any surface marked by AreaClassToReplace in the volume and replace it with AreaClass.]`
- `FVector FailsafeExtent [box extent used ONLY when owning actor doesn't have collision component]`
- `ENavigationDataResolution NavMeshResolution [Experimental: Indicates which navmesh resolution should be used around the actor.]`
- `bool bIncludeAgentHeight [Setting to 'true' will result in expanding lower bounding box of the nav
    modifier by agent's height, before applying to navmesh]`


**方法**:

- `SetAreaClass(TSubclassOf<UNavArea> NewAreaClass)`
- `SetAreaClassToReplace(TSubclassOf<UNavArea> NewAreaClassToReplace)`

---

