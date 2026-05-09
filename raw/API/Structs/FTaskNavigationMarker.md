### FTaskNavigationMarker


**属性**:

- `FVector ActorFallbackLocation [Will be used as a fallback location if the actor we're trying to put the marker on doesn't exist yet.]`
- `UNarrativeActorProvider MarkerAttachActorOverride [The marker will be attached to this actor if you set a valid actor here. Will override any actor that the task provides.]`
- `TSubclassOf<UMapMarker> MarkerClass [The map marker class to use]`
- `FLinearColor MarkerColor [Marker color]`
- `FText MarkerDisplayText [Text to use for the marker - if empty we'll just use the tasks description]`
- `FGameplayTagContainer MarkerDomains [What navigators to add this marker to]`
- `FVector MarkerLocation [The world location the marker will be placed at. If GetMarkerAttachActor returns a valid actor this will be treated as a relative location instead of a world one.]`
- `FText MarkerSubtitleText [Subtitle to use for the marker.]`
- `UTexture2D NavigationMarkerIcon [Icon to use for navigation marker. If empty will just use default]`
- `bool bAddNavigationMarker [Should we add a navigation marker to the world for the duration of this task]`
- `bool bDrawBreadcrumbs [Should the navigation marker draw breadcrumbs]`


**方法**:

- `FTaskNavigationMarker& opAssign(FTaskNavigationMarker Other)`

---

