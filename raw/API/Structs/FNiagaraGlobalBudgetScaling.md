### FNiagaraGlobalBudgetScaling


**属性**:

- `FNiagaraLinearRamp MaxDistanceScaleByGlobalBudgetUse [When enabled, MaxDistance is scaled down by the global budget use based on this curve. Allows us to cull more aggressively when performance is poor.]`
- `float32 MaxGlobalBudgetUsage [Effects will be culled if the global budget usage exceeds this fraction. A global budget usage of 1.0 means current global FX workload has reached it's max budget. Budgets are set by CVars under FX.Budget...]`
- `FNiagaraLinearRamp MaxInstanceCountScaleByGlobalBudgetUse [When enabled, Max Effect Type Instances is scaled down by the global budget use based on this curve. Allows us to cull more aggressively when performance is poor.]`
- `FNiagaraLinearRamp MaxSystemInstanceCountScaleByGlobalBudgetUse [When enabled, Max System Instances is scaled down by the global budget use based on this curve. Allows us to cull more aggressively when performance is poor.]`
- `bool bCullByGlobalBudget [Controls whether global budget based culling is enabled.]`
- `bool bScaleMaxDistanceByGlobalBudgetUse [Controls whether we scale down the MaxDistance based on the global budget use. Allows us to increase aggression of culling when performance is poor.]`
- `bool bScaleMaxInstanceCountByGlobalBudgetUse [Controls whether we scale down the system instance counts by global budget usage. Allows us to increase aggression of culling when performance is poor.]`
- `bool bScaleSystemInstanceCountByGlobalBudgetUse [Controls whether we scale down the effect type instance counts by global budget usage. Allows us to increase aggression of culling when performance is poor.]`


**方法**:

- `FNiagaraGlobalBudgetScaling& opAssign(FNiagaraGlobalBudgetScaling Other)`

---

