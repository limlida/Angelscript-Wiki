### APOIActor


These actors easily allow designers to create POIs that show up on the map. They are also world partitioned and by default will become discovered
when your overlap them - so add any overlap volumes you want to your POI to define its discovery bounds.

**属性**:

- `UCapsuleComponent FastTravelCapsule [Used to define where fast travelling places our character]`
- `UArrowComponent FastTravelCapsuleArrow`
- `TArray<TSoftObjectPtr<APOIActor>> LinkedPOIs [POIs this POIActor is linked to - used when NPCs do high-level navigation.]`
- `FText POIDisplayName [The display name for this poi when we display it in the UI]`
- `UTexture2D POIIcon [The POI marker to display on the map]`
- `FGameplayTag POITag [The tag for this location]`
- `bool bCreateMapMarker [Whether this POI needs a map marker or not]`
- `bool bSupportsFastTravel [Whether this POI supports being fast travelled to or not]`

---

