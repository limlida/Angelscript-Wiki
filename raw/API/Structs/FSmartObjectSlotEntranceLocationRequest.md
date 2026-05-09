### FSmartObjectSlotEntranceLocationRequest


Struct used to request slot entry or exit location.

When used with actor, it is generally enough to set the UserActor. In that case NavigationData, ValidationFilter,
and UserCapsule are queried via the INavAgentInterface and USmartObjectUserComponent on the actor if they are _not_ set.

If the user actor is not available (e.g. with Mass), then ValidationFilter and UserCapsule must be defined, and if bProjectNavigationLocation is set NavigationData must be valid.

The location validation is done in following order:
 - navigation projection
 - trace ground location (uses altered location from navigation test if applicable)
 - check transition trajectory (test between unmodified navigation location and slow location)

**属性**:

- `ESmartObjectSlotNavigationLocationType LocationType [Enum indicating if we're looking for a location to enter or exit the smart object slot.]`
- `const ANavigationData NavigationData [Navigation data to use for the navigation queries. If not set and UserActor is valid, the navigation data is queried via INavAgentInterface.]`
- `FVector SearchLocation [Search location that may be used to select an entry from multiple candidates. (e.g. user actor location).]`
- `FSmartObjectSlotEntrySelectionMethod SelectMethod [How to select an entry when a slot has multiple entries.]`
- `const AActor UserActor [Actor that is using the smart object slot. (Optional)]`
- `FSmartObjectUserCapsuleParams UserCapsuleParams [Size of the user of the smart object. If not set and UserActor is valid, the dimensions are queried via INavAgentInterface.]`
- `TSubclassOf<USmartObjectSlotValidationFilter> ValidationFilter [Filter to use for the validation. If not set and UserActor is valid, the filter is queried via USmartObjectUserComponent.]`
- `bool bCheckEntranceLocationOverlap [If true, check user capsule collisions at the entrance location. Uses capsule dimensions set in the validation filter.]`
- `bool bCheckSlotLocationOverlap [If true, check user capsule collisions at the slot location. Uses capsule dimensions set in an annotation on the slot.]`
- `bool bCheckTransitionTrajectory [If true, check collisions between navigation location and slot location. If collisions are found, an entry is discarded.]`
- `bool bProjectNavigationLocation [If true, try to project the location on navigable area. If projection fails, an entry is discarded.]`
- `bool bTraceGroundLocation [If true, try to trace the location on ground. If trace fails, an entry is discarded.]`
- `bool bUseSlotLocationAsFallback [If true, include slot location as a candidate if no navigation annotation is present.]`
- `bool bUseUpAxisLockedRotation [If true, the result rotation will only contain rotation around the UP axis (i.e., Yaw only; Pitch and Roll set to 0).]`


**方法**:

- `FSmartObjectSlotEntranceLocationRequest& opAssign(FSmartObjectSlotEntranceLocationRequest Other)`

---

