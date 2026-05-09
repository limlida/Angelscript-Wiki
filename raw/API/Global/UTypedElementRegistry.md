### UTypedElementRegistry


Registry of element types and their associated interfaces, along with the elements that represent their instances.

**方法**:

- `FScriptTypedElementListProxy CreateElementList()`  
  Create an empty list of elements associated with the given registry.
- `UObject GetElementInterface(FScriptTypedElementHandle InElementHandle, TSubclassOf<UInterface> InBaseInterfaceType) const`  
  Get the element interface supported by the given handle, or null if there is no support for this interface or if the handle is invalid.

---

