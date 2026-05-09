### FRigUnit_GetControlVector


GetControlVector is used to retrieve a single Vector from a hierarchy, can be used for Controls of type "Position" or "Scale".

**属性**:

- `FName Control [The name of the Control to retrieve the Vector for.]`
- `FVector Maximum [The maximum value of the control.]`
- `FVector Minimum [The minimum value of the control.]`
- `ERigVMTransformSpace Space [Defines if the Control's Vector should be retrieved
in local or global space.]`
- `FVector Vector [The current value of the control.]`


**方法**:

- `FRigUnit_GetControlVector& opAssign(FRigUnit_GetControlVector Other)`

---

