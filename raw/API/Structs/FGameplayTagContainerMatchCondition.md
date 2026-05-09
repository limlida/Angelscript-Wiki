### FGameplayTagContainerMatchCondition


HasAnyTags / HasAllTags condition
Succeeds  if the specified tag container has ANY or ALL of the tags in the other container.

Condition can be used with multiple configurations:

    Has ANY Tags:
            exact match 'false':
                    TagContainer {"A.1"} has any of OtherContainer {"A","B"} will SUCCEED
                    TagContainer {"A"} has any of OtherContainer {"A.1","B"} will FAIL

            exact match 'true':
                     TagContainer {"A","B"} has any of OtherContainer {"A.1"} will FAIL

            If TagContainer is empty/invalid it will always fail.

    Has ALL Tags:
            exact match 'false':
                    TagContainer {"A.1","B.1"} has all of OtherContainer {"A","B"} will SUCCEED
                    TagContainer {"A","B"} has all of OtherContainer {"A.1","B.1"} will FAIL

            exact match 'true':
                    TagContainer {"A.1","B.1"} has all of OtherContainer {"A","B"} will FAIL

            If TagContainer is empty/invalid it will always SUCCEED, because there were no failed checks.

**属性**:

- `EGameplayContainerMatchType MatchType []`
- `FName Name [Name of the node.]`
- `bool bExactMatch [If true, the tag has to be exactly present, if false then TagContainer will include it's parent tags while matching]`
- `bool bInvert []`


**方法**:

- `FGameplayTagContainerMatchCondition& opAssign(FGameplayTagContainerMatchCondition Other)`

---

