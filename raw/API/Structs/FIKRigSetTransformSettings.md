### FIKRigSetTransformSettings


**属性**:

- `float32 Alpha [Blend the total effect on/off. Range is 0-1. Default is 1.0.]`
- `FName BoneToAffect [The bone to affect]`
- `FName Goal [The goal used to affect the bone transform]`
- `float32 PositionAlpha [Blend the translation on/off. Range is 0-1. Default is 1.0.]`
- `float32 RotationAlpha [Blend the rotation on/off. Range is 0-1. Default is 1.0.]`
- `bool bPropagateToChildren [If true, the transform modification will propagate to the hierarchy below the target bone.]`


**方法**:

- `FIKRigSetTransformSettings& opAssign(FIKRigSetTransformSettings Other)`

---

