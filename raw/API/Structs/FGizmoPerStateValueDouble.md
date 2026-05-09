### FGizmoPerStateValueDouble


Used to store per-state (double) values for gizmo elements.
ie. line thickness multipliers.

**属性**:

- `TOptional<float> Default [Default value, used when the Interaction State is "None".
Optional to allow explicit un-setting, implying inheritance or some other value source.]`
- `TOptional<float> Hover [Value used when hovering.]`
- `TOptional<float> Interact [Value used when interacting.]`
- `TOptional<float> Select [Value used when selected.]`
- `TOptional<float> Subdue [Value used when subdued.]`


**方法**:

- `FGizmoPerStateValueDouble& opAssign(FGizmoPerStateValueDouble Other)`

---

