### FGameplayTagContainer


A Tag Container holds a collection of FGameplayTags, tags are included explicitly by adding them, and implicitly from adding child tags

**属性**:

- `TArray<FGameplayTag> GameplayTags [Array of gameplay tags]`


**方法**:

- `AddLeafTag(FGameplayTag TagToAdd)`
- `AddTag(FGameplayTag TagToAdd)`
- `AddTagFast(FGameplayTag TagToAdd)`
- `AppendTags(FGameplayTagContainer TagsToAdd)`
- `FGameplayTagContainer Filter(FGameplayTagContainer OtherContainer) const`
- `FGameplayTagContainer FilterExact(FGameplayTagContainer OtherContainer) const`
- `FGameplayTag First() const`
- `FGameplayTagContainer GetGameplayTagParents() const`
- `bool HasAll(FGameplayTagContainer ContainerToCheck) const`
- `bool HasAllExact(FGameplayTagContainer ContainerToCheck) const`
- `bool HasAny(FGameplayTagContainer ContainerToCheck) const`
- `bool HasAnyExact(FGameplayTagContainer ContainerToCheck) const`
- `bool HasTag(FGameplayTag TagToCheck) const`
- `bool HasTagExact(FGameplayTag TagToCheck) const`
- `bool IsEmpty() const`
- `bool IsValid() const`
- `FGameplayTag Last() const`
- `bool MatchesQuery(FGameplayTagQuery Query) const`
- `int Num() const`
- `bool RemoveTag(FGameplayTag TagToRemove)`
- `RemoveTags(FGameplayTagContainer TagsToRemove)`
- `FGameplayTagContainer& opAssign(FGameplayTagContainer Other)`

---

