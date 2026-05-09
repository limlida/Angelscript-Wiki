### UTkInputConfig


TkInputConfig

    Non-mutable data asset that contains input configuration properties.

**属性**:

- `TArray<FTkInputAction> AbilityInputActions [List of input actions used by the owner.  These input actions are mapped to a gameplay tag and are automatically bound to abilities with matching input tags.]`
- `TMap<EInputContext,FInputContextArrayWrapper> InputContextToIMC`
- `TArray<FTkInputAction> NativeInputActions [List of input actions used by the owner.  These input actions are mapped to a gameplay tag and must be manually bound.]`


**方法**:

- `const UInputAction FindAbilityInputActionForTag(FGameplayTag InputTag, bool bLogNotFound = true) const`
- `const UInputAction FindNativeInputActionForTag(FGameplayTag InputTag, bool bLogNotFound = true) const`

---

