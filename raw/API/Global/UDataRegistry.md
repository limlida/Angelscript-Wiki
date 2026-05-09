### UDataRegistry


Defines a place to efficiently store and retrieve structure data, can be used as a wrapper around Data/Curve Tables or extended with other sources

**属性**:

- `TArray<TObjectPtr<UDataRegistrySource>> DataSources [List of data sources to search for items]`
- `FDataRegistryCachePolicy DefaultCachePolicy [Editor-set cache policy]`
- `FDataRegistryIdFormat IdFormat [Rules for specifying valid item Ids, if default than any name can be used]`
- `const UScriptStruct ItemStruct [Structure type of all for items in this registry]`
- `FName RegistryType [Globally unique name used to identify this registry]`
- `float32 TimerUpdateFrequency [How often to check for cache updates]`

---

