### UMotionWarpingComponent


**属性**:

- `FMotionWarpingPreUpdate OnPreUpdate [Event called before Root Motion Modifiers are updated]`
- `bool bSearchForWindowsInAnimsWithinMontages [Whether to look inside animations within montage when looking for warping windows]`


**方法**:

- `AddOrUpdateWarpTarget(FMotionWarpingTarget WarpTarget)`  
  Adds or update a warp target
- `AddOrUpdateWarpTargetFromComponent(FName WarpTargetName, const USceneComponent Component, FName BoneName, bool bFollowComponent, EWarpTargetLocationOffsetDirection LocationOffsetDirection = EWarpTargetLocationOffsetDirection :: TargetsForwardVector, FVector LocationOffset = FVector ( ), FRotator RotationOffset = FRotator ( ))`  
  Create and adds or update a target associated with a specified name
@param WarpTargetName Warp target identifier
@param Component Scene Component used to get the target transform
@param BoneName Optional bone or socket in the component used to get the target transform.
@param bFollowComponent Whether the target transform should update while the warping is active. Useful for tracking moving targets.
               Note that this will be one frame off if our owner ticks before the target actor. Add tick pre-requisites to avoid this.
@param LocationOffsetDirection Direction of LocationOffset
@param LocationOffset Optional translation offset to apply to the transform we get from the component
@param RotationOffset Optional rotation offset to apply to the transform we get from the component
- `AddOrUpdateWarpTargetFromLocation(FName WarpTargetName, FVector TargetLocation)`  
  Create and adds or update a target associated with a specified name
@param WarpTargetName Warp target identifier
@param TargetLocation Location for the warp target
- `AddOrUpdateWarpTargetFromLocationAndRotation(FName WarpTargetName, FVector TargetLocation, FRotator TargetRotation)`  
  Create and adds or update a target associated with a specified name
@param WarpTargetName Warp target identifier
@param TargetLocation Location for the warp target
- `AddOrUpdateWarpTargetFromTransform(FName WarpTargetName, FTransform TargetTransform)`  
  Create and adds or update a target associated with a specified name
@param WarpTargetName Warp target identifier
@param TargetTransform Transform used to set the location and rotation for the warp target
- `AddSwitchOffCondition(FName WarpTargetName, UMotionWarpingSwitchOffCondition Condition)`
- `DisableAllRootMotionModifiers()`  
  Mark all the modifiers as Disable
- `int RemoveAllWarpTargets()`  
  Removes all warp targets
- `int RemoveWarpTarget(FName WarpTargetName)`  
  Removes the warp target associated with the specified key
- `int RemoveWarpTargets(TArray<FName> WarpTargetNames)`  
  Removes multiple warp targets

---

