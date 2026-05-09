### UNamingTokensEngineSubsystem


An editor subsystem for registering global tokens and evaluating strings across the entire project.

**方法**:

- `ClearCachedNamingTokens()`  
  Clears all currently cached naming tokens. They will be loaded on demand when required.
This can avoid an editor restart if a namespace is adjusted on a BP asset, and you don't want the old namespace to access it.
- `TArray<FNamingTokenValueData> EvaluateTokenList(TArray<FString> InTokenList, FNamingTokenFilterArgs InFilter, TArray<UObject> InContexts)`  
  Given a list of tokens, return a list of all found tokens and their values.

@param InTokenList A list of raw tokens. Tokens can include their namespace, but do not include brackets.
@param InFilter [Optional] Filter to determine which namespaces to use.
@param InContexts [Optional] Context objects to pass to naming tokens.

@return Evaluation data for each token.
- `FNamingTokenResultData EvaluateTokenString(FString InTokenString, FNamingTokenFilterArgs InFilter, TArray<UObject> InContexts)`  
  Parse and evaluate token string.

@param InTokenString The string containing unprocessed tokens.
@param InFilter [Optional] Filter to determine which namespaces to use.
@param InContexts [Optional] Context objects to pass to naming tokens.

@return The result of the evaluation.
- `FNamingTokenResultData EvaluateTokenText(FText InTokenText, FNamingTokenFilterArgs InFilter, TArray<UObject> InContexts)`  
  Parse and evaluate token text.

@param InTokenText The text containing unprocessed tokens.
@param InFilter [Optional] Filter to determine which namespaces to use.
@param InContexts [Optional] Context objects to pass to naming tokens.

@return The result of the evaluation.
- `TArray<FString> GetAllNamespaces() const`  
  Retrieve all discovered namespaces.
- `TArray<FString> GetGlobalNamespaces() const`  
  Retrieve the registered global namespaces.
- `TArray<UNamingTokens> GetMultipleNamingTokens(TArray<FString> InNamespaces) const`  
  Lookup multiple naming tokens from multiple namespaces.

@param InNamespaces An array of all token namespaces.
@return An array of matching tokens objects.
- `UNamingTokens GetNamingTokens(FString InNamespace) const`  
  Lookup naming tokens given a namespace. This will look first in cached naming tokens,
then native classes, then blueprint classes. Call ClearCachedNamingTokens to reset the cache
and force a full lookup.

@param InNamespace The namespace of the tokens.
@return The found Naming Tokens object, or nullptr.
- `UNamingTokens GetNamingTokensNative(FString InNamespace) const`  
  Lookup naming tokens given a namespace. This will look first in cached naming tokens,
then native classes. Call ClearCachedNamingTokens to reset the cache
and force a full lookup.

@param InNamespace The namespace of the tokens.
@return The found Naming Tokens object, or nullptr.
- `bool IsGlobalNamespaceRegistered(FString InNamespace) const`  
  Checks if a namespace is registered globally.
- `RegisterGlobalNamespace(FString InNamespace)`  
  Register tokens as a global namespace. This prevents the need to include the namespace in a token string.
@param InNamespace The namespace of the tokens to register.
- `UnregisterGlobalNamespace(FString InNamespace)`  
  Remove tokens from a global namespace.
@param InNamespace The namespace of the tokens to unregister.

---

