### UNiagaraValidationRule_TickDependencyCheck


Validation rule to check for unwanted tick dependencies.

**属性**:

- `TArray<TSoftObjectPtr<UNiagaraEffectType>> EffectTypesToExclude [If the system uses one of these effect types the rule will not be run.]`
- `ENiagaraValidationSeverity Severity [How do we want to repro the error in the stack]`
- `bool bCheckActorComponentInterface [Check that the actor component interface isn't adding a tick dependency on the CPU.]`
- `bool bCheckCameraDataInterface [Check that the camera data interface isn't adding a tick dependency on the CPU.]`
- `bool bCheckSkeletalMeshInterface [Check that the skeletal mesh interface isn't adding a tick dependency on the CPU.]`

---

