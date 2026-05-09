### FIKRetargetOpSettingsBase


This is the base class for defining editable settings for your custom retargeting operation.
All user-configurable properties for your "op" should be stored in a subclass of this.
These settings will automatically be:
1. Displayed in the details panel when the op is selected
2. Saved/loaded with the op in the retarget asset
3. Applied to the op at runtime as part of a profile

NOTE: the derived type must be returned by the op's GetSettingsType() and GetSettings()

NOTE: UProperties that require reinitialization when modified must be marked meta=(ReinitializeOnEdit)
When modified, in the editor, these properties will trigger a reinitialization at which point
the runtime Op will get the latest values automatically.

**属性**:

- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`


**方法**:

- `FIKRetargetOpSettingsBase& opAssign(FIKRetargetOpSettingsBase Other)`

---

