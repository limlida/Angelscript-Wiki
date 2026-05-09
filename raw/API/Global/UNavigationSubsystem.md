### UNavigationSubsystem


Subsystem for navigator, at the moment just used for caching POIs.

**属性**:

- `AMapTileBounds MapTileBounds [The bounds we've found in the world, should one exist]`
- `TMap<FGameplayTag,FPOIData> POILookupMap [Quick lookup map for pois]`


**方法**:

- `bool GetPointOfInterest(FPOIData& OutPointOfInterest, FGameplayTag POITag)`  
  Return a POI that has previously been cached.

---

