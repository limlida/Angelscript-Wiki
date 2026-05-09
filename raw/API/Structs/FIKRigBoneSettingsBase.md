### FIKRigBoneSettingsBase


This is the base class for defining editable per-bone settings for your custom IKRig solver.
For example, your solver may have rotation limits per-bone which can be stored here.
NOTE: the derived type must be returned by the solver's GetBoneSettingsType() and GetBoneSettings()

**属性**:

- `FName Bone [The bone these settings are applied to.]`


**方法**:

- `FIKRigBoneSettingsBase& opAssign(FIKRigBoneSettingsBase Other)`

---

