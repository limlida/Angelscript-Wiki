### FContentBrowserDataFilter


A filter used to control what is returned from Content Browser data queries.
@note The compiled version of this, FContentBrowserDataCompiledFilter, is produced via UContentBrowserDataSubsystem::CompileFilter.

**属性**:

- `EContentBrowserItemAttributeFilter ItemAttributeFilter [Flags controlling which item attributes should be included in this query]`
- `EContentBrowserItemCategoryFilter ItemCategoryFilter [Flags controlling which item categories should be included in this query]`
- `EContentBrowserItemTypeFilter ItemTypeFilter [Flags controlling which item types should be included in this query]`
- `bool bRecursivePaths [Whether we should include sub-paths in this query]`


**方法**:

- `FContentBrowserDataFilter& opAssign(FContentBrowserDataFilter Other)`

---

