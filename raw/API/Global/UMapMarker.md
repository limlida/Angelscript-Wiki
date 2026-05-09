### UMapMarker


Base class for a navigation marker in Narrative Navigator.

**属性**:

- `AActor ActorOwner [The actor this marker represents]`
- `FLinearColor BreadcrumbColor [The color of the bread crumb trail]`
- `float32 BreadcrumbDashLength [The dash length (in pixels) of the breadcrumb trail]`
- `float32 BreadcrumbThickness [The thickness of the breadcrumb trail]`
- `FNavigationMarkerSettings CompassOverrideSettings [If the compass needs any settings changed from the defaults, override them in here!]`
- `FText DefaultMarkerActionText [Text the marker should show as its action text in the world map when hovered]`
- `FNavigationMarkerSettings DefaultMarkerSettings [The properties the navigation marker should use]`
- `float32 DistanceBetweenPoints [The distance between points to use when querying the nav path spline]`
- `FGameplayTagContainer MarkerDomain [What navigation widgets will this navigation marker show up on?]`
- `float32 MarkerStartFadeInDistance [Compass - only The distance at which we the compass begins to fade the marker in]`
- `float32 MarkerStartFadeOutDistance [Compass only - The distance at which the compass begins to fade the marker out]`
- `FTransform MarkerTransform [Where the marker should show up in the world]`
- `FNavigationMarkerSettings MinimapOverrideSettings [If the minimap needs any settings changed from the defaults, override them in here!]`
- `FOnRefreshRequired OnRefreshRequired`
- `FOnSelected OnSelected [Called when the marker is selected in the world map]`
- `FNavigationMarkerSettings ScreenspaceOverrideSettings [If the screen space marker need any settings changed from the defaults, override them in here!]`
- `float UpdateNavDistanceThreshhold [The distance threshhold in which we will regenerate the breadcrumb path]`
- `float32 UpdateNavPathRate [The rate that we check for breadcrumb nav path updates]`
- `FNavigationMarkerSettings WorldMapOverrideSettings [If the world map needs any settings changed from the defaults, override them in here!]`
- `int ZOrder [ZOrder UI should draw marker on. greater = higher priority]`
- `bool bDrawBreadcrumbs [Whether we draw breadcrumbs on the UI]`
- `bool bPinToMapEdge [Whether this marker should always be on the edge of the map, rather than going beyond the maps border]`
- `bool bWantsOnPaint [If true, MarkerOnPaint is called]`


**方法**:

- `AddDomains(FGameplayTagContainer NewMarkerDomains)`  
  addd domains
- `bool CanInteract(UNarrativeNavigationComponent Selector) const`  
  Handle what the marker should be clickable or hoverable, or if it is just an icon with no interaction
- `FText GetMarkerActionText(UNarrativeNavigationComponent Selector) const`  
  Text for what happens when we click on the marker
- `FLinearColor GetMarkerColor(UNarrativeNavigationComponent Selector, FGameplayTag NavigatorType) const`  
  Display color for the marker, override if you need dynamic
- `FText GetMarkerDisplayText(UNarrativeNavigationComponent Selector, FGameplayTag NavigatorType, FText& OutSubtitleText) const`  
  Display text for the marker, override if you need dynamic
- `FVector2D GetMarkerMapLocalPosition(FVector2D MapOrigin, FVector2D MapPan) const`  
  Gets the position of the marker in map space
- `FNavigationMarkerSettings GetMarkerSettings(FGameplayTag NavigatorType) const`  
  Grab the settings for the nav marker and any overrides - this is just called once on init for marker icons
- `FVector2D GetMarkerTopLeftLocalPosition(FMarkerOnPaintData& OnPaintData) const`  
  Gets the position of the marker in local paint space
- `FTransform GetMarkerTransform() const`  
  Gets the transform of the marker
- `int GetMarkerZOrder() const`  
  Gets the desired Zorder of the marker
- `MarkerOnPaint(FPaintContext& Context, FMarkerOnPaintData& OnPaintData) const`  
  when bWantsOnPaint is true, this function is called
- `OnMarkerAdded(UNarrativeNavigationComponent OwnerNavComp)`
- `OnMarkerRemoved(UNarrativeNavigationComponent OwnerNavComp)`
- `OnSelect(UNarrativeNavigationComponent Selector)`  
  Handle what the marker should do when clicked in the map
- `RefreshMarker()`  
  Call this function whenever you've changed some settings on the marker! It will inform the UI widgets they need to refresh themselves.
- `RegisterMarker()`  
  Add or remove the marker from all navigators. To remove from a specific navigator, use the Add/RemoveDomain functions.
- `RemoveDomains(FGameplayTagContainer RemoveDomains)`  
  remove domains
- `RemoveMarker()`
- `SetDefaultDomains(FGameplayTagContainer NewMarkerDomain)`
- `SetDomains(FGameplayTagContainer NewMarkerDomain)`  
  Check if this marker should be shown in the given location
- `SetDrawBreadcrumbs(bool bCanDrawBreadcrumbs)`  
  Changes whether we apply breadcrumbs for this MapMarker
- `SetDrawMarkerPathEnabled(bool Enabled)`
- `SetZOrder(int NewZOrder)`

---

