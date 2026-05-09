### FControlRigInteractionTransformContext


FControlRigInteractionTransformContext provides a way of passing the various transform parameters to functions that need to know what the transform context is.
Extend it if necessary, particularly to avoid overloading some functions signatures.

**属性**:

- `FVector Drag`
- `FRotator Rot`
- `FVector Scale`
- `EControlRigInteractionTransformSpace Space`


**方法**:

- `FControlRigInteractionTransformContext& opAssign(FControlRigInteractionTransformContext Other)`

---

