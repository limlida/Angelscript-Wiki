### UNiagaraValidationRule_SimulationStageBudget


This validation rule can be used to enforce a budget on the number of simulation stages and the iterations that may execute.

**属性**:

- `int MaxIterationsPerStage [Maximum number of iterations a single stage is allowed to execute.
Note: Can only check across explicit counts, dynamic bindings will be ignored.]`
- `int MaxSimulationStages [Maximum number of simulation stages allowed, where 0 means no simulation stages.]`
- `int MaxTotalIterations [Maximum total iterations across all the enabled simulation stages.
Note: Can only check across explicit counts, dynamic bindings will be ignored.]`
- `ENiagaraValidationSeverity Severity [How do we want to repro the error in the stack]`
- `bool bMaxIterationsPerStageEnabled []`
- `bool bMaxSimulationStagesEnabled []`
- `bool bMaxTotalIterationsEnabled []`

---

