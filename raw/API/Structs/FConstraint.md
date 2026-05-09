### FConstraint


Constraint Set up

**属性**:

- `EConstraintOffsetOption OffsetOption [Maintain offset based on refpose or not.

None - no offset
Offset_RefPose - offset is created based on reference pose

In the future, we'd like to support custom offset, not just based on ref pose]`
- `FFilterOptionPerAxis PerAxis [Per axis filter options - applied in their local space not in world space]`
- `FBoneReference TargetBone [Target Bone this is constraint to]`
- `ETransformConstraintType TransformType [What transform type is constraint to - Translation, Rotation, Scale OR Parent. Parent overrides all component]`


**方法**:

- `FConstraint& opAssign(FConstraint Other)`

---

