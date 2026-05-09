### FAnimNode_BlendListByBool


This node is effectively a 'branch', picking one of two input poses based on an input Boolean value

**属性**:

- `TArray<FPoseLink> BlendPose []`
- `UBlendProfile BlendProfile []`
- `UBlendProfile BlendProfileForFalse [Used in conjunction with bUseSeperateBlendProfileForFalse]`
- `TArray<float32> BlendTime []`
- `EAlphaBlendOption BlendType []`
- `EBlendListChildUpdateMode ChildUpateMode []`
- `UCurveFloat CustomBlendCurve []`
- `EBlendListTransitionType TransitionType []`
- `bool bActiveValue [Which input should be connected to the output?]`
- `bool bUseSeperateBlendProfileForFalse [Specify whether to use a different blend profile for the 'false' branch than the true branch.
      *
      * If bUseSeperateBlendProfileForFalse is false (default), then the 'BlendProfile' is used when ActiveValue is both true or false
      * If bUseSeperateBlendProfileForFalse is true, then the 'BlendProfileForFalse' value is used when the ActiveValue is false, but 'BlendProfile' is used when ActiveValue is true]`


**方法**:

- `FAnimNode_BlendListByBool& opAssign(FAnimNode_BlendListByBool Other)`

---

