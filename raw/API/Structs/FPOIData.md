### FPOIData


**属性**:

- `TArray<FGameplayTag> LinkedPOIs [The POIs we're linked to - this is considered by the high level navigation graph]`
- `UTexture2D MapMarkerIcon [The POI marker to display on the map]`
- `FText POIDisplayName [The display name the POI should show, for example if we discover a POI.]`
- `FTransform POIFastTravelSpot [Transform fast travelling to the POI should drop us at.]`
- `FVector POILocation [Fixed location the POI can refer to - useful for POIs that don't move around.]`
- `FText POISubtitle [The subtitle for the POI on the map]`
- `FGameplayTag POITag [The POI Tag ID]`
- `bool bIsDiscoverable [Whether the POI is considered discoverable, like a city, camp, etc. Icon will be greyed out until POI is discovered.]`
- `bool bNeedsMapMarker [Whether the POI needs a map marker or if it just exists as data.]`
- `bool bSupportsFastTravel [Whether the POI supports being fast travelled to]`


**方法**:

- `FPOIData& opAssign(FPOIData Other)`

---

