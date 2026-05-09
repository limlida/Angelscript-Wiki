### FContentBrowserDataObjectFilter


Data used to filter object instances by their name and tags.
@note This will typically limit your query to returning assets.

**属性**:

- `TArray<FName> ObjectNamesToExclude [Array of object names that should be excluded from this query]`
- `TArray<FName> ObjectNamesToInclude [Array of object names that should be included in this query]`
- `bool bOnDiskObjectsOnly [Whether we should only include on-disk objects (ignoring those that exist only in memory)]`


**方法**:

- `FContentBrowserDataObjectFilter& opAssign(FContentBrowserDataObjectFilter Other)`

---

