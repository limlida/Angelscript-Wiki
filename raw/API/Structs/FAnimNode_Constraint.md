### FAnimNode_Constraint


Constraint node to parent or world transform for rotation/translation

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FBoneReference BoneToModify [Name of bone to control. This is the main bone chain to modify from. *]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `TArray<FConstraint> ConstraintSetup [List of constraints]`
- `TArray<float32> ConstraintWeights [Weight data - post edit syncs up to ConstraintSetups]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `bool bAlphaBoolEnabled`


**方法**:

- `FAnimNode_Constraint& opAssign(FAnimNode_Constraint Other)`

---

