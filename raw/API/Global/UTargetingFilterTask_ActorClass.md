### UTargetingFilterTask_ActorClass


@class UTargetingFilterTask_ActorClass

Simple filtering task where we check the targets class type against the
required and ignored class types.

**属性**:

- `TArray<TObjectPtr<UClass>> IgnoredActorClassFilters [The set of ignored actor classes (must NOT be one of these types)]`
- `TArray<TObjectPtr<UClass>> RequiredActorClassFilters [The set of required actor classes (must be one of these types to not be filtered out)]`

---

