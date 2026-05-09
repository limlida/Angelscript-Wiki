### FGameplayTargetDataFilter


Simple actor target filter, games can subclass this

**属性**:

- `TSubclassOf<AActor> RequiredActorClass [Subclass actors must be to pass the filter.]`
- `ETargetDataFilterSelf SelfFilter [Filter based on whether or not this actor is "self."]`
- `bool bReverseFilter [Reverses the meaning of the filter, so it will exclude all actors that pass.]`


**方法**:

- `FGameplayTargetDataFilter& opAssign(FGameplayTargetDataFilter Other)`

---

