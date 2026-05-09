### UCommonMappingContextMetadata


Base CommonUI metadata implementation for specification in IMC's.

Utilizes a map of input actions to metadata to prevent users from having to create
multiple metadata assets / instances. Using this map is not mandatory.

**属性**:

- `UCommonInputMetadata EnhancedInputMetadata [Fallback or default metadata CommonUI relies on if no per-action meta is found below]`
- `TMap<TObjectPtr<UInputAction>,TObjectPtr<const UCommonInputMetadata>> PerActionEnhancedInputMetadata [Map of action to metadata, allows creation of single metadata asset rather than one per input action type]`

---

