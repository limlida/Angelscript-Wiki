### FNavigationMarkerSettings


**属性**:

- `FVector IconOffset [Add an offset in the actors space - more efficient than making markers scene components with a transform]`
- `FVector2D IconSize [The icons size on the compass, map, screen marker, whereever the icon is being used]`
- `FLinearColor IconTint [Tint for the icon]`
- `UTexture2D LocationIcon [The icon to use for this location]`
- `FText MarkerSubtitleText [The display name to use for this location]`
- `FText MarkerTitleText [The display name to use for this location]`
- `bool bOverride_IconOffset`
- `bool bOverride_IconSize`
- `bool bOverride_IconTint`
- `bool bOverride_LocationDisplayName`
- `bool bOverride_LocationIcon`
- `bool bOverride_bShowActorRotation`
- `bool bShowActorRotation [Whether this markers rotation should be shown on the map, for any navigator widgets that use this feature]`


**方法**:

- `FNavigationMarkerSettings& opAssign(FNavigationMarkerSettings Other)`

---

