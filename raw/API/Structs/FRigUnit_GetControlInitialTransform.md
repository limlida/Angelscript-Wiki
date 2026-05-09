### FRigUnit_GetControlInitialTransform


GetControlTransform is used to retrieve a single transform from a hierarchy.

**属性**:

- `FName Control [The name of the Control to retrieve the transform for.]`
- `ERigVMTransformSpace Space [Defines if the Control's transform should be retrieved
in local or global space.]`
- `FTransform Transform [The current transform of the given bone - or identity in case it wasn't found.]`


**方法**:

- `FRigUnit_GetControlInitialTransform& opAssign(FRigUnit_GetControlInitialTransform Other)`

---

