### FAnimNode_ControlRigBase


Animation node that allows animation ControlRig output to be used in an animation graph

**属性**:

- `TArray<TObjectPtr<UAssetUserData>> AssetUserData []`
- `TArray<FControlRigAnimNodeEventName> EventQueue [The customized event queue to run]`
- `TArray<FBoneReference> InputBonesToTransfer [An inclusive list of bones to transfer as part
of the input pose transfer phase.
If this list is empty all bones will be transferred.]`
- `TArray<FBoneReference> OutputBonesToTransfer [An inclusive list of bones to transfer as part
of the output pose transfer phase.
If this list is empty all bones will be transferred.]`
- `FPoseLink Source []`
- `bool bResetInputPoseToInitial [If this is checked the rig's pose needs to be reset to its initial
prior to evaluating the rig.]`
- `bool bTransferInputCurves [If this is checked the curves coming from the AnimBP will be
transferred into the Control Rig.]`
- `bool bTransferInputPose [If this is checked the bone pose coming from the AnimBP will be
transferred into the Control Rig.]`
- `bool bTransferPoseInGlobalSpace [Transferring the pose in global space guarantees a global pose match,
while transferring in local space ensures a match of the local transforms.
In general transforms only differ if the hierarchy topology differs
between the Control Rig and the skeleton used in the AnimBP.
Note: Turning this off can potentially improve performance.]`


**方法**:

- `FAnimNode_ControlRigBase& opAssign(FAnimNode_ControlRigBase Other)`

---

