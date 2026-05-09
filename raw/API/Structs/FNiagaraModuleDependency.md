### FNiagaraModuleDependency


**属性**:

- `FText Description [Detailed description of the dependency]`
- `FName Id [Specifies the provided id of the required dependent module (e.g. 'ProvidesNormalizedAge')]`
- `int OnlyEvaluateInScriptUsage [This property can limit where the dependency is evaluated. By default, the dependency is enforced in all script usages]`
- `FString RequiredVersion [Specifies the version constraint that module providing the dependency must fulfill.
Example usages:
'1.2' requires the exact version 1.2 of the source script
'1.2+' requires at least version 1.2, but any higher version is also ok
'1.2-2.0' requires any version between 1.2 and 2.0]`
- `ENiagaraModuleDependencyScriptConstraint ScriptConstraint [Specifies constraints related to the source script a modules provides as dependency.]`
- `ENiagaraModuleDependencyType Type [Whether the dependency belongs before or after this module]`


**方法**:

- `FNiagaraModuleDependency& opAssign(FNiagaraModuleDependency Other)`

---

