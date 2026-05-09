### UZoneGraphTestingComponent


Actor for testing ZoneGraph functionality.

**属性**:

- `float32 AdvanceDistance []`
- `TArray<TObjectPtr<UZoneLaneTest>> CustomTests []`
- `FVector NearestTestOffset []`
- `AZoneGraphTestingActor OtherActor []`
- `FZoneGraphTagFilter QueryFilter []`
- `FVector SearchExtent []`
- `bool bDrawBVTreeQuery []`
- `bool bDrawLanePath [Experimental]`
- `bool bDrawLaneSmoothing []`
- `bool bDrawLaneTangentVectors []`
- `bool bDrawLinkedLanes []`


**方法**:

- `DisableCustomTests()`  
  Prevent custom tests to be notified when lane location is updated. Currently active tests will get notified with an invalid location.
- `EnableCustomTests()`  
  Allow custom tests to be notified when lane location is updated.

---

