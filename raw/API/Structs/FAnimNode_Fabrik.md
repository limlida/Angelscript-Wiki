### FAnimNode_Fabrik


Controller which implements the FABRIK IK approximation algorithm -  see http://www.academia.edu/9165835/FABRIK_A_fast_iterative_solver_for_the_Inverse_Kinematics_problem for details

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `EBoneRotationSource EffectorRotationSource []`
- `FBoneSocketTarget EffectorTarget [If EffectorTransformSpace is a bone, this is the bone to use. *]`
- `FTransform EffectorTransform [Coordinates for target location of tip bone - if EffectorLocationSpace is bone, this is the offset from Target Bone to use as target location]`
- `EBoneControlSpace EffectorTransformSpace [Reference frame of Effector Transform.]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `int MaxIterations [Maximum number of iterations allowed, to control performance.]`
- `float32 Precision [Tolerance for final tip location delta from EffectorLocation]`
- `FBoneReference RootBone [Name of the root bone]`
- `FBoneReference TipBone [Name of tip bone]`
- `bool bAlphaBoolEnabled`
- `bool bEnableDebugDraw [Toggle drawing of axes to debug joint rotation]`


**方法**:

- `FAnimNode_Fabrik& opAssign(FAnimNode_Fabrik Other)`

---

