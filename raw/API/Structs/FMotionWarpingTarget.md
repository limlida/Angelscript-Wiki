### FMotionWarpingTarget


Represents a point of alignment in the world

**属性**:

- `TWeakObjectPtr<const AActor> AvatarActor [Optional Actor that uses this warping target. Used for offset calculation of target transform is provided via component]`
- `FName BoneName [Optional bone name in the component used to calculate the final target transform]`
- `TWeakObjectPtr<const USceneComponent> Component [Optional component used to calculate the final target transform]`
- `FVector Location [When the warp target is created from a component this stores the location of the component at the time of creation, otherwise its the location supplied by the user]`
- `FVector LocationOffset [Optional static location offset. Only relevant when the warp target is created from a component]`
- `EWarpTargetLocationOffsetDirection LocationOffsetDirection [Determines how LocationOffset is applied by FMotionWarpingTarget when calculating a target transform
      Only relevant when the warp target is created from a component]`
- `FName Name [Unique name for this warp target]`
- `FRotator Rotation [When the warp target is created from a component this stores the rotation of the component at the time of creation, otherwise its the rotation supplied by the user]`
- `FRotator RotationOffset [Optional static rotation offset. Only relevant when the warp target is created from a component]`
- `bool bFollowComponent [Whether the target transform calculated from a component and an optional bone should be updated during the warp
      Only relevant when the warp target is created from a component]`


**方法**:

- `FMotionWarpingTarget& opAssign(FMotionWarpingTarget Other)`

---

