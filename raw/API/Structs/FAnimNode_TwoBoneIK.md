### FAnimNode_TwoBoneIK


Simple 2 Bone IK Controller.

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `FVector EffectorLocation [Effector Location. Target Location to reach.]`
- `EBoneControlSpace EffectorLocationSpace [Reference frame of Effector Location.]`
- `FBoneSocketTarget EffectorTarget []`
- `FBoneReference IKBone [Name of bone to control. This is the main bone chain to modify from. *]`
- `FBoneSocketTarget JointTarget []`
- `FVector JointTargetLocation [Joint Target Location. Location used to orient Joint bone. *]`
- `EBoneControlSpace JointTargetLocationSpace [Reference frame of Joint Target Location.]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float MaxStretchScale [Limits to use if stretching is allowed. This value determins what is the max stretch scale. For example, 1.5 means it will stretch until 150 % of the whole length of the limb.]`
- `float StartStretchRatio [Limits to use if stretching is allowed. This value determines when to start stretch. For example, 0.9 means once it reaches 90% of the whole length of the limb, it will start apply.]`
- `FAxis TwistAxis [Specify which axis it's aligned. Used when removing twist]`
- `bool bAllowStretching [Should stretching be allowed, to be prevent over extension]`
- `bool bAllowTwist [Whether or not to apply twist on the chain of joints. This clears the twist value along the TwistAxis]`
- `bool bAlphaBoolEnabled`
- `bool bMaintainEffectorRelRot [Keep local rotation of end bone]`
- `bool bTakeRotationFromEffectorSpace [Set end bone to use End Effector rotation]`


**方法**:

- `FAnimNode_TwoBoneIK& opAssign(FAnimNode_TwoBoneIK Other)`

---

