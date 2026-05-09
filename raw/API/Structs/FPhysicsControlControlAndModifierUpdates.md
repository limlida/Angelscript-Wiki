### FPhysicsControlControlAndModifierUpdates


These apply permanent changes to the controls and modifiers, allowing all the settings to be changed
(apart from the actual bodies that are being controlled/affected)

**属性**:

- `TArray<FPhysicsControlNamedControlMultiplierParameters> ControlMultiplierUpdates [Modifications to the underlying control multipliers]`
- `TArray<FPhysicsControlNamedControlParameters> ControlUpdates [Modifications to the underlying controls]`
- `TArray<FPhysicsControlNamedModifierParameters> ModifierUpdates [Modifications to the underlying modifiers]`


**方法**:

- `FPhysicsControlControlAndModifierUpdates& opAssign(FPhysicsControlControlAndModifierUpdates Other)`

---

