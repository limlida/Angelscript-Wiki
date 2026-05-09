### FMarkerSyncAnimPosition


Represent a current play position in an animation
based on sync markers

**属性**:

- `FName NextMarkerName [The marker we are heading towards]`
- `float32 PositionBetweenMarkers [Value between 0 and 1 representing where we are:
      0   we are at PreviousMarker
      1   we are at NextMarker
      0.5 we are half way between the two]`
- `FName PreviousMarkerName [The marker we have passed]`


**方法**:

- `FMarkerSyncAnimPosition& opAssign(FMarkerSyncAnimPosition Other)`

---

