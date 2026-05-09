### UObject


The base class of all UE objects. The type of an object is defined by its UClass.
This provides support functions for creating and using objects, and virtual functions that should be overridden in child classes.

@see https://docs.unrealengine.com/ProgrammingAndScripting/ProgrammingWithCPP/UnrealArchitecture/Objects

**方法**:

- `AddToRoot()`
- `RemoveFromRoot()`
- `bool GetIsRooted() const`
- `bool IsTransient() const`
- `bool IsEditorOnly() const`
- `bool Modify(bool bAlwaysMarkDirty = true)`
- `SetTransactional(bool bTransactional)`
- `bool IsSupportedForNetworking() const`
- `UClass GetClass() const`
- `UObject GetOuter() const`
- `UObject GetTypedOuter(TSubclassOf<UObject> Target) const`  
  Traverses the outer chain searching for the next object of a certain type.
@param Target class to search for.
@return The first object in this object's Outer chain which is of the correct type.

- `UPackage GetOutermost() const`
- `UPackage GetPackage() const`
- `bool MarkPackageDirty() const`
- `UWorld GetWorld() const`
- `FName GetName() const`
- `FString GetFullName(const UObject StopOuter = nullptr) const`
- `FString GetPathName(const UObject StopOuter = nullptr) const`
- `bool IsA(const UClass Class) const`  
  Returns true if this object is of the specified type, or a child of that type.
- `SaveConfig()`
- `LoadConfig()`
- `ReloadConfig()`
- `CopyScriptPropertiesFrom(const UObject OtherObject)`
- `opCast(? Address) const`
- `FString ToString() const`
- `FScriptTypedElementHandle AcquireEditorElementHandle(bool bAllowCreate = true) const`
- `EEditorPropertyValueState IsEditorPropertyOverridden(FName PropertyName)`  
  Attempts to query whether the value of a named property on the given object overrides the value of its archetype (ie, would ResetEditorProperty do anything?).

@param Object The object you want to query a property value on.
@param PropertyName The name of the object property to query the value of.

@return What state the requested property is in.
- `bool ResetEditorProperty(FName PropertyName, EPropertyAccessChangeNotifyMode ChangeNotifyMode = EPropertyAccessChangeNotifyMode :: Default)`  
  Attempts to reset the value of a named property on the given object so that it matches the value of the archetype.

@param Object The object you want to reset a property value on.
@param PropertyName The name of the object property to reset the value of.
@param ChangeNotifyMode When to emit property change notifications.

@return Whether the property value was found and correctly reset.
- `UObject CastTo(TSubclassOf<UObject> TypedClass)`  
  注意 CastTo之前必须保证指针非空！
- `UObject CastToChecked(TSubclassOf<UObject> TypedClass)`  
  注意 CastToChecked之前必须保证指针非空！
- `UObject CreateDefaultSubObject(FName SubObjectName, TSubclassOf<UObject> TypedClass)`

---

