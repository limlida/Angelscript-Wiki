### FRigUnit_GetSpaceTransform


GetSpaceTransform is used to retrieve a single transform from a hierarchy.

**属性**:

- `FName Space [The name of the Space to retrieve the transform for.]`
- `ERigVMTransformSpace SpaceType [Defines if the Space's transform should be retrieved
in local or global space.]`
- `FTransform Transform [The current transform of the given bone - or identity in case it wasn't found.]`


**方法**:

- `FRigUnit_GetSpaceTransform& opAssign(FRigUnit_GetSpaceTransform Other)`

---

