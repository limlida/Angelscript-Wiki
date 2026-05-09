### FRetargetProfile


**属性**:

- `TMap<FName,FTargetChainSettings> ChainSettings`
- `FRetargetGlobalSettings GlobalSettings`
- `TArray<FRetargetOpProfile> RetargetOpProfiles [A polymorphic list of override settings to apply to retargeting operations in the stack]`
- `FTargetRootSettings RootSettings`
- `FName SourceRetargetPoseName [Override the SOURCE Retarget Pose to use when this profile is active.
The pose must be present in the Retarget Asset and is not applied unless bApplySourceRetargetPose is true.]`
- `FName TargetRetargetPoseName [Override the TARGET Retarget Pose to use when this profile is active.
The pose must be present in the Retarget Asset and is not applied unless bApplyTargetRetargetPose is true.]`
- `bool bApplyChainSettings`
- `bool bApplyGlobalSettings`
- `bool bApplyRootSettings`
- `bool bApplySourceRetargetPose [If true, the Source Retarget Pose specified in this profile will be applied to the Retargeter (when plugged into the Retargeter).]`
- `bool bApplyTargetRetargetPose [If true, the TARGET Retarget Pose specified in this profile will be applied to the Retargeter (when plugged into the Retargeter).]`
- `bool bForceAllIKOff [Globally forces all IK solving off]`


**方法**:

- `FRetargetProfile& opAssign(FRetargetProfile Other)`

---

