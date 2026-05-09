### UContextualAnimSceneAsset


**属性**:

- `TArray<FContextualAnimAttachmentParams> AttachmentParams []`
- `EContextualAnimCollisionBehavior CollisionBehavior []`
- `TArray<FContextualAnimIgnoreChannelsParam> CollisionChannelsToIgnoreParams []`
- `FContextualAnimIKTargetParams IKTargetParams []`
- `TArray<FContextualAnimActorPreviewData> OverridePreviewData []`
- `FName PrimaryRole []`
- `float32 Radius []`
- `UContextualAnimRolesAsset RolesAsset []`
- `int SampleRate [Sample rate (frames per second) used when sampling the animations to generate alignment and IK tracks]`
- `TArray<FContextualAnimSceneSection> Sections []`
- `bool bDisableMovementReplicationForSimulatedProxy [Whether to disable movement replication during the interaction for simulated proxies (NPCs only).]`
- `bool bIgnoreClientMovementErrorChecksAndCorrection [Whether to ignore movement error checks and corrections during the interaction for player characters]`
- `bool bPrecomputeAlignmentTracks [Whether we should extract and cache alignment tracks off line.]`


**方法**:

- `UAnimSequenceBase FindAnimationForRole(int SectionIdx, int AnimSetIdx, FName Role) const`  
  Blueprint Interface
- `int FindAnimSetIndexByAnimation(int SectionIdx, const UAnimSequenceBase Animation) const`
- `FTransform GetAlignmentTransformForRoleRelativeToWarpPoint(int SectionIdx, int AnimSetIdx, FName Role, float32 Time) const`
- `FTransform GetIKTargetTransformForRoleAtTime(int SectionIdx, int AnimSetIdx, FName Role, FName TrackName, float32 Time) const`
- `GetStartAndEndTimeForWarpSection(int SectionIdx, int AnimSetIdx, FName Role, FName WarpSectionName, float32& OutStartTime, float32& OutEndTime) const`
- `GetAlignmentPointsForSecondaryRole(EContextualAnimPointType Type, int SectionIdx, FContextualAnimSceneBindingContext Primary, TArray<FContextualAnimPoint>& OutResult) const`
- `GetAlignmentPointsForSecondaryRoleConsideringSelectionCriteria(EContextualAnimPointType Type, int SectionIdx, FContextualAnimSceneBindingContext Primary, FContextualAnimSceneBindingContext Querier, EContextualAnimCriterionToConsider CriterionToConsider, TArray<FContextualAnimPoint>& OutResult) const`
- `bool Query(FName Role, FContextualAnimQueryResult& OutResult, FContextualAnimQueryParams QueryParams, FTransform ToWorldTransform) const`  
  @TODO: Kept around only to do not break existing content. It will go away in the future.

---

