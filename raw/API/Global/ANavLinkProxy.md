### ANavLinkProxy


ANavLinkProxy connects areas of Navmesh that don't have a direct navigation path.
It directly supports Simple Links (see PointLinks array). There can be multiple Simple links per ANavLinkProxy instance.
Simple links are designed to statically link areas of Navmesh and are associated with a particular area class that the link provides.
Smart Link functionality is provided via UNavLinkCustomComponent, see SmartLinkComp. They are designed to be able to be dynamically toggled
between enabled and disabled and provide different area classes for both cases. The area classes can be dynamically modified
without navmesh rebuilds.
There can only be at most one smart link per ANavLinkProxy instance.
Both simple and smart links on a single ANavLinkProxy instance, can be set / enabled at once, as well as either or neither of them.

**属性**:

- `FSmartLinkReachedSignature OnSmartLinkReached`
- `TArray<FNavigationLink> PointLinks [Navigation links (point to point) added to navigation data]`
- `UNavLinkCustomComponent SmartLinkComp [Smart link: can affect path following]`
- `bool bSmartLinkIsRelevant [Smart link: toggle relevancy]`


**方法**:

- `bool HasMovingAgents() const`  
  check if any agent is moving through smart link right now
- `bool IsSmartLinkEnabled() const`  
  check if smart link is enabled
- `SmartLinkReached(AActor Agent, FVector Destination)`  
  called when agent reaches smart link during path following, use ResumePathFollowing() to give control back
- `ResumePathFollowing(AActor Agent)`  
  resume normal path following
- `SetSmartLinkEnabled(bool bEnabled)`  
  change state of smart link

---

