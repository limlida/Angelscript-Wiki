### FRigUnit_GetControlOffset


GetControlOffset is used to perform a change in the hierarchy by setting a single control's transform.
This is typically only used during the Construction Event.

**属性**:

- `FName Control [The name of the Control to set the transform for.]`
- `FTransform OffsetTransform [The current transform of the given item - or identity in case it wasn't found.]`
- `ERigVMTransformSpace Space [Defines if the transform should be retrieved in local or global space]`


**方法**:

- `FRigUnit_GetControlOffset& opAssign(FRigUnit_GetControlOffset Other)`

---

