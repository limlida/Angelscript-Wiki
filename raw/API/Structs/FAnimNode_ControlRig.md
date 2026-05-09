### FAnimNode_ControlRig


Animation node that allows animation ControlRig output to be used in an animation graph

**属性**:

- `float32 Alpha [alpha value handler]`
- `FInputAlphaBoolBlend AlphaBoolBlend []`
- `FName AlphaCurveName []`
- `EAnimAlphaInputType AlphaInputType []`
- `FInputScaleBias AlphaScaleBias []`
- `FInputScaleBiasClamp AlphaScaleBiasClamp []`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData []`
- `TSubclassOf<UControlRig> ControlRigClass [The class to use for the rig.]`
- `TArray<FControlRigAnimNodeEventName> EventQueue [The customized event queue to run]`
- `TArray<FBoneReference> InputBonesToTransfer [An inclusive list of bones to transfer as part
of the input pose transfer phase.
If this list is empty all bones will be transferred.]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `TArray<FBoneReference> OutputBonesToTransfer [An inclusive list of bones to transfer as part
of the output pose transfer phase.
If this list is empty all bones will be transferred.]`
- `FPoseLink Source []`
- `bool bAlphaBoolEnabled`
- `bool bResetInputPoseToInitial [If this is checked the rig's pose needs to be reset to its initial
prior to evaluating the rig.]`
- `bool bSetRefPoseFromSkeleton [Override the initial transforms with those taken from the mesh component]`
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

- `FAnimNode_ControlRig& opAssign(FAnimNode_ControlRig Other)`

---

