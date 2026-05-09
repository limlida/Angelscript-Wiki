### AHierarchicalLODVolume


An invisible volume used to manually define/create an HLOD cluster.

**属性**:

- `TArray<int> ApplyOnlyToSpecificHLODLevels [If set, this volume will only be applied to HLOD levels contained in the array.  If empty, it will apply to ALL HLOD levels]`
- `bool bIncludeOverlappingActors [When set this volume will incorporate actors which bounds overlap with the volume, otherwise only actors which are completely inside of the volume are incorporated]`

---

