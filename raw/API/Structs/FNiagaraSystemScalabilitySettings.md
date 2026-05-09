### FNiagaraSystemScalabilitySettings


Scalability settings for Niagara Systems for a particular platform set (unless overridden).

**属性**:

- `FNiagaraGlobalBudgetScaling BudgetScaling [Settings related to scaling down FX based on the current budget usage.]`
- `ENiagaraCullProxyMode CullProxyMode [Controls what, if any, proxy will be used in place of culled systems.]`
- `float32 MaxDistance [Effects of this type are culled beyond this distance.]`
- `int MaxInstances [Effects of this type will be culled when total active instances using this same EffectType exceeds this number.
If the effect type has a significance handler, instances are sorted by their significance and only the N most significant will be kept. The rest are culled.
If it does not have a significance handler, instance count culling will be applied at spawn time only. New FX that would exceed the counts are not spawned/activated.]`
- `int MaxSystemInstances [Effects of this type will be culled when total active instances of the same NiagaraSystem exceeds this number.
If the effect type has a significance handler, instances are sorted by their significance and only the N most significant will be kept. The rest are culled.
If it does not have a significance handler, instance count culling will be applied at spawn time only. New FX that would exceed the counts are not spawned/activated.]`
- `int MaxSystemProxies [Limit on the number of proxies that can be used at once per system.
While much cheaper than full FX instances, proxies still incur some cost so must have a limit.
When significance information is available using a significance handler, the most significance proxies will be kept up to this limit.]`
- `FNiagaraPlatformSet Platforms [The platforms on which these settings are active (unless overridden).]`
- `FNiagaraSystemVisibilityCullingSettings VisibilityCulling [Settings controlling how systems are culled by visibility.]`
- `bool bCullByDistance [Controls whether distance culling is enabled.]`
- `bool bCullMaxInstanceCount [Controls whether we should cull systems based on how many instances with the same Effect Type are active.]`
- `bool bCullPerSystemMaxInstanceCount [Controls whether we should cull systems based on how many instances of the system are active.]`


**方法**:

- `FNiagaraSystemScalabilitySettings& opAssign(FNiagaraSystemScalabilitySettings Other)`

---

