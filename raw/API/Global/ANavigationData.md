### ANavigationData


Represents abstract Navigation Data (sub-classed as NavMesh, NavGraph, etc)
Used as a common interface for all navigation types handled by NavigationSystem

**属性**:

- `float32 ObservedPathsTickInterval [all observed paths will be processed every ObservedPathsTickInterval seconds]`
- `ERuntimeGenerationType RuntimeGeneration [Navigation data runtime generation options]`
- `bool bAutoDestroyWhenNoNavigation [Should this instance auto-destroy when there's no navigation system on
    world when it gets created/loaded]`
- `bool bCanBeMainNavData [If set, navigation data can act as default one in navigation system's queries]`
- `bool bEnableDrawing [if set to true then this navigation data will be drawing itself when requested as part of "show navigation"]`
- `bool bForceRebuildOnLoad [By default navigation will skip the first update after being successfully loaded
setting bForceRebuildOnLoad to false can override this behavior]`

---

