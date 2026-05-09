### FNamingTokenFilterArgs


**属性**:

- `TArray<FString> AdditionalNamespacesToInclude [Namespaces to always be included during evaluation. Namespaces added here won't require the 'namespace' string prefixed to tokens.
This does not filter out any namespaces.]`
- `bool bForceCaseSensitive [When false, we fall back to case-insensitive if an exact match isn't found.]`
- `bool bIncludeGlobal [Include global namespaces.]`
- `bool bNativeOnly [When false, we additionally look for blueprint naming tokens.]`


**方法**:

- `FNamingTokenFilterArgs& opAssign(FNamingTokenFilterArgs Other)`

---

