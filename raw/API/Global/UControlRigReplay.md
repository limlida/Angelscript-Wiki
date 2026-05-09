### UControlRigReplay


**属性**:

- `FSoftObjectPath ControlRigObjectPath []`
- `FText Description`
- `bool EnableTest`
- `TArray<int> FramesToSkip`
- `FSoftObjectPath PreviewSkeletalMeshObjectPath []`
- `float Tolerance`
- `bool bValidateHierarchyTopology`
- `bool bValidateMetadata`
- `bool bValidatePose`
- `bool bValidateVariables`


**方法**:

- `EControlRigReplayPlaybackMode GetPlaybackMode() const`
- `FVector2D GetTimeRange() const`
- `bool IsPaused() const`
- `bool IsRecording() const`
- `bool IsReplaying() const`
- `bool PauseReplay()`
- `SetPlaybackMode(EControlRigReplayPlaybackMode InMode)`
- `bool StartRecording(UControlRig InControlRig)`
- `bool StartReplay(UControlRig InControlRig, EControlRigReplayPlaybackMode InMode = EControlRigReplayPlaybackMode :: ReplayInputs)`
- `bool StopRecording()`
- `bool StopReplay()`

---

