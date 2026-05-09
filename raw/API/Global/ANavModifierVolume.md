### ANavModifierVolume


Allows applying selected AreaClass to navmesh, using Volume's shape

**属性**:

- `TSubclassOf<UNavArea> AreaClass [NavArea to apply inside the defined volume.]`
- `TSubclassOf<UNavArea> AreaClassToReplace [When setting this value, the modifier volume behavior changes : it will now replace any surface marked by AreaClassToReplace in the volume and replace it with AreaClass.]`
- `ENavigationDataResolution NavMeshResolution [Experimental: When not set to None, the navmesh tiles touched by the navigation modifier volume will be built
using the highest resolution found.]`
- `bool bMaskFillCollisionUnderneathForNavmesh [Experimental: if set, the 2D space occupied by the volume box will ignore FillCollisionUnderneathForNavmesh]`


**方法**:

- `SetAreaClass(TSubclassOf<UNavArea> NewAreaClass = nullptr)`
- `SetAreaClassToReplace(TSubclassOf<UNavArea> NewAreaClassToReplace = nullptr)`

---

