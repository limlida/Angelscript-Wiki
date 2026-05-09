### FNavigationSegmentLink


**属性**:

- `TSubclassOf<UNavAreaBase> AreaClass [Area type of this link (empty = default)]`
- `FString Description [this is an editor-only property to put descriptions in navlinks setup, to be able to identify it easier]`
- `ENavLinkDirection Direction`
- `FVector LeftEnd []`
- `float32 LeftProjectHeight [if greater than 0 nav system will attempt to project navlink's start point on geometry below]`
- `FVector LeftStart []`
- `float32 MaxFallDownLength [if greater than 0 nav system will attempt to project navlink's end point on geometry below]`
- `FVector RightEnd []`
- `FVector RightStart []`
- `float32 SnapHeight []`
- `float32 SnapRadius []`
- `FNavAgentSelector SupportedAgents [restrict link only to specified agents]`
- `bool bSnapToCheapestArea [If set, link will try to snap to the cheapest area in given radius]`
- `bool bUseSnapHeight`


**方法**:

- `FNavigationSegmentLink& opAssign(FNavigationSegmentLink Other)`

---

