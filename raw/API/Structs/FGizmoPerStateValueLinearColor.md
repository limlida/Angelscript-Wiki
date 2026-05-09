### FGizmoPerStateValueLinearColor


Used to store per-state (Linear Color) values for gizmo elements.
ie. vertex color.

**属性**:

- `TOptional<FLinearColor> Default [Default value, used when the Interaction State is "None".
Optional to allow explicit un-setting, implying inheritance or some other value source.]`
- `TOptional<FLinearColor> Hover [Value used when hovering.]`
- `TOptional<FLinearColor> Interact [Value used when interacting.]`
- `TOptional<FLinearColor> Select [Value used when selected.]`
- `TOptional<FLinearColor> Subdue [Value used when subdued.]`


**方法**:

- `FGizmoPerStateValueLinearColor& opAssign(FGizmoPerStateValueLinearColor Other)`

---

