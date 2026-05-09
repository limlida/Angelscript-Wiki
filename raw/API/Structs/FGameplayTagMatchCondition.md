### FGameplayTagMatchCondition


HasTag condition
Succeeds if the tag container has the specified tag.

Condition can be used with multiple configurations:
    Does TagContainer {"A.1"} has Tag "A" ?
            exact match 'false' will SUCCEED
            exact match 'true' will FAIL

**属性**:

- `FName Name [Name of the node.]`
- `bool bExactMatch [If true, the tag has to be exactly present, if false then TagContainer will include it's parent tags while matching]`
- `bool bInvert []`


**方法**:

- `FGameplayTagMatchCondition& opAssign(FGameplayTagMatchCondition Other)`

---

