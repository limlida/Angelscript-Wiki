### FNiagaraPlatformSet


**属性**:

- `TArray<FNiagaraPlatformSetCVarCondition> CVarConditions [Set of CVars values we require for this platform set to be enabled. If any of the linked CVars don't have the required values then this platform set will not be enabled.]`
- `TArray<FNiagaraDeviceProfileStateEntry> DeviceProfileStates [States of specific device profiles we've set.]`
- `int QualityLevelMask [Mask defining which effects qualities this set matches.]`


**方法**:

- `FNiagaraPlatformSet& opAssign(FNiagaraPlatformSet Other)`

---

