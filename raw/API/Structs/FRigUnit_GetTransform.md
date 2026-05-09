### FRigUnit_GetTransform


GetTransform is used to retrieve a single transform from a hierarchy.

**属性**:

- `FRigElementKey Item [The item to retrieve the transform for]`
- `ERigVMTransformSpace Space [Defines if the transform should be retrieved in local or global space]`
- `FTransform Transform [The current transform of the given item - or identity in case it wasn't found.]`
- `bool bInitial [Defines if the transform should be retrieved as current (false) or initial (true).
Initial transforms for bones and other elements in the hierarchy represent the reference pose's value.]`


**方法**:

- `FRigUnit_GetTransform& opAssign(FRigUnit_GetTransform Other)`

---

