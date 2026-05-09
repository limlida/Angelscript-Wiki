### FContentBrowserDataClassFilter


Data used to filter object instances by their class.
@note This will typically limit your query to returning assets.

**属性**:

- `TArray<FString> ClassNamesToExclude [Array of class names that should be excluded from this query]`
- `TArray<FString> ClassNamesToInclude [Array of class names that should be included in this query]`
- `bool bRecursiveClassNamesToExclude [Whether we should include exclusive sub-classes in this query]`
- `bool bRecursiveClassNamesToInclude [Whether we should include inclusive sub-classes in this query]`


**方法**:

- `FContentBrowserDataClassFilter& opAssign(FContentBrowserDataClassFilter Other)`

---

