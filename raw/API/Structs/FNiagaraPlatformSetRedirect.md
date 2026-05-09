### FNiagaraPlatformSetRedirect


Allows us to replace a specific device profile usage condition in all NiagaraPlatformSets.
Helpful when dealing with changes to device profile structure.

**属性**:

- `FNiagaraPlatformSetCVarCondition CVarConditionDisabled [When in CVar mode, the CVar condition to replace this device profile entry with when the profile entry is in the Disabled state.]`
- `FNiagaraPlatformSetCVarCondition CVarConditionEnabled [When in CVar mode, the CVar condition to replace this device profile entry with when the profile entry is in the Enabled state.]`
- `ENiagaraDeviceProfileRedirectMode Mode []`
- `TArray<FName> ProfileNames [The names of any device profile entry that will apply this redirect.]`
- `FName RedirectProfileName [When in Device Profile mode, the name of the device profile to redirect to.]`


**方法**:

- `FNiagaraPlatformSetRedirect& opAssign(FNiagaraPlatformSetRedirect Other)`

---

