### UNavLinkCustomComponent


Encapsulates NavLinkCustomInterface interface, can be used with Actors not relevant for navigation

Additional functionality:
- can be toggled
- can create obstacle area for easier/forced separation of link end points
- can broadcast state changes to nearby agents

**属性**:

- `ECollisionChannel BroadcastChannel [trace channel for state change broadcast]`
- `float32 BroadcastInterval [interval for state change broadcast (0 = single broadcast)]`
- `float32 BroadcastRadius [radius of state change broadcast]`
- `TSubclassOf<UNavArea> DisabledAreaClass [area class to use when link is disabled]`
- `TSubclassOf<UNavArea> EnabledAreaClass [area class to use when link is enabled]`
- `ENavLinkDirection LinkDirection [direction of link]`
- `FVector LinkRelativeEnd [end point, relative to owner]`
- `FVector LinkRelativeStart [start point, relative to owner]`
- `TSubclassOf<UNavArea> ObstacleAreaClass [area class for simple box obstacle]`
- `FVector ObstacleExtent [extent of simple box obstacle]`
- `FVector ObstacleOffset [offset of simple box obstacle]`
- `FNavAgentSelector SupportedAgents [restrict area only to specified agents]`
- `bool bCreateBoxObstacle [if set, box obstacle area will be added to generation]`
- `bool bLinkEnabled [is link currently in enabled state? (area class)]`
- `bool bNotifyWhenDisabled [should link notify nearby agents when it changes state to disabled]`
- `bool bNotifyWhenEnabled [should link notify nearby agents when it changes state to enabled]`

---

