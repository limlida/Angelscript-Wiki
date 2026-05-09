### UObjectLibrary


Class that holds a library of Objects

**属性**:

- `UClass ObjectBaseClass [Class that Objects must be of. If ContainsBlueprints is true, this is the native class that the blueprints are instances of and not UClass]`
- `TArray<TObjectPtr<UObject>> Objects [List of Objects in library]`
- `bool bHasBlueprintClasses [True if this library holds blueprint classes, false if it holds other objects]`

---

