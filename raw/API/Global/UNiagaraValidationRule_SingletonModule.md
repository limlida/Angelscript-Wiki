### UNiagaraValidationRule_SingletonModule


This validation rule checks that a module is only used once per emitter/system stack.

**属性**:

- `ENiagaraValidationSeverity Severity [How do we want to repro the error in the stack]`
- `bool bCheckDetailedUsageContext [If true then the check is not emitter-wide, but only within the same context (e.g. particle update).]`

---

