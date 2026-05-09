### FGameplayAbilityTargetData_ActorArray


Target data with a source location and a list of targeted actors, makes sense for AOE attacks

**属性**:

- `FGameplayAbilityTargetingLocationInfo SourceLocation [We could be selecting this group of actors from any type of location, so use a generic location type]`
- `TArray<TWeakObjectPtr<AActor>> TargetActorArray [Rather than targeting a single point, this type of targeting selects multiple actors.]`


**方法**:

- `FGameplayAbilityTargetData_ActorArray& opAssign(FGameplayAbilityTargetData_ActorArray Other)`

---

