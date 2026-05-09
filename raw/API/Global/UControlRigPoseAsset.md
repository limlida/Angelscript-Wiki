### UControlRigPoseAsset


An individual Pose made of Control Rig Controls

**属性**:

- `FControlRigControlPose Pose`


**方法**:

- `bool DoesMirrorMatch(UControlRig ControlRig, FName ControlName)`
- `TArray<FName> GetControlNames() const`
- `GetCurrentPose(UControlRig InControlRig, FControlRigControlPose& OutPose)`
- `PastePose(UControlRig InControlRig, bool bDoKey = false, bool bDoMirror = false, bool bDoAdditive = false)`
- `ReplaceControlName(FName CurrentName, FName NewName)`
- `SavePose(UControlRig InControlRig, bool bUseAll)`
- `SelectControls(UControlRig InControlRig, bool bDoMirror = false, bool bClearSelection = true)`
- `SetUpMirrorMatchTable(UControlRig InControlRig)`

---

