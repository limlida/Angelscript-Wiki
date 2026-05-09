### FSmartObjectSlotValidationParams


Parameters for Smart Object navigation and collision validation.

**属性**:

- `FSmartObjectTraceParams GroundTraceParameters [Trace parameters used for finding navigation location on ground.]`
- `TSubclassOf<UNavigationQueryFilter> NavigationFilter [Navigation filter used to validate entrance locations.]`
- `FVector SearchExtents [How far we allow the validated location to be from the specified navigation location.]`
- `FSmartObjectTraceParams TransitionTraceParameters [Trace parameters user for checking if the transition between navigation location and slot is unblocked.]`
- `FSmartObjectUserCapsuleParams UserCapsule [Dimensions of the capsule used for testing if user can fit into a specific location.
If bUseNavigationCapsuleSize is set, the capsule size from the Actor navigation settings is used if the actor is present (otherwise we fallback to the UserCapsule).]`
- `bool bUseNavigationCapsuleSize [If true, the capsule size is queried from the user actor via INavAgentInterface.]`


**方法**:

- `FSmartObjectSlotValidationParams& opAssign(FSmartObjectSlotValidationParams Other)`

---

