### FAnimNode_SpringBone


Simple controller that replaces or adds to the translation/rotation of a single bone.

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `float ErrorResetThresh [If spring stretches more than this, reset it. Useful for catching teleports etc]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float MaxDisplacement [If bLimitDisplacement is true, this indicates how long a bone can stretch beyond its length in the ref-pose.]`
- `FVector OwnerVelocityOverride []`
- `FBoneReference SpringBone [Name of bone to control. This is the main bone chain to modify from. *]`
- `float SpringDamping [Damping of spring]`
- `float SpringStiffness [Stiffness of spring]`
- `bool bAlphaBoolEnabled`
- `bool bLimitDisplacement [Limit the amount that a bone can stretch from its ref-pose length.]`
- `bool bOverrideOwnerVelocity [Option to override owner velocity used by spring controller.]`
- `bool bRotateX [If true take the spring calculation for rotation in X]`
- `bool bRotateY [If true take the spring calculation for rotation in Y]`
- `bool bRotateZ [If true take the spring calculation for rotation in Z]`
- `bool bTranslateX [If true take the spring calculation for translation in X]`
- `bool bTranslateY [If true take the spring calculation for translation in Y]`
- `bool bTranslateZ [If true take the spring calculation for translation in Z]`


**方法**:

- `FAnimNode_SpringBone& opAssign(FAnimNode_SpringBone Other)`

---

