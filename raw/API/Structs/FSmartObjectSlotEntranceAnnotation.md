### FSmartObjectSlotEntranceAnnotation


Annotation to define a entrance locations for a Smart Object Slot.
This can be used to add multiple entry points to a slot, or to validate the entries against navigation data.

**属性**:

- `FVector3f Offset [Local space offset of the entry.]`
- `FRotator3f Rotation [Local space rotation of the entry.]`
- `ESmartObjectEntrancePriority SelectionPriority [During entrance selection, the highest priority entrance is selected. If multiple entrances share same priority, then the selection method is used (e.g. based on distance).]`
- `FGameplayTagContainer Tags [Tags that can be used to identify the entry.]`
- `float32 TrajectorySlotHeightOffset [Height offset at slot location of the transition collision check.]`
- `float32 TrajectoryStartHeightOffset [Height offset at start of the transition collision check.]`
- `float32 TransitionCheckRadius [Radius of the transition trajectory check.]`
- `bool bCheckTransitionTrajectory [If set to true, collisions will be checked between the transition from navigation location and slot location.]`
- `bool bIsEntry [Set to true if the entry can be used to enter the slot.]`
- `bool bIsExit [Set to true if the entry can be used to exit the slot.]`
- `bool bTraceGroundLocation [If set to true, ground location will be adjusted using a line trace.]`


**方法**:

- `FSmartObjectSlotEntranceAnnotation& opAssign(FSmartObjectSlotEntranceAnnotation Other)`

---

