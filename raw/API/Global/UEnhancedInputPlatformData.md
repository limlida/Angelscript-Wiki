### UEnhancedInputPlatformData


A base class that can be used to store platform specific data for Enhanced Input.

Make a subclass of this to add some additional options for per-platform settings

**属性**:

- `TMap<TObjectPtr<const UInputMappingContext>,TObjectPtr<const UInputMappingContext>> MappingContextRedirects [Maps one Input Mapping Context to another. This can be used to replace
specific Input Mapping Contexts with another on a per-platform basis.]`


**方法**:

- `const UInputMappingContext GetContextRedirect(UInputMappingContext InContext) const`  
  Returns a pointer to the desired redirect mapping context. If there isn't one, then this returns InContext.

---

