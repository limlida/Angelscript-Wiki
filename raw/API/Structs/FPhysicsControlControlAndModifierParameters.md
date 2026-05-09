### FPhysicsControlControlAndModifierParameters


These apply temporary/ephemeral changes to the controls that only persist for one tick.

**属性**:

- `TArray<FPhysicsControlNamedControlMultiplierParameters> ControlMultiplierParameters [Multipliers for existing controls. Each name can be the name of a control, or the name of a
set of controls. They will only apply for one tick/update. They will be applied in order (so
subsequent entries will override earlier ones if they apply to the same control).]`
- `TArray<FPhysicsControlNamedControlParameters> ControlParameters [Parameters for existing controls. Each name can be the name of a control, or the name of a
set of controls. They will only apply for one tick/update. They will be applied in order (so
subsequent entries will override earlier ones if they apply to the same control).]`
- `TArray<FPhysicsControlNamedModifierParameters> ModifierParameters [Parameters for existing modifiers. Each name can be the name of a modifier, or the name of a
set of modifiers. They will only apply for one tick/update.]`


**方法**:

- `FPhysicsControlControlAndModifierParameters& opAssign(FPhysicsControlControlAndModifierParameters Other)`

---

