### UNiagaraValidationRule_RibbonRenderer


This validation rule is for ribbon renderers to ensure they are not used in situations that can cause compatability or performance issues.
i.e. Don't use a ribbon renderer with a GPU emitter / enable GPU ribbon init on lower end devices.

**属性**:

- `FNiagaraPlatformSet Platforms []`
- `ENiagaraValidationSeverity Severity []`
- `bool bFailIfUsedByGPUInit [When enable validation will fail if used by a CPU emitter and GPU init is enabled on the renderer.]`
- `bool bFailIfUsedByGPUSimulation [When enable validation will fail if used by a GPU emitter.]`

---

