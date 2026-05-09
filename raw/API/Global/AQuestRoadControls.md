### AQuestRoadControls


Controller for adjusting zonegraph lanes tags and other features at runtime.

**属性**:

- `FZoneGraphTagMask AllTags []`
- `FZoneGraphTagMask AnyTags []`
- `TArray<FIntersectionSideOverride> IntersectionSideOverrides [Defines the intersection sides that will be overriden when the quest road controls actor is active]`
- `FVector IntersectionSideQueryExtent [The query extent when searching for nearby intersection sides to override]`
- `int NewSpawnCount [Defines how many mass vehicles should be spawned within the box bounds]`
- `FZoneGraphTagMask NotTags []`
- `URoadControlAnnotationsComponent RoadControlAnnotationComponent []`
- `FGuid RoadControlsSaveGUID []`
- `FZoneGraphTagMask TagsToAdd [Tags that will be added to the overlapping lanes]`
- `bool bAutoActivate [Determines whether the road controls will automatically respawn vehicles on begin play]`


**方法**:

- `bool IsActive() const`  
  Returns whether the road controls actor is actively managing mass vehicle spawning
- `SetActive(bool bNewActive)`  
  Sets this quest road controls as active, this will automatically respawn mass vehicles

---

