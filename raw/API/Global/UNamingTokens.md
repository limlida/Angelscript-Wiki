### UNamingTokens


Subclass to define naming tokens to use for a specific tool or project.

**属性**:

- `FNamingTokensEvaluationData CurrentEvaluationData [Cached shared data for this evaluation.]`
- `TArray<FNamingTokenData> CustomTokens [User defined tokens.]`
- `FString Namespace [The namespace to identify this token.

@note Must contain alphanumeric and '_' characters only and cannot be empty.]`
- `FText NamespaceDisplayName [The full display name of the namespace to use in UI and filtering.]`
- `FText TestTokenInput [Enter a sample string using your tokens to output an evaluated result to TestTokenResult.]`


**方法**:

- `FDateTime GetCurrentDateTime() const`  
  Retrieve the current datetime. By default, this uses shared data so results are consistent across runs.
- `OnPostEvaluate()`  
  Called after evaluation. Used so any cleanup can occur.
- `OnPreEvaluate(FNamingTokensEvaluationData InEvaluationData)`  
  Called prior to evaluation. Allows consistent data to be set up for each token evaluation.

This is important if the data is temporally sensitive and could change between evaluating
multiple tokens in a string, such as a high resolution timer.

@param InEvaluationData Contains generic shared data for this evaluation.

---

