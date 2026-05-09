### FCollisionQueryTaskData


Data Store struct used to extend collision-based targeting tasks providing extra data from outside

**属性**:

- `TArray<TObjectPtr<AActor>> IgnoredActors [Any extra actors we want to ignore. Note: Given that this is a globally-managed struct, we're manually adding refs to it in UTargetingSubsystem::AddReferencedObjects]`


**方法**:

- `FCollisionQueryTaskData& opAssign(FCollisionQueryTaskData Other)`

---

