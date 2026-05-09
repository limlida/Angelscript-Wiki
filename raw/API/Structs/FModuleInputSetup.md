### FModuleInputSetup


**属性**:

- `FName Name []`
- `EModuleInputValueType Type []`
- `bool bApplyInputDecay [During physics resimulation, apply decay for this input while it's being extrapolated]`
- `bool bClearAfterConsumed [After simulation first consumes the input, clear the value doesn't persist across multiple async physics ticks]`


**方法**:

- `FModuleInputSetup& opAssign(FModuleInputSetup Other)`

---

