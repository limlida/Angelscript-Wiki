### FAutoReimportWildcard


A filter used by the auto reimport manager to explicitly include/exclude files matching the specified wildcard

**属性**:

- `FString Wildcard [The wildcard filter as a string. Files that match this wildcard will be included/excluded according to the bInclude member]`
- `bool bInclude [When true, files that match this wildcard will be included (if it doesn't fail any other filters), when false, matches will be excluded from the reimporter]`


**方法**:

- `FAutoReimportWildcard& opAssign(FAutoReimportWildcard Other)`

---

