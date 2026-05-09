### FGatherTextFromTextFilesConfiguration


**属性**:

- `TArray<FGatherTextExcludePath> ExcludePathWildcards [Text files whose paths match these wildcard patterns will be excluded from gathering.]`
- `TArray<FGatherTextFileExtension> FileExtensions [Text files whose names match these wildcard patterns may be parsed for text to gather.]`
- `bool IsEnabled [If enabled, text from text files will be gathered according to this configuration.]`
- `TArray<FGatherTextSearchDirectory> SearchDirectories [The paths of directories to be searched recursively for text files, specified relative to the project's root, which may be parsed for text to gather.]`
- `bool ShouldGatherFromEditorOnlyData [If enabled, data that is specified as editor-only may be processed for gathering.]`


**方法**:

- `FGatherTextFromTextFilesConfiguration& opAssign(FGatherTextFromTextFilesConfiguration Other)`

---

