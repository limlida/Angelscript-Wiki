### UNiagaraScript


Scripts are function graphs that define the runtime execution for a Niagara system (similar to a Blueprint).

There are three types of scripts:
1) Module: can be added as a standalone part to the emitter stack and encapsulates a single behavior, for example "Add Velocity"
2) Dynamic input: has a single output value and can be added to any input in the stack to compute such a value, for example "Random Vector"
3) Function: usually reserved for helper functions; can only be called from within modules or dynamic inputs

**属性**:

- `FSoftObjectPath PreviewMoviePath []`
- `TArray<TObjectPtr<UNiagaraValidationRule>> ValidationRules [A set of rules to apply when this script is used in the stack. To create your own rules, write a custom class that extends UNiagaraValidationRule.]`

---

