### FGatherTextFromPackagesConfiguration


**属性**:

- `TArray<FName> Collections [Packages in these collections may be processed for gathering.]`
- `TArray<FSoftClassPath> ExcludeClasses [Classes that should be excluded from gathering.]`
- `TArray<FGatherTextExcludePath> ExcludePathWildcards [Packages whose paths match these wildcard patterns will be excluded from gathering.]`
- `TArray<FGatherTextFileExtension> FileExtensions [Packages whose names match these wildcard patterns may be processed for text to gather.]`
- `TArray<FGatherTextIncludePath> IncludePathWildcards [Packages whose paths match these wildcard patterns, specified relative to the project's root, may be processed for gathering.]`
- `bool IsEnabled [If enabled, text from packages will be gathered according to this configuration.]`
- `bool ShouldExcludeDerivedClasses [Should classes derived from those in the exclude classes list also be excluded from gathering?]`
- `bool ShouldGatherFromEditorOnlyData [If enabled, data that is specified as editor-only may be processed for gathering.]`
- `bool SkipGatherCache [Should we ignore the cached text in the package header and perform a full package load instead?]`
- `TArray<FName> WorldCollections [* Worlds (including their associated external actors) in these collections may be processed for gathering. The collections may contain more than just worlds, and will be filtered internally.
* @note This is typically not needed unless setting up modular localization targets that have to gather external actors separately from their world (eg, when using External Data Layers).]`


**方法**:

- `FGatherTextFromPackagesConfiguration& opAssign(FGatherTextFromPackagesConfiguration Other)`

---

