### FNiagaraPlatformSetCVarCondition


Imposes a condition that a CVar must contain a set value or range of values for a platform set to be enabled.

**属性**:

- `FName CVarName [The name of the CVar we're testing the value of.]`
- `ENiagaraCVarConditionResponse FailResponse [If this CVar condition fails, how should this affect the state of the Platform Set?]`
- `float32 MaxFloat [If the value of the CVar is greater than this maximum then the PlatformSet will not be enabled.]`
- `int MaxInt [If the value of the CVar is greater than this maximum then the PlatformSet will not be enabled.]`
- `float32 MinFloat [If the value of the CVar is less than this minimum then the PlatformSet will not be enabled.]`
- `int MinInt [If the value of the CVar is less than this minimum then the PlatformSet will not be enabled.]`
- `ENiagaraCVarConditionResponse PassResponse [If this CVar condition passes, how should this affect the state of the Platform Set?]`
- `bool Value [The value this CVar must contain for this platform set to be enabled.]`
- `bool bUseMaxFloat [True if we should apply the maximum restriction for float CVars.]`
- `bool bUseMaxInt [True if we should apply the maximum restriction for int CVars.]`
- `bool bUseMinFloat [True if we should apply the minimum restriction for float CVars.]`
- `bool bUseMinInt [True if we should apply the minimum restriction for int CVars.]`


**方法**:

- `FNiagaraPlatformSetCVarCondition& opAssign(FNiagaraPlatformSetCVarCondition Other)`

---

