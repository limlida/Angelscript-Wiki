### FUniversalObjectLocator


Universal Object Locators (UOLs) define an address to an object.

The address is implemented as a chain of FUniversalObjectLocatorFragments, allowing addressing of objects
  that may be nested deeply within levels of externally defined spawn or ownership logic.

For example, a Universal Object Locator may reference an Anim Instance within a Skeletal Mesh Actor
  is spawned by a Child Actor Component that is spawned by Sequencer. This is impossible with a
  regular soft object path, but is perfectly feasible for a UOL.

This type is 16 bytes.

**方法**:

- `bool IsEmpty() const`  
  Check whether the specified locator is empty; not equivalent to Resolve() != None.
An empty locator will never resolve to a valid object.
- `UObject SyncFind(UObject Context = nullptr) const`  
  Attempt to resolve the object locator by finding the object. If it is not currently loaded or created,

@param Context    (Optional) Context object to use for resolving the object. This should usually be the object that owns or created the locator.
@return The resolve object pointer, or null if it was not found.
- `UObject SyncLoad(UObject Context = nullptr) const`  
  Attempt to resolve the object locator by finding or loading the object.

@param Context    (Optional) Context object to use for resolving the object. This should usually be the object that owns or created the locator.
@return The resolve object pointer, or null if it was not found.
- `SyncUnload(UObject Context = nullptr) const`  
  Attempt to resolve the object locator by unloading the object if possible.

@param Context    (Optional) Context object to use for resolving the object. This should usually be the object that owns or created the locator.
@return The resolve object pointer, or null if it was not found.
- `FString ToString() const`  
  Convert the specified locator to its string representation
- `FUniversalObjectLocator& opAssign(FUniversalObjectLocator Other)`

---

