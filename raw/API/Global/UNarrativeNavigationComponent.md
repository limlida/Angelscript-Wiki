### UNarrativeNavigationComponent


Add this to your PlayerController.

To enable navigation, add this to your controller, and you're away.

**属性**:

- `TArray<UCustomWaypointMarker> CustomWaypoints [Our custom waypoints that we've placed. These are serialized to disk. s]`
- `FGameplayTagContainer DiscoveredPOIs [Contains all the POI's we've found]`
- `FVector2D MapOrigin [What position in the world is the center of your map? Enter that position here. (ie where was the camera located that you took your map shot from)]`
- `AMapTileBounds MapTileBounds [The bounds we've found in the world, should one exist]`
- `TSet<UMapTileMarker> MapTiles [We cache map tiles seperately for quick access]`
- `float32 MapWidth [How many unreal units wide (cm) is your map image? Enter it here.]`
- `TArray<UMapMarker> Markers [All of the markers currently being tracked by this navigation component]`
- `int MaxCustomWaypoints [The max number of custom waypoints we're allowed to place in the world]`
- `FOnFastTravelRequested OnFastTravelRequested [Fires when a fast travel has been requested - each games fast travel implemtation may be game specific.]`
- `FOnMarkerAdded OnMarkerAdded [Fires when a marker is added to our navigation]`
- `FOnMarkerRemoved OnMarkerRemoved [Fires when a marker is removed from our navigation]`
- `FOnDiscoverPointOfInterest OnPOIDiscovered [Fires when a point of interest has been discovered, in case you want to add a message to the UI or something similar]`
- `TMap<FGameplayTag,FPOIData> POILookupMap [Quick lookup map for pois]`
- `TMap<FGameplayTag,UPOIMapMarker> POIMarkers [POI markers]`


**方法**:

- `bool AddMarker(UMapMarker MapMarker)`
- `DiscoverPOI(FGameplayTag POITag)`  
  Set a POI as having been "discovered" by the player
- `bool GetNearestPOIToPoint(FPOIData& OutPointOfInterest, FVector TestLocation)`  
  Find POI that is nearest to the given location
- `bool GetPointOfInterest(FPOIData& OutPointOfInterest, FGameplayTag POITag)`  
  Return a POI that has previously been cached.
- `bool HasDiscoveredPOI(FGameplayTag POITag) const`  
  Check if we've found the given POI in the world
- `UCustomWaypointMarker PlaceCustomWaypoint(FTransform Transform)`  
  Place a custom waypoint in the world at the given transform. bAddToSaveFile will ensure the marker is added to our save file
- `RemoveCustomWaypoint(UCustomWaypointMarker Waypoint)`  
  Place a custom waypoint in the world at the given transform. bAddToSaveFile will ensure the marker is added to our save file
- `bool RemoveMarker(UMapMarker MapMarker)`
- `SelectMarker(UMapMarker Marker)`
- `bool SetMapLayer(FGameplayTag NewLayer, FGameplayTagContainer Domains)`  
  Set the layer of this map tile for the given domains

---

