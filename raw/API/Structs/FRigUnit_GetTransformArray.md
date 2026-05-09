### FRigUnit_GetTransformArray


GetTransformArray is used to retrieve an array of transforms from the hierarchy.

**属性**:

- `FRigElementKeyCollection Items [The items to retrieve the transforms for]`
- `ERigVMTransformSpace Space [Defines if the transforms should be retrieved in local or global space]`
- `TArray<FTransform> Transforms [The current transform of the given item - or identity in case it wasn't found.]`
- `bool bInitial [Defines if the transforms should be retrieved as current (false) or initial (true).
Initial transforms for bones and other elements in the hierarchy represent the reference pose's value.]`


**方法**:

- `FRigUnit_GetTransformArray& opAssign(FRigUnit_GetTransformArray Other)`

---

