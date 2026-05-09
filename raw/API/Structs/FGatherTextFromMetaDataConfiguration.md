### FGatherTextFromMetaDataConfiguration


**属性**:

- `TArray<FGatherTextExcludePath> ExcludePathWildcards [Metadata from source files whose paths match these wildcard patterns will be excluded from gathering.]`
- `TArray<FString> FieldOwnerTypesToExclude [List of field owner types (eg, MyClass, MyStruct, etc) that should have fields within them excluded from the gather.]`
- `TArray<FString> FieldOwnerTypesToInclude [List of field owner types (eg, MyClass, MyStruct, etc) that should have fields within them included in the gather, or empty to include everything.]`
- `TArray<FString> FieldTypesToExclude [List of field types (eg, Property, Function, ScriptStruct, Enum, etc) the should be excluded from the gather.]`
- `TArray<FString> FieldTypesToInclude [List of field types (eg, Property, Function, ScriptStruct, Enum, etc) that should be included in the gather, or empty to include everything.]`
- `TArray<FGatherTextIncludePath> IncludePathWildcards [Metadata from source files whose paths match these wildcard patterns, specified relative to the project's root, may be processed for gathering.]`
- `bool IsEnabled [If enabled, metadata will be gathered according to this configuration.]`
- `TArray<FMetaDataKeyGatherSpecification> KeySpecifications [Specifications for how to gather text from specific metadata keys.]`
- `bool ShouldGatherFromEditorOnlyData [If enabled, data that is specified as editor-only may be processed for gathering.]`


**方法**:

- `FGatherTextFromMetaDataConfiguration& opAssign(FGatherTextFromMetaDataConfiguration Other)`

---

