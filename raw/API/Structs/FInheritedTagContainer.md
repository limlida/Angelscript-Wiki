### FInheritedTagContainer


Structure that is used to combine tags from parent and child blueprints in a safe way

**属性**:

- `FGameplayTagContainer Added [Tags that I have (in addition to my parent's tags)]`
- `FGameplayTagContainer CombinedTags [CombinedTags = Inherited - Removed + Added]`
- `FGameplayTagContainer Removed [Tags that should be removed (only if my parent had them).  Note: we cannot use this to remove a tag that exists on a target. It only modifies the result of CombinedTags.]`


**方法**:

- `AddTag(FGameplayTag TagToAdd)`
- `RemoveTag(FGameplayTag TagToRemove)`
- `FInheritedTagContainer& opAssign(FInheritedTagContainer Other)`

---

