### FRigUnit_GetBoneTransform


GetBoneTransform is used to retrieve a single transform from a hierarchy.

**属性**:

- `FName Bone [The name of the Bone to retrieve the transform for.]`
- `ERigVMTransformSpace Space [Defines if the bone's transform should be retrieved
in local or global space.]`
- `FTransform Transform [The current transform of the given bone - or identity in case it wasn't found.]`


**方法**:

- `FRigUnit_GetBoneTransform& opAssign(FRigUnit_GetBoneTransform Other)`

---

