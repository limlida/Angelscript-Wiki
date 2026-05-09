### FIKRigGoalSettingsBase


This is the base class for defining editable per-goal settings for your custom IKRig solver.
For example, your solver could have a "Strength" value for goals, which can go here.
NOTE: the derived type must be returned by the solver's GetGoalSettingsType() and GetGoalSettings()

**属性**:

- `FName Goal [The IKRig Goal that these settings are applied to.]`


**方法**:

- `FIKRigGoalSettingsBase& opAssign(FIKRigGoalSettingsBase Other)`

---

