### FGameplayTagRequirements


Encapsulate require and ignore tags

**属性**:

- `FGameplayTagContainer IgnoreTags [None of these tags may be present]`
- `FGameplayTagContainer RequireTags [All of these tags must be present]`
- `FGameplayTagQuery TagQuery [Build up a more complex query that can't be expressed with RequireTags/IgnoreTags alone]`


**方法**:

- `FGameplayTagRequirements& opAssign(FGameplayTagRequirements Other)`

---

