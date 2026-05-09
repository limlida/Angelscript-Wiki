### FGameplayTag


A single gameplay tag, which represents a hierarchical name of the form x.y that is registered in the GameplayTagsManager
You can filter the gameplay tags displayed in the editor using, meta = (Categories = "Tag1.Tag2.Tag3"))

**方法**:

- `bool opEquals(FGameplayTag Other) const`
- `FName GetTagName() const`
- `FString ToString() const`
- `FGameplayTagContainer GetGameplayTagParents() const`
- `FGameplayTagContainer GetSingleTagContainer() const`
- `bool IsValid() const`
- `bool MatchesAny(FGameplayTagContainer ContainerToCheck) const`
- `bool MatchesAnyExact(FGameplayTagContainer ContainerToCheck) const`
- `bool MatchesTag(FGameplayTag TagToCheck) const`
- `int MatchesTagDepth(FGameplayTag TagToCheck) const`
- `bool MatchesTagExact(FGameplayTag TagToCheck) const`
- `FGameplayTag RequestDirectParent() const`
- `FGameplayTag& opAssign(FGameplayTag Other)`

---

