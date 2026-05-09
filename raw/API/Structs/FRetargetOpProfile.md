### FRetargetOpProfile


**属性**:

- `FName OpToApplySettingsTo [The name of the op these settings should be applied to.
If left at None, will apply to all ops that use the type of settings stored in 'SettingsToApply']`
- `FInstancedStruct SettingsToApply [The settings to override for a specific op in the retargeter's op stack.
NOTE: all settings stored here will be applied to the op. However, at runtime each op independently
determines which settings are safe to be applied without requiring reinitialization.]`


**方法**:

- `FRetargetOpProfile& opAssign(FRetargetOpProfile Other)`

---

