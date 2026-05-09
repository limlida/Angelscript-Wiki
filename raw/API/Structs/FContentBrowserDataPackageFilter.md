### FContentBrowserDataPackageFilter


Data used to filter object instances by their package.
@note This will typically limit your query to returning assets.

**属性**:

- `TArray<FName> PackageNamesToExclude [Array of package names that should be excluded from this query]`
- `TArray<FName> PackageNamesToInclude [Array of package names that should be included in this query]`
- `TArray<FName> PackagePathsToExclude [Array of package paths that should be excluded from this query]`
- `TArray<FName> PackagePathsToInclude [Array of package paths that should be included in this query]`
- `bool bRecursivePackagePathsToExclude [Whether we should include exclusive package sub-paths in this query]`
- `bool bRecursivePackagePathsToInclude [Whether we should include inclusive package sub-paths in this query]`


**方法**:

- `FContentBrowserDataPackageFilter& opAssign(FContentBrowserDataPackageFilter Other)`

---

