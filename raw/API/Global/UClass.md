### UClass


An object class.

**方法**:

- `UObject GetDefaultObject() const`
- `bool IsChildOf(UClass Other) const`  
  Returns true if this class either is the same class, or is a child class of the other class.
- `bool IsAbstract() const`
- `UClass GetSuperClass() const`
- `FTopLevelAssetPath GetClassPathName() const`  
  Returns the full path to the specified class as a Top Level Asset Path used by asset utilities

---

